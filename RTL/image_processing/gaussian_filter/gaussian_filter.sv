module gaussian_filter(

    input  logic       clk,

    input  logic [7:0] pixel_in,

    output logic [7:0] pixel_out

);

logic [7:0] d1,d2,d3;

always_ff @(posedge clk)
begin

    d1 <= pixel_in;
    d2 <= d1;
    d3 <= d2;

    pixel_out <= (pixel_in + d1 + d2 + d3) >> 2;

end

endmodule