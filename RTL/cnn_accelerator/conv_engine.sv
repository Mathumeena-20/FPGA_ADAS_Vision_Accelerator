module conv_engine(

    input  logic       clk,

    input  logic [7:0] pixel_in,
    input  logic [7:0] weight,

    output logic [15:0] conv_out

);

always_ff @(posedge clk)
begin

    conv_out <= pixel_in * weight;

end

endmodule