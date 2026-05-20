module tb_gaussian;

logic clk;

logic [7:0] pixel_in;
logic [7:0] pixel_out;

gaussian_filter dut(

    .clk(clk),

    .pixel_in(pixel_in),

    .pixel_out(pixel_out)

);

always #5 clk = ~clk;

initial
begin

    clk = 0;

    pixel_in = 8'd20;

    #10;

    pixel_in = 8'd50;

    #10;

    pixel_in = 8'd100;

    #20;

    $stop;

end

endmodule