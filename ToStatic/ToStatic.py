#!/usr/bin/env python

## File: ToStatic.py
## Author: Yunqi Zhang
## Email: yunqi@umich.edu

import argparse

import os.path

# Read a file line by line and return the content in a list
# @param filename The path to an existing file
# @return A list of lines in the specified file
def read_by_line(filename):
  content_list = []
  fp = open(filename)
  for line in fp:
    content_list.append(line)
  return content_list

def parse_asm_function(asm_content, line_index):
  i = line_index
  line = asm_content[line_index]
  items = line.strip().split()
  function_name = items[1]
  i = i + 3
  # Keep track of the instruction stream
  instruction_dict = {}
  instruction_index = 0
  # Loop through the lines
  while i < len(asm_content):
    line = asm_content[i].strip()
    if line.startswith(".size"):
      return [i + 1, function_name, instruction_dict]
    else:
      if not line.startswith("."):
        items = line.split()
        instruction_dict[instruction_index] = {}
        instruction_dict[instruction_index]["instruction"] = items[0]
        instruction_dict[instruction_index]["operand_0"] = None
        instruction_dict[instruction_index]["operand_1"] = None
        lookup = line.find("#")
        if lookup != -1:
          sub_str = line[lookup + 1:]
          sub_str = "".join(sub_str.split())
          sub_items = sub_str.split(",")
          if len(sub_items) == 1:
            if sub_items[0] != "":
              instruction_dict[instruction_index]["operand_0"] = sub_items[0]
          elif len(sub_items) == 2:
            if sub_items[1] != "":
              instruction_dict[instruction_index]["operand_1"] = sub_items[1]
          else:
            print(sub_items)
            exit
        instruction_index = instruction_index + 1
      i = i + 1

# Parse an asm file with verbose-asm
# @param asm_file The path to an existing asm file
def parse_asm(asm_file):
  asm_content = read_by_line(asm_file)
  function_dict = {}
  i = 0
  while i < len(asm_content):
    line = asm_content[i]
    if line.startswith("\t.globl"):
      [line_index, function_name, inst_dict] = parse_asm_function(asm_content,
                                                                  i)
      #print([line_index, function_name, inst_dict])
      funciont_dict[function_name] = inst_dict
      i = line_index
    else:
      i = i + 1

# Parse a dump file from objdump -d
# @param dump_file The path to an existing dump file
def parse_dump(dump_file):
  dump_content = read_by_line(dump_file)

# Parse the info dwarf section from readelf --debug-dump=info
# @param elf_file The path to an existing elf file
def parse_elf(elf_file):
  elf_content = read_by_line(elf_file)

# Main function
def main():
  # Parse the arguments
  parser = argparse.ArgumentParser()
  parser.add_argument("-s", "--asm", required=True,
                      help="A list of assembly files")
  parser.add_argument("-d", "--dump", required=True,
                      help="The output from objdump -d BINARY")
  parser.add_argument("-r", "--readelf", required=True,
                      help="The output from readelf --debug-dump=info BINARY")
  args = parser.parse_args()

  # Get the file names
  asm_file = args.asm
  dump_file = args.dump
  elf_file = args.readelf

  # Check whether these files exist
  if not os.path.isfile(asm_file):
    print("[FATAL] File {0} does not exist.".format(asm_file))
  elif not os.path.isfile(dump_file):
    print("[FATAL] File {0} does not exist.".format(dump_file))
  elif not os.path.isfile(elf_file):
    print("[FATAL] File {0} does not exist.".format(elf_file))

  parse_asm(asm_file)
  parse_dump(dump_file)
  parse_elf(elf_file)

if __name__ == "__main__":
  main()
