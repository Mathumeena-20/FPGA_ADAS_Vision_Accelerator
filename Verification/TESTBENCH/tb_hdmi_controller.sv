`timescale 1ns/1ps

module tb_hdmi_controller;

logic pixel_clk;
logic reset_n;

logic [7:0] red;
logic [7:0] green;
logic [7:0] blue;

logic tmds_clk_p;
logic tmds_clk_n;

logic [2:0] tmds_data_p;
logic [2:0] tmds_data_n;

/////////////////////////////////////////////////
// DUT
/////////////////////////////////////////////////

hdmi_controller dut(

    .pixel_clk(pixel_clk),
    .reset_n(reset_n),

    .red(red),
    .green(green),
    .blue(blue),

    .tmds_clk_p(tmds_clk_p),
    .tmds_clk_n(tmds_clk_n),

    .tmds_data_p(tmds_data_p),
    .tmds_data_n(tmds_data_n)

);

/////////////////////////////////////////////////
// CLOCK
/////////////////////////////////////////////////

always #10 pixel_clk = ~pixel_clk;

/////////////////////////////////////////////////
// TEST
/////////////////////////////////////////////////

initial
begin

    pixel_clk = 0;

    reset_n = 0;

    red   = 8'hFF;
    green = 8'h00;
    blue  = 8'hAA;

    #100;

    reset_n = 1;

    //////////////////////////////////////////////////
    // Change RGB Pattern
    //////////////////////////////////////////////////

    #100;

    red   = 8'h11;
    green = 8'h22;
    blue  = 8'h33;

    #100;

    red   = 8'h55;
    green = 8'h66;
    blue  = 8'h77;

    #1000;

    $display("HDMI Controller Simulation Completed");

    $finish;

end

endmodule