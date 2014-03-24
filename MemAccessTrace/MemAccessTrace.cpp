/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */

#include <iostream>
#include <fstream>
#include "pin.H"
#include "instlib.H"

/**
 * Global variables
 */
INSTLIB::ICOUNT icount;
UINT64 icount_lastmem;
UINT64 icount_since_lastmem;

#define MAX_NUM_REFS 2000000
UINT64 num_mem_refs;

ofstream OutFile;

/**
 * Command line switches
 */
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "", "specify file name for the output");
KNOB<BOOL> KnobCount(KNOB_MODE_WRITEONCE, "pintool",
    "count", "1", "count the number of instructions");

INT32 Usage()
{
  cerr << "This tool traces all the memory accesses." << endl;
  cerr << KNOB_BASE::StringKnobSummary() << endl;

  return -1;
}

bool CheckIfFinish() {
  if (num_mem_refs > MAX_NUM_REFS) {
    return true;
  } else {
    return false;
  }
}

INT32 InitTrace(int argc, char* argv[]) {
  return PIN_Init(argc, argv);
}

VOID TerminateTrace() {
  PIN_Detach();
}

VOID RecordMemRead(VOID* ip, VOID* addr) {
  if (icount.Count() == icount_lastmem) {
    icount_since_lastmem = 0;
  } else {
    icount_since_lastmem = icount.Count() - icount_lastmem - 1;
    icount_lastmem = icount.Count();
  }

  //fprintf(trace, "R %p %p %lu\n", ip, addr, icount_since_lastmem);
  OutFile << "R " << ip << " " << addr << " " << icount_since_lastmem << endl;
  
  num_mem_refs++;

  if (CheckIfFinish() == true) {
    TerminateTrace();
  }
}

VOID RecordMemWrite(VOID* ip, VOID* addr) {
  if (icount.Count() == icount_lastmem) {
    icount_since_lastmem = 0;
  } else {
    icount_since_lastmem = icount.Count() - icount_lastmem - 1;
    icount_lastmem = icount.Count();
  }

  //fprintf(trace, "W %p %p %lu\n", ip, addr, icount_since_lastmem);
  OutFile << "W " << ip << " " << addr << " " << icount_since_lastmem << endl;

  num_mem_refs++;

  if (CheckIfFinish() == true) {
    TerminateTrace();
  }
}

VOID Instruction(INS inst, VOID* v) {
  UINT32 mem_operands = INS_MemoryOperandCount(inst);

  for (UINT mem_op = 0; mem_op < mem_operands; mem_op++) {
    if (INS_MemoryOperandIsRead(inst, mem_op)) {
      INS_InsertPredicatedCall(
          inst,
          IPOINT_BEFORE,
          (AFUNPTR) RecordMemRead,
          IARG_INST_PTR,
          IARG_MEMORYOP_EA,
          mem_op,
          IARG_END);
    }
    if (INS_MemoryOperandIsWritten(inst, mem_op)) {
      INS_InsertPredicatedCall(
          inst,
          IPOINT_BEFORE,
          (AFUNPTR) RecordMemWrite,
          IARG_INST_PTR,
          IARG_MEMORYOP_EA,
          mem_op,
          IARG_END);
    }
  }
}

int main(int argc, char* argv[]) {
  if (InitTrace(argc, argv)) {
    return Usage();
  }

  OutFile.open(KnobOutputFile.Value().c_str());

  icount.Activate();
  icount_lastmem = 1;
  num_mem_refs = 1;

  INS_AddInstrumentFunction(Instruction, 0);

  PIN_StartProgram();

  return 0;
}
