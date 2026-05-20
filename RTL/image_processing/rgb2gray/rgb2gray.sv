module rgb2gray(

    input  logic       clk,

    input  logic [7:0] r,
    input  logic [7:0] g,
    input  logic [7:0] b,

    output logic [7:0] gray

);

always_ff @(posedge clk)
begin

    gray <= (r >> 2) + (g >> 1) + (b >> 3);

end

endmodule