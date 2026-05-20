`timescale 1ns/1ps

module tb_window_generator;

logic clk;

logic [7:0] pixel_in;

logic [7:0] p00;
logic [7:0] p01;
logic [7:0] p02;

logic [7:0] p10;
logic [7:0] p11;
logic [7:0] p12;

logic [7:0] p20;
logic [7:0] p21;
logic [7:0] p22;

/////////////////////////////////////////////////
// DUT
/////////////////////////////////////////////////

window_generator dut(

    .clk(clk),

    .pixel_in(pixel_in),

    .p00(p00),
    .p01(p01),
    .p02(p02),

    .p10(p10),
    .p11(p11),
    .p12(p12),

    .p20(p20),
    .p21(p21),
    .p22(p22)

);

/////////////////////////////////////////////////
// CLOCK
/////////////////////////////////////////////////

always #5 clk = ~clk;

/////////////////////////////////////////////////
// TEST
/////////////////////////////////////////////////

initial
begin

    clk = 0;

    pixel_in = 8'd1;   #10;
    pixel_in = 8'd2;   #10;
    pixel_in = 8'd3;   #10;
    pixel_in = 8'd4;   #10;
    pixel_in = 8'd5;   #10;
    pixel_in = 8'd6;   #10;
    pixel_in = 8'd7;   #10;
    pixel_in = 8'd8;   #10;
    pixel_in = 8'd9;   #10;

    $display("Window Generator Simulation Completed");

    $finish;

end

endmodule