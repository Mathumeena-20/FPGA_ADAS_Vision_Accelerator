module gradient_calc(

    input  logic [7:0] gx,
    input  logic [7:0] gy,

    output logic [7:0] gradient

);

always_comb
begin

    gradient = gx + gy;

end

endmodule