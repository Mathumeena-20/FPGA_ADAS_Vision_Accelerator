#!/bin/bash

echo "Cleaning Project..."

#################################################
# Remove simulation files
#################################################

rm -rf work

rm -rf transcript

rm -rf vsim.wlf

#################################################
# Remove Quartus outputs
#################################################

rm -rf ../fpga/quartus/db

rm -rf ../fpga/quartus/incremental_db

rm -rf ../fpga/quartus/output_files

#################################################
# Remove temporary files
#################################################

find . -name "*.bak" -delete

find . -name "*.log" -delete

echo "Clean Completed"