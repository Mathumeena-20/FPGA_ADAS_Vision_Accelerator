`timescale 1ns/1ps

module tb_camera_pipeline;

/////////////////////////////////////////////////
// Signals
/////////////////////////////////////////////////

logic clk;
logic rst_n;

logic [7:0] cam_r;
logic [7:0] cam_g;
logic [7:0] cam_b;

logic [7:0] processed_pixel;

/////////////////////////////////////////////////
// DUT
/////////////////////////////////////////////////

camera_pipeline_top dut(

    .clk(clk),

    .rst_n(rst_n),

    .cam_r(cam_r),
    .cam_g(cam_g),
    .cam_b(cam_b),

    .processed_pixel(processed_pixel)

);

/////////////////////////////////////////////////
// Clock
/////////////////////////////////////////////////

always #5 clk = ~clk;

/////////////////////////////////////////////////
// Stimulus
/////////////////////////////////////////////////

initial
begin

    clk = 0;

    rst_n = 0;

    #10;

    rst_n = 1;

    cam_r = 8'd80;
    cam_g = 8'd100;
    cam_b = 8'd120;

    #20;

    cam_r = 8'd150;
    cam_g = 8'd170;
    cam_b = 8'd190;

    #20;

    cam_r = 8'd255;
    cam_g = 8'd255;
    cam_b = 8'd255;

    #40;

    $display("Camera Pipeline Simulation Completed");

    $stop;

end

endmodule