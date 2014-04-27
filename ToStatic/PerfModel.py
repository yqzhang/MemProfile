#!/usr/bin/env python

## File: PerfModel.py
## Author: Yunqi Zhang
## Email: yunqi@umich.edu

import argparse
import os.path

def main():
  # Parse the arguments
  parser = argparse.ArgumentParser()
  parser.add_argument("-i", "--input", required=True,
                      help="The path to the input file")
  parser.add_argument("-s", "--sram", required=True, type=int,
                      help="The size of the SRAM")
  parser.add_argument("-t", "--stt_ram", required=True, type=int,
                      help="The size of the STT-RAM")
  parser.add_argument("-r", "--rate", required=True, type=float,
                      help="The hit rate on the original SRAM")
  parser.add_argument("--latency_sram_read", type=int, default=10,
                      help="The read latency for SRAM")
  parser.add_argument("--latency_sram_write", type=int, default=10,
                      help="The write latency for SRAM")
  parser.add_argument("--latency_sttram_read", type=int, default=10,
                      help="The read latency for STT-RAM")
  parser.add_argument("--latency_sttram_write", type=int, default=10,
                      help="The write latency for STT-RAM")
  parser.add_argument("--energy_sram_read", type=int, default=10,
                      help="The read energy consumption for SRAM")
  parser.add_argument("--energy_sram_write", type=int, default=10,
                      help="The write energy consumption for SRAM")
  parser.add_argument("--energy_sttram_read", type=int, default=10,
                      help="The read energy consumption for STT-RAM")
  parser.add_argument("--energy_sttram_write", type=int, default=10,
                      help="The write energy consumption for STT-RAM")
  args = parser.parse_args()

  p_input = args.intput
  p_sram_size = args.sram
  p_sttram_size = args.stt_ram
  p_hit_rate = args.rate
  p_latency_sram_read = args.latency_sram_read
  p_latency_sram_write = args.latency_sram_write
  p_latency_sttram_read = args.latency_sttram_read
  p_latency_sttram_write = args.latency_sttram_write
  p_energy_sram_read = args.energy_sram_read
  p_energy_sram_write = args.energy_sram_write
  p_energy_sttram_read = args.energy_sttram_read
  p_energy_sttram_write = args.energy_sttram_write

if __name__ == "__main__":
  main()
