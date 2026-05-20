#!/bin/bash

echo "===================================="
echo "Generating Reports"
echo "===================================="

#################################################
# Timing Report
#################################################

cp ../fpga/quartus/output_files/timing_report.rpt \
   ../fpga/quartus/reports/

#################################################
# Resource Report
#################################################

cp ../fpga/quartus/output_files/resource_utilization.rpt \
   ../fpga/quartus/reports/

echo "Reports Generated Successfully"