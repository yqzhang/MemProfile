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
      function_dict[function_name] = inst_dict
      i = line_index
    else:
      i = i + 1
  return function_dict

def parse_dump_function(dump_content, line_index):
  i = line_index
  # Parse the function name first
  sub_str = dump_content[i]
  sub_str = sub_str[:-3]
  function_name = sub_str[sub_str.find("<") + 1:]
  i = i + 1
  addr_list = []
  while i < len(dump_content):
    line = dump_content[i]
    if line == "\n":
      return [i + 1, function_name, addr_list]
    else:
      items = line.split("\t")
      if len(items) > 2:
        addr = items[0].strip()[:-1]
        addr_list.append(addr)
      i = i + 1
  return [i, function_name, addr_list]

# Parse a dump file from objdump -d
# @param dump_file The path to an existing dump file
def parse_dump(dump_file, function_dict):
  dump_content = read_by_line(dump_file)
  i = 0
  while i < len(dump_content):
    line = dump_content[i]
    if line.endswith(">:\n"):
      [line_index, func_name, addr_list] = parse_dump_function(dump_content,
                                                               i)
      i = line_index
      # Store the data back to function_dict
      if func_name in function_dict:
        for j in range(len(function_dict[func_name])):
          function_dict[func_name][j]["addr"] = addr_list[j]
    else:
      i = i + 1
  return function_dict

def parse_elf_type(elf_content, line_index):
  i = line_index
  index_str = elf_content[line_index]
  index_str = index_str[index_str.find(">") + 2:]
  index_str = index_str[:index_str.find(">")]
  type_index = index_str
  type_size = 1
  i = i + 1
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(" <1>"):
      return [i, type_index, type_size]
    else:
      if "DW_AT_upper_bound" in line:
        items = line.strip().split()
        size_str = items[len(items) - 1]
        type_size = int(size_str) + 1
      i = i + 1

def parse_elf_function(elf_content, line_index, type_dict):
  i = line_index
  term_str = elf_content[line_index]
  term_str = term_str[:term_str.find(">") + 1]
  func_name = ""
  var_dict = {}
  i = i + 1
  low_pc = None
  high_pc = None
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(term_str):
      return [i, func_name, var_dict]
    elif line.endswith("block)\n"):
      [line_index, v_dict] = parse_elf_block(elf_content,
                                             i, type_dict)
      for key, value in v_dict.items():
        var_dict[key] = value
      i = line_index
    elif line.endswith("variable)\n"):
      [line_index, var_name, v_dict] = parse_elf_variable(elf_content,
                                                          i, type_dict,
                                                          low_pc, high_pc)
      var_dict[var_name] = v_dict
      i = line_index
    else:
      if "DW_AT_name" in line:
        items = line.strip().split()
        name_str = items[len(items) - 1]
        func_name = name_str
      elif "DW_AT_low_pc" in line:
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        low_pc = pc_str
      elif "DW_AT_high_pc" in line:
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        high_pc = pc_str
      i = i + 1

def parse_elf_block(elf_content, line_index, type_dict):
  i = line_index
  term_str = elf_content[line_index]
  term_str = term_str[:term_str.find(">") + 1]
  var_dict = {}
  i = i + 1
  lower_pc = None
  high_pc = None
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(term_str):
      return [i, var_dict]
    elif line.endswith("block)\n"):
      [line_index, v_dict] = parse_elf_block(elf_content,
                                             i, type_dict)
      for key, value in v_dict.items():
        var_dict[key] = value
      i = line_index
    elif line.endswith("variable)\n"):
      [line_index, var_name, v_dict] = parse_elf_variable(elf_content,
                                                          i, type_dict,
                                                          low_pc, high_pc)
      var_dict[var_name] = v_dict
      i = line_index
    else:
      if "DW_AT_low_pc" in line:
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        low_pc = pc_str
      elif "DW_AT_high_pc" in line:
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        high_pc = pc_str
      i = i + 1

def parse_elf_variable(elf_content, line_index, type_dict, low_pc, high_pc):
  i = line_index
  term_str = elf_content[line_index]
  term_str = term_str[:term_str.find(">") + 1]
  var_name = ""
  var_dict = {"size": 1, "low_pc": low_pc, "high_pc": high_pc}
  i = i + 1
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(term_str):
      return [i, var_name, var_dict]
    else:
      if "DW_AT_name" in line:
        items = line.strip().split()
        name_str = items[len(items) - 1]
        var_name = name_str
      elif "DW_AT_type" in line:
        items = line.strip().split()
        type_str = items[len(items) - 1]
        type_str = type_str[type_str.find("x") + 1:type_str.find(">")]
        var_dict["size"] = type_dict[type_str]
      i = i + 1

# Parse the info dwarf section from readelf --debug-dump=info
# @param elf_file The path to an existing elf file
def parse_elf(elf_file):
  elf_content = read_by_line(elf_file)
  #print(elf_content)
  type_dict = {}
  variable_dict = {"GLOBAL":{}}
  # Parse types
  i = 0
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(" <1>") and line.endswith("type)\n"):
      [line_index, type_index, type_size] = parse_elf_type(elf_content,
                                                           i)
      type_dict[type_index] = type_size
      i = line_index
    else:
      i = i + 1
  # Parse variables
  i = 0
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(" <1>") and line.endswith("subprogram)\n"):
      [line_index, func_name, var_dict] = parse_elf_function(elf_content,
                                                             i, type_dict)
      variable_dict[func_name] = var_dict
      i = line_index
    elif line.startswith(" <1>") and line.endswith("variable)\n"):
      [line_index, var_name, var_dict] = parse_elf_variable(elf_content,
                                                            i, type_dict,
                                                            None, None)
      variable_dict["GLOBAL"][var_name] = var_dict
      i = line_index
    else:
      i = i + 1
  return variable_dict

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

  function_dict = parse_asm(asm_file)
  function_dict = parse_dump(dump_file, function_dict)
  variable_dict = parse_elf(elf_file)

if __name__ == "__main__":
  main()
