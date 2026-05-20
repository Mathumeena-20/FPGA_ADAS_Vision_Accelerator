module hough_top(

    input  logic       clk,

    input  logic       edge_in,

    output logic [7:0] line_count

);

always_ff @(posedge clk)
begin

    if(edge_in)
        line_count <= line_count + 1;

end

endmodule