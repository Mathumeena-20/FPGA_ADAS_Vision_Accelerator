vlib work

#################################################
# COMMON FILES
#################################################

vlog ../../rtl/common/*.svh

#################################################
# IMAGE PROCESSING
#################################################

vlog ../../rtl/image_processing/rgb2gray/*.sv

vlog ../../rtl/image_processing/gaussian_filter/*.sv

vlog ../../rtl/image_processing/sobel_filter/*.sv

#################################################
# TOP MODULES
#################################################

vlog ../../rtl/top/*.sv

#################################################
# Compile Testbench
#################################################

vlog D:/VLSI/FPGA_ADAS_Vision_Accelerator/verification/TESTBENCH/tb_sobel.sv