`timescale 1ns/1ps

module tb_parking_alert;

logic clk;
logic rst_n;

logic [15:0] distance_cm;

logic buzzer;

always #5 clk = ~clk;

parking_alert_controller DUT (

    .clk(clk),
    .rst_n(rst_n),
    .distance_cm(distance_cm),
    .buzzer(buzzer)

);

initial
begin

    clk = 0;
    rst_n = 0;

    distance_cm = 100;

    #20;
    rst_n = 1;

    #50;
    distance_cm = 40;

    #50;
    distance_cm = 15;

    #50;
    distance_cm = 5;

    #100;

    $finish;

end

initial
begin

    $dumpfile("tb_parking_alert.vcd");
    $dumpvars(0,tb_parking_alert);

end

endmodule