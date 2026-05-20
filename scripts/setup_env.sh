#!/bin/bash

echo "===================================="
echo "Setting Up FPGA Environment"
echo "===================================="

#################################################
# Quartus Path
#################################################

export QUARTUS_ROOTDIR=/opt/intelFPGA/22.1/quartus

#################################################
# ModelSim Path
#################################################

export MODELSIM_ROOTDIR=/opt/intelFPGA/22.1/modelsim_ase

#################################################
# Add Paths
#################################################

export PATH=$QUARTUS_ROOTDIR/bin:$PATH

export PATH=$MODELSIM_ROOTDIR/bin:$PATH

#################################################
# Project Root
#################################################

export FPGA_PROJECT_ROOT=$(pwd)

echo "Environment Setup Completed"