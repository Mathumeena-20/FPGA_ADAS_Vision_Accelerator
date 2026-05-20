module window_generator(

    input  logic       clk,

    input  logic [7:0] pixel_in,

    output logic [7:0] p00,
    output logic [7:0] p01,
    output logic [7:0] p02,

    output logic [7:0] p10,
    output logic [7:0] p11,
    output logic [7:0] p12,

    output logic [7:0] p20,
    output logic [7:0] p21,
    output logic [7:0] p22

);

/////////////////////////////////////////////////
// SHIFT REGISTERS
/////////////////////////////////////////////////

always_ff @(posedge clk)
begin

    //////////////////////////////////////////////////
    // ROW 0
    //////////////////////////////////////////////////

    p00 <= p01;
    p01 <= p02;
    p02 <= pixel_in;

    //////////////////////////////////////////////////
    // ROW 1
    //////////////////////////////////////////////////

    p10 <= p11;
    p11 <= p12;
    p12 <= p02;

    //////////////////////////////////////////////////
    // ROW 2
    //////////////////////////////////////////////////

    p20 <= p21;
    p21 <= p22;
    p22 <= p12;

end

endmodule