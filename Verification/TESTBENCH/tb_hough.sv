module tb_hough;

logic clk;

logic edge_in;

logic [7:0] line_count;

hough_top dut(

    .clk(clk),

    .edge_in(edge_in),

    .line_count(line_count)

);

always #5 clk = ~clk;

initial
begin

    clk = 0;

    edge_in = 0;

    #10;

    edge_in = 1;

    #50;

    edge_in = 0;

    #20;

    $stop;

end

endmodule