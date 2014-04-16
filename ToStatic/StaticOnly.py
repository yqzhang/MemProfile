#!/usr/bin/env python

## File: StaticOnly.py
## Author: Yunqi Zhang
## Email: yunqi@umich.edu

import argparse
import os.path

def to_static(input_file, output_file):
  input_fp = open(input_file)
  output_fp = open(output_file, "w+")
  previous_lines = []

  for line in input_fp:
    items = line.strip().split(",")
    static_list = [items[0], items[1], items[2], items[3], items[4], items[5],
        items[6], items[12]]
    if static_list in previous_lines:
      continue
    else:
      previous_lines.append(static_list)
      output_fp.write("{0},{1},{2},{3},{4},{5},{6},{7}\n".format(
        static_list[0], static_list[1], static_list[2], static_list[3],
        static_list[4], static_list[5], static_list[6], static_list[7]))

def main():
  # Parse the arguments
  parser = argparse.ArgumentParser()
  parser.add_argument("-i", "--input", required=True,
                      help="The path to the input file")
  parser.add_argument("-o", "--output", required=True,
                      help="The path to the output file")
  args = parser.parse_args()

  input_file = args.input
  output_file = args.output

  if not os.path.isfile(input_file):
    print("[FATAL] File {0} does no exist.".format(input_file))
  else:
    to_static(input_file, output_file)

if __name__ == "__main__":
  main()
