`timescale 1ns/1ps

module tb_fpga_top;

/////////////////////////////////////////////////
// Signals
/////////////////////////////////////////////////

logic clk;
logic reset_n;

logic [7:0] camera_r;
logic [7:0] camera_g;
logic [7:0] camera_b;

logic [7:0] led_output;

/////////////////////////////////////////////////
// DUT
/////////////////////////////////////////////////

fpga_top dut(

    .CLOCK_50(clk),

    .reset_n(reset_n),

    .camera_r(camera_r),
    .camera_g(camera_g),
    .camera_b(camera_b),

    .led_output(led_output)

);

/////////////////////////////////////////////////
// Clock
/////////////////////////////////////////////////

always #10 clk = ~clk;

/////////////////////////////////////////////////
// Stimulus
/////////////////////////////////////////////////

initial
begin

    clk = 0;

    reset_n = 0;

    #20;

    reset_n = 1;

    //////////////////////////////////////////////////
    // Test Pixel Inputs
    //////////////////////////////////////////////////

    camera_r = 8'd100;
    camera_g = 8'd120;
    camera_b = 8'd140;

    #20;

    camera_r = 8'd200;
    camera_g = 8'd210;
    camera_b = 8'd220;

    #20;

    camera_r = 8'd50;
    camera_g = 8'd60;
    camera_b = 8'd70;

    #40;

    $display("FPGA TOP Simulation Completed");

    $stop;

end

endmodule