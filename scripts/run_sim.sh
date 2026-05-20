#!/bin/bash

echo "===================================="
echo "Running Simulation"
echo "===================================="

cd ../fpga/modelsim

vsim -do compile.do

vsim -do wave.do

vsim -do run.do

echo "===================================="
echo "Simulation Completed"
echo "===================================="