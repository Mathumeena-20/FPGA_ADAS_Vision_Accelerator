`timescale 1ns/1ps

module tb_lane_detection;

logic clk;
logic rst_n;

logic [7:0] pixel_in;
logic [7:0] lane_out;

always #5 clk = ~clk;

lane_tracker DUT (

    .clk(clk),
    .rst_n(rst_n),
    .pixel_in(pixel_in),
    .lane_out(lane_out)

);

initial
begin

    clk = 0;
    rst_n = 0;
    pixel_in = 0;

    #20;
    rst_n = 1;

    repeat(20)
    begin

        #10;
        pixel_in = $random;

    end

    #100;

    $finish;

end

initial
begin

    $dumpfile("tb_lane_detection.vcd");
    $dumpvars(0,tb_lane_detection);

end

endmodule