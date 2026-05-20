module tb_cnn_accelerator;

logic clk;

logic [7:0] pixel_in;
logic [7:0] weight;

logic [15:0] cnn_out;

cnn_top dut(

    .clk(clk),

    .pixel_in(pixel_in),

    .weight(weight),

    .cnn_out(cnn_out)

);

always #5 clk = ~clk;

initial
begin

    clk = 0;

    pixel_in = 8'd10;
    weight   = 8'd2;

    #20;

    pixel_in = 8'd20;
    weight   = 8'd4;

    #20;

    $stop;

end

endmodule