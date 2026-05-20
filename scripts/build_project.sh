#!/bin/bash

echo "===================================="
echo "Building FPGA ADAS Project"
echo "===================================="

#################################################
# Create work library
#################################################

mkdir -p build

#################################################
# Compile RTL
#################################################

echo "Compiling RTL..."

vsim -c -do "../fpga/modelsim/compile.do"

#################################################
# Run Quartus Build
#################################################

echo "Running Quartus Compilation..."

quartus_sh -t ../fpga/quartus/scripts/build.tcl

echo "===================================="
echo "Build Completed"
echo "===================================="