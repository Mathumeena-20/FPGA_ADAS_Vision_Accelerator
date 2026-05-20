module binary_threshold(

    input  logic [7:0] pixel_in,

    output logic       binary_out

);

/////////////////////////////////////////////////
// Threshold Parameter
/////////////////////////////////////////////////

parameter THRESHOLD = 8'd100;

/////////////////////////////////////////////////
// Binary Threshold Logic
/////////////////////////////////////////////////

always_comb
begin

    if(pixel_in > THRESHOLD)
        binary_out = 1'b1;
    else
        binary_out = 1'b0;

end

endmodule