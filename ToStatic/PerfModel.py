#!/usr/bin/env python

## File: PerfModel.py
## Author: Yunqi Zhang
## Email: yunqi@umich.edu

import argparse
import os.path
import numpy as np

THRESHOLD_LIST = np.arange(0, 1, 0.02)

def simulate(p_input, p_sram_size, p_sttram_size, p_hit_rate,
             p_latency_sram_read, p_latency_sram_write,
             p_latency_sttram_read, p_latency_sttram_write,
             p_latency_dram_read, p_latency_dram_write,
             p_energy_sram_read, p_energy_sram_write,
             p_energy_sttram_read, p_energy_sttram_write,
             p_energy_dram_read, p_energy_dram_write,
             p_threshold, p_leakage):
  # Calculate the hit rate on STT-RAM
  stt_hit_ratio = (p_hit_rate / p_sram_size) * \
      (p_sram_size / 2 + p_sttram_size)
  if stt_hit_ratio >= 1.0:
    stt_hit_ratio = 1.0
  # Parameters we care about
  total_latency_sttram = 0
  total_latency_sram = 0
  total_latency_oracle = 0
  total_energy_sttram = 0
  total_energy_sram = 0
  total_energy_oracle = 0
  # Loop through all the accesses
  input_fp = open(p_input)
  for line in input_fp:
    items = line.strip().split()
    access_type = items[0]
    ratio_actu = float(items[1])
    ratio_pred = float(items[2])

    # SRAM
    r = np.random.binomial(1, p_hit_rate)
    if r == 1:
      # hit
      if access_type == "R":
        total_latency_sram = total_latency_sram + p_latency_sram_read
        total_energy_sram = total_energy_sram + p_energy_sram_read
      else:
        total_latency_sram = total_latency_sram + p_latency_sram_write
        total_energy_sram = total_energy_sram + p_energy_sram_write
    else:
      # miss
      if access_type == "R":
        total_latency_sram = total_latency_sram + p_latency_dram_read
        total_energy_sram = total_energy_sram + p_energy_dram_read
      else:
        total_latency_sram = total_latency_sram + p_latency_dram_write
        total_energy_sram = total_energy_sram + p_energy_dram_write

    # STT-RAM
    if ratio_pred < p_threshold:
      # in STT-RAM
      r = np.random.binomial(1, stt_hit_ratio)
      if r == 1:
        # hit
        if access_type == "R":
          total_latency_sttram = total_latency_sttram + p_latency_sttram_read
          total_energy_sttram = total_energy_sttram + p_energy_sttram_read
        else:
          total_latency_sttram = total_latency_sttram + p_latency_sttram_write
          total_energy_sttram = total_energy_sttram + p_energy_sttram_write
      else:
        # miss
        if access_type == "R":
          total_latency_sttram = total_latency_sttram + p_latency_dram_read
          total_energy_sttram = total_energy_sttram + p_energy_dram_read
        else:
          total_latency_sttram = total_latency_sttram + p_latency_dram_write
          total_energy_sttram = total_energy_sttram + p_energy_dram_write
    # SRAM
    else:
      r = np.random.binomial(1, p_hit_rate)
      if r == 1:
        # hit
        if access_type == "R":
          total_latency_sttram = total_latency_sttram + p_latency_sram_read
          total_energy_sttram = total_energy_sttram + p_energy_sram_read
        else:
          total_latency_sttram = total_latency_sttram + p_latency_sram_write
          total_energy_sttram = total_energy_sttram + p_energy_sram_write
      else:
        # miss
        if access_type == "R":
          total_latency_sttram = total_latency_sttram + p_latency_dram_read
          total_energy_sttram = total_energy_sttram + p_energy_dram_read
        else:
          total_latency_sttram = total_latency_sttram + p_latency_dram_write
          total_energy_sttram = total_energy_sttram + p_energy_dram_write

    # Oracle
    if ratio_actu < p_threshold:
      # in STT-RAM
      r = np.random.binomial(1, stt_hit_ratio)
      if r == 1:
        # hit
        if access_type == "R":
          total_latency_oracle = total_latency_oracle + p_latency_sttram_read
          total_energy_oracle = total_energy_oracle + p_energy_sttram_read
        else:
          total_latency_oracle = total_latency_oracle + p_latency_sttram_write
          total_energy_oracle = total_energy_oracle + p_energy_sttram_write
      else:
        # miss
        if access_type == "R":
          total_latency_oracle = total_latency_oracle + p_latency_dram_read
          total_energy_oracle = total_energy_oracle + p_energy_dram_read
        else:
          total_latency_oracle = total_latency_oracle + p_latency_dram_write
          total_energy_oracle = total_energy_oracle + p_energy_dram_write
    # SRAM
    else:
      r = np.random.binomial(1, p_hit_rate)
      if r == 1:
        # hit
        if access_type == "R":
          total_latency_oracle = total_latency_oracle + p_latency_sram_read
          total_energy_oracle = total_energy_oracle + p_energy_sram_read
        else:
          total_latency_oracle = total_latency_oracle + p_latency_sram_write
          total_energy_oracle = total_energy_oracle + p_energy_sram_write
      else:
        # miss
        if access_type == "R":
          total_latency_oracle = total_latency_oracle + p_latency_dram_read
          total_energy_oracle = total_energy_oracle + p_energy_dram_read
        else:
          total_latency_oracle = total_latency_oracle + p_latency_dram_write
          total_energy_oracle = total_energy_oracle + p_energy_dram_write

  # Leakage power
  total_energy_sram = total_energy_sram * (1 + p_leakage)
  total_energy_sttram = total_energy_sttram * (1 + p_leakage / 2)
  total_energy_oracle = total_energy_oracle * (1 + p_leakage / 2)
  """
  print("SRAM: latency - {0}, energy - {1}".format(total_latency_sram,
                                                   total_energy_sram))
  print("STT-RAM: latency - {0}, energy - {1}".format(total_latency_sttram,
                                                      total_energy_sttram))
  print("Oracle: latency - {0}, energy - {1}".format(total_latency_oracle,
                                                     total_energy_oracle))
  """
  # Close the file
  input_fp.close()

  return [total_latency_sram, total_energy_sram,
          total_latency_sttram, total_energy_sttram,
          total_latency_oracle, total_energy_oracle]

def main():
  # Parse the arguments
  parser = argparse.ArgumentParser()
  parser.add_argument("-i", "--input", required=True,
                      help="The path to the input file")
  parser.add_argument("-s", "--sram", type=int, default=2,
                      help="The size of the SRAM")
  parser.add_argument("-t", "--stt_ram", type=int, default=4,
                      help="The size of the STT-RAM")
  parser.add_argument("-r", "--rate", required=True, type=float,
                      help="The hit rate on the original SRAM")
  parser.add_argument("--latency_sram_read", type=int, default=1,
                      help="The read latency for SRAM")
  parser.add_argument("--latency_sram_write", type=int, default=1,
                      help="The write latency for SRAM")
  parser.add_argument("--latency_sttram_read", type=int, default=1,
                      help="The read latency for STT-RAM")
  parser.add_argument("--latency_sttram_write", type=int, default=3,
                      help="The write latency for STT-RAM")
  parser.add_argument("--latency_dram_read", type=int, default=30,
                      help="The read latency for DRAM")
  parser.add_argument("--latency_dram_write", type=int, default=50,
                      help="The write latency for DRAM")
  parser.add_argument("--energy_sram_read", type=int, default=1,
                      help="The read energy consumption for SRAM")
  parser.add_argument("--energy_sram_write", type=int, default=1,
                      help="The write energy consumption for SRAM")
  parser.add_argument("--energy_sttram_read", type=int, default=1,
                      help="The read energy consumption for STT-RAM")
  parser.add_argument("--energy_sttram_write", type=int, default=3,
                      help="The write energy consumption for STT-RAM")
  parser.add_argument("--energy_dram_read", type=int, default=2,
                      help="The read energy for DRAM")
  parser.add_argument("--energy_dram_write", type=int, default=2,
                      help="The write energy for DRAM")
  parser.add_argument("--leakage", type=float, default=0.3,
                      help="The proportion of leakage power on SRAM")
  args = parser.parse_args()

  p_input = args.input
  p_sram_size = args.sram
  p_sttram_size = args.stt_ram
  p_hit_rate = args.rate
  p_latency_sram_read = args.latency_sram_read
  p_latency_sram_write = args.latency_sram_write
  p_latency_sttram_read = args.latency_sttram_read
  p_latency_sttram_write = args.latency_sttram_write
  p_latency_dram_read = args.latency_dram_read
  p_latency_dram_write = args.latency_dram_write
  p_energy_sram_read = args.energy_sram_read
  p_energy_sram_write = args.energy_sram_write
  p_energy_sttram_read = args.energy_sttram_read
  p_energy_sttram_write = args.energy_sttram_write
  p_energy_dram_read = args.energy_dram_read
  p_energy_dram_write = args.energy_dram_write
  p_leakage = args.leakage

  min_latency = float("inf")
  min_energy = float("inf")
  min_latency_threshold = 0.0
  min_energy_threshold = 0.0
  for threshold in THRESHOLD_LIST:
    [total_latency_sram, total_energy_sram,
     total_latency_sttram, total_energy_sttram,
     total_latency_oracle, total_energy_oracle] = simulate(p_input,
                                                           p_sram_size,
                                                           p_sttram_size,
                                                           p_hit_rate,
                                                           p_latency_sram_read,
                                                           p_latency_sram_write,
                                                           p_latency_sttram_read,
                                                           p_latency_sttram_write,
                                                           p_latency_dram_read,
                                                           p_latency_dram_write,
                                                           p_energy_sram_read,
                                                           p_energy_sram_write,
                                                           p_energy_sttram_read,
                                                           p_energy_sttram_write,
                                                           p_energy_dram_read,
                                                           p_energy_dram_write,
                                                           threshold,
                                                           p_leakage)
    if total_latency_oracle < min_latency:
      min_latency = total_latency_oracle
      min_latency_threshold = threshold
    if total_energy_oracle < min_energy:
      min_energy = total_energy_oracle
      min_energy_threshold = threshold

  print("optimize - latency")
  print(min_latency_threshold)
  [total_latency_sram, total_energy_sram,
   total_latency_sttram, total_energy_sttram,
   total_latency_oracle, total_energy_oracle] = simulate(p_input,
                                                         p_sram_size,
                                                         p_sttram_size,
                                                         p_hit_rate,
                                                         p_latency_sram_read,
                                                         p_latency_sram_write,
                                                         p_latency_sttram_read,
                                                         p_latency_sttram_write,
                                                         p_latency_dram_read,
                                                         p_latency_dram_write,
                                                         p_energy_sram_read,
                                                         p_energy_sram_write,
                                                         p_energy_sttram_read,
                                                         p_energy_sttram_write,
                                                         p_energy_dram_read,
                                                         p_energy_dram_write,
                                                         min_latency_threshold,
                                                         p_leakage)
  print("SRAM: latency - {0}, energy - {1}".format(total_latency_sram,
                                                   total_energy_sram))
  print("STT-RAM: latency - {0}, energy - {1}".format(total_latency_sttram,
                                                      total_energy_sttram))
  print("Oracle: latency - {0}, energy - {1}".format(total_latency_oracle,
                                                     total_energy_oracle))

  print("optimize - energy")
  print(min_energy_threshold)
  [total_latency_sram, total_energy_sram,
   total_latency_sttram, total_energy_sttram,
   total_latency_oracle, total_energy_oracle] = simulate(p_input,
                                                         p_sram_size,
                                                         p_sttram_size,
                                                         p_hit_rate,
                                                         p_latency_sram_read,
                                                         p_latency_sram_write,
                                                         p_latency_sttram_read,
                                                         p_latency_sttram_write,
                                                         p_latency_dram_read,
                                                         p_latency_dram_write,
                                                         p_energy_sram_read,
                                                         p_energy_sram_write,
                                                         p_energy_sttram_read,
                                                         p_energy_sttram_write,
                                                         p_energy_dram_read,
                                                         p_energy_dram_write,
                                                         min_energy_threshold,
                                                         p_leakage)
  print("SRAM: latency - {0}, energy - {1}".format(total_latency_sram,
                                                   total_energy_sram))
  print("STT-RAM: latency - {0}, energy - {1}".format(total_latency_sttram,
                                                      total_energy_sttram))
  print("Oracle: latency - {0}, energy - {1}".format(total_latency_oracle,
                                                     total_energy_oracle))

if __name__ == "__main__":
  main()
