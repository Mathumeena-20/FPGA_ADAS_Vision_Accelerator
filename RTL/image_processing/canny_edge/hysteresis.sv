module hysteresis(

    input  logic [7:0] pixel_in,

    output logic       strong_edge

);

always_comb
begin

    if(pixel_in > 100)
        strong_edge = 1'b1;
    else
        strong_edge = 1'b0;

end

endmodule