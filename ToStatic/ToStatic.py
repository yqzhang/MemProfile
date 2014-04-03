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

# Parse a function in the asm file generated by verbose-asm
# @param asm_content The content of the asm file
# @param line_index The index of the first line of the function
# @return [line_index, func_name, inst_dict]
# @return line_index The index of the next line after the function
# @return func_name The name of the function parsed
# @return inst_dict The dictionary of the instructions in the function
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
    # The end of the function
    if line.startswith(".size"):
      return [i + 1, function_name, instruction_dict]
    else:
      if not line.startswith("."):
        items = line.split()
        # Initialize the instruction's entry in the dict
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
# @return function_dict A dictionary to all the functions
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

# Parse a function in the dump file generated by objdump
# @param dump_content The content of the dump file
# @param line_index The index of the first line of the function
# @return [line_index, func_name, addr_list]
# @return line_index The index of the next line after the function
# @return func_name The name of the function parsed
# @return addr_list The instruction addresses in list
def parse_dump_function(dump_content, line_index):
  i = line_index
  # Parse the function name first
  sub_str = dump_content[i]
  sub_str = sub_str[:-3]
  function_name = sub_str[sub_str.find("<") + 1:]
  i = i + 1
  addr_list = []
  # Loop through the function
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
  # Return the same values if it is already EOF
  return [i, function_name, addr_list]

# Parse a dump file from objdump -d
# @param dump_file The path to an existing dump file
# @param function_dict A dictionay to all the functions
# @return function_dict A dictionay to all the functions
def parse_dump(dump_file, function_dict):
  dump_content = read_by_line(dump_file)
  i = 0
  # Loop through all the lines
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

# Parse a type section in the elf file
# @param elf_content The content of the elf file
# @param line_index The index of the first line of the type section
# @return [line_index, type_index, type_size]
# @return line_index The index of the next line after this type section
# @return type_index The index of the type in hex
# @return type_size The declaration size of the type
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
      # The end of this type section
      return [i, type_index, type_size]
    else:
      # type_size = upper_bound + 1
      if "DW_AT_upper_bound" in line:
        items = line.strip().split()
        size_str = items[len(items) - 1]
        type_size = int(size_str) + 1
      i = i + 1

# Parse a function section in the elf file
# @param elf_content The content of the elf file
# @param line_index The index of the first line of the function section
# @param type_dict The type dictionary
# @return [line_index, func_name, var_dict]
# @return line_index The index of the next line after this function section
# @return func_name The name of the function in this section
# @return var_dict A dictionary to all the variables in this function
def parse_elf_function(elf_content, line_index, type_dict):
  i = line_index
  term_str = elf_content[line_index]
  term_str = term_str[:term_str.find(">") + 1]
  func_name = ""
  var_dict = {}
  i = i + 1
  # Initialize the low_pc and high_pc bound
  low_pc = None
  high_pc = None
  while i < len(elf_content):
    line = elf_content[i]
    if line.startswith(term_str):
      # The last line of this section
      return [i, func_name, var_dict]
    elif line.endswith("block)\n"):
      # This is a block
      [line_index, v_dict] = parse_elf_block(elf_content,
                                             i, type_dict)
      for key, value in v_dict.items():
        var_dict[key] = value
      i = line_index
    elif line.endswith("variable)\n"):
      # This is a variable
      [line_index, var_name, v_dict] = parse_elf_variable(elf_content,
                                                          i, type_dict,
                                                          low_pc, high_pc)
      var_dict[var_name] = v_dict
      i = line_index
    else:
      if "DW_AT_name" in line:
        # The name of the function
        items = line.strip().split()
        name_str = items[len(items) - 1]
        func_name = name_str
      elif "DW_AT_low_pc" in line:
        # Update low_pc
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        low_pc = pc_str
      elif "DW_AT_high_pc" in line:
        # Update high_pc
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        high_pc = pc_str
      i = i + 1

# Parse a block section in the elf file
# @param elf_content The content of the elf file
# @param line_index The index of the first line of the block section
# @param type_dict The type dictionary
# @return [line_index, var_dict]
# @return line_index The index of the next line after this block section
# @return var_dict A dictionary to all the variables in this block
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
      # The last line of this section
      return [i, var_dict]
    elif line.endswith("block)\n"):
      # This is a block (might happen recursively)
      [line_index, v_dict] = parse_elf_block(elf_content,
                                             i, type_dict)
      for key, value in v_dict.items():
        var_dict[key] = value
      i = line_index
    elif line.endswith("variable)\n"):
      # This is a variable
      [line_index, var_name, v_dict] = parse_elf_variable(elf_content,
                                                          i, type_dict,
                                                          low_pc, high_pc)
      var_dict[var_name] = v_dict
      i = line_index
    else:
      if "DW_AT_low_pc" in line:
        # Update low_pc
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        low_pc = pc_str
      elif "DW_AT_high_pc" in line:
        # Update high_pc
        items = line.strip().split()
        pc_str = items[len(items) - 1]
        high_pc = pc_str
      i = i + 1

# Parse a variable section in the elf file
# @param elf_content The content of the elf file
# @param line_index The index of the first line of the block section
# @param type_dict The type dictionary
# @param low_pc The lower bound of the instruction address
# @param high_pc The upper bound of the instruction address
# @return [line_index, var_name, var_dict]
# @return line_index The index of the next line after this variable section
# @return var_name The name of the variable
# @return var_dict A dictionary to this variable
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
        # The name of the variable
        items = line.strip().split()
        name_str = items[len(items) - 1]
        var_name = name_str
      elif "DW_AT_type" in line:
        # The type index of the variable
        items = line.strip().split()
        type_str = items[len(items) - 1]
        type_str = type_str[type_str.find("x") + 1:type_str.find(">")]
        # Look up the type_dict to get the size
        var_dict["size"] = type_dict[type_str]
      i = i + 1

# Parse the info dwarf section from readelf --debug-dump=info
# @param elf_file The path to an existing elf file
# @return variable_dict A dictionary to all the variables indexed by function
def parse_elf(elf_file):
  elf_content = read_by_line(elf_file)
  #print(elf_content)
  type_dict = {}
  # Initialize for the global variables
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
      # This is a function
      [line_index, func_name, var_dict] = parse_elf_function(elf_content,
                                                             i, type_dict)
      variable_dict[func_name] = var_dict
      i = line_index
    elif line.startswith(" <1>") and line.endswith("variable)\n"):
      # This is a variable
      [line_index, var_name, var_dict] = parse_elf_variable(elf_content,
                                                            i, type_dict,
                                                            None, None)
      variable_dict["GLOBAL"][var_name] = var_dict
      i = line_index
    else:
      i = i + 1
  return variable_dict

# Parse the memory accesses profile
# @param acc_file The memory accesses profiling file
# @function_dict The dictionary to functions
# @variable_dict The dictionary to variables
def parse_acc(acc_file, function_dict, variable_dict):
  acc_content = read_by_line(acc_file)
  # TODO

# Main function
def main():
  # Parse the arguments
  parser = argparse.ArgumentParser()
  parser.add_argument("-a", "--access", required=True,
                      help="A file contains the profiled memory accesses")
  parser.add_argument("-s", "--asm", required=True,
                      help="A list of assembly files")
  parser.add_argument("-d", "--dump", required=True,
                      help="The output from objdump -d BINARY")
  parser.add_argument("-r", "--readelf", required=True,
                      help="The output from readelf --debug-dump=info BINARY")
  args = parser.parse_args()

  # Get the file names
  acc_file = args.access
  asm_file = args.asm
  dump_file = args.dump
  elf_file = args.readelf

  # Check whether these files exist
  if not os.path.isfile(acc_file):
    print("[FATAL] File {0} does not exist.".format(acc_file))
  elif not os.path.isfile(asm_file):
    print("[FATAL] File {0} does not exist.".format(asm_file))
  elif not os.path.isfile(dump_file):
    print("[FATAL] File {0} does not exist.".format(dump_file))
  elif not os.path.isfile(elf_file):
    print("[FATAL] File {0} does not exist.".format(elf_file))

  function_dict = parse_asm(asm_file)
  function_dict = parse_dump(dump_file, function_dict)
  variable_dict = parse_elf(elf_file)
  feature_list = parse_acc(acc_file, function_dict, variable_dict)

if __name__ == "__main__":
  main()
