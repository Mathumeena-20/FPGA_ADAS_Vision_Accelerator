module convolution_core(

    input  logic [7:0] p1,
    input  logic [7:0] p2,
    input  logic [7:0] p3,

    output logic [7:0] conv_out

);

always_comb
begin

    conv_out = p1 + p2 + p3;

end

endmodule