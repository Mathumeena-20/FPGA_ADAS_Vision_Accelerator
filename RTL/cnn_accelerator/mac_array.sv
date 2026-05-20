module mac_array(

    input  logic       clk,

    input  logic [15:0] a,
    input  logic [15:0] b,

    output logic [31:0] mac_out

);

always_ff @(posedge clk)
begin

    mac_out <= mac_out + (a * b);

end

endmodule