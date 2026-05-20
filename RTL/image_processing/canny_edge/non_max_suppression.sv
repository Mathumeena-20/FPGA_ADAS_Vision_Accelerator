module non_max_suppression(

    input  logic [7:0] gradient,

    output logic [7:0] suppressed

);

always_comb
begin

    if(gradient > 20)
        suppressed = gradient;
    else
        suppressed = 0;

end

endmodule