#!/bin/bash

BENCHMARK=( "bzip2" "gcc" "h264ref" "hmmer" "lbm" "libquantum" "mcf" "milc"
  "perlbench" "sjeng" "sphinx3" )

for bench in "${BENCHMARK[@]}"
do
  echo "[LOG] Generate files for ${bench} ..."
  # Generate the elf file
  readelf --debug-dump=info "benchmark/${bench}-static" \
    > "benchmark/${bench}.elf"
  # Generate the dump file
  objdump -d "benchmark/${bench}-static" \
    > "benchmark/${bench}.dump"

  echo "[LOG] Run ${bench} through the pipeline ..."
  # List all the asm files
  asm_file=`ls benchmark/${bench}/*.s`

  # Run the python script
  python ToStatic.py -a "benchmark/${bench}.prof" -s $asm_file \
    -d "benchmark/${bench}.dump" -r "benchmark/${bench}.elf" \
    > "benchmark/${bench}.dat"
done
