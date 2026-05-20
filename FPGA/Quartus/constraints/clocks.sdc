#################################################
# MAIN FPGA CLOCK
#################################################

create_clock \
-name sys_clk \
-period 20.0 \
[get_ports CLOCK_50]