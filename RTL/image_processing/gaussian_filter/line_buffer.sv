module line_buffer(

    input  logic       clk,

    input  logic [7:0] pixel_in,

    output logic [7:0] line_out

);

logic [7:0] buffer [0:2];

always_ff @(posedge clk)
begin

    buffer[0] <= pixel_in;
    buffer[1] <= buffer[0];
    buffer[2] <= buffer[1];

    line_out <= buffer[2];

end

endmodule