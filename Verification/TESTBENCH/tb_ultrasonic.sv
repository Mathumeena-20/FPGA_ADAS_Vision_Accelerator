`timescale 1ns/1ps

module tb_ultrasonic;

logic clk;
logic rst_n;

logic echo;
logic trigger;

logic [15:0] distance_cm;

always #5 clk = ~clk;

ultrasonic_controller DUT (

    .clk(clk),
    .rst_n(rst_n),
    .echo(echo),
    .trigger(trigger),
    .distance_cm(distance_cm)

);

initial
begin

    clk = 0;
    rst_n = 0;
    echo = 0;

    #20;
    rst_n = 1;

    #50;
    echo = 1;

    #100;
    echo = 0;

    #200;

    $finish;

end

initial
begin

    $dumpfile("tb_ultrasonic.vcd");
    $dumpvars(0,tb_ultrasonic);

end

endmodule