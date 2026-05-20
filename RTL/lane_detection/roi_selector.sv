module roi_selector(

    input  logic [9:0] x,
    input  logic [9:0] y,

    output logic       roi_valid

);

always_comb
begin

    if((x > 100 && x < 540) &&
       (y > 200 && y < 480))

        roi_valid = 1'b1;

    else
        roi_valid = 1'b0;

end

endmodule