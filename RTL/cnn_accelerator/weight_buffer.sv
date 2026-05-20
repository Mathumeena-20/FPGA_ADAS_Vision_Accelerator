module weight_buffer(

    input  logic       clk,

    input  logic       we,
    input  logic [7:0] addr,
    input  logic [7:0] weight_in,

    output logic [7:0] weight_out

);

logic [7:0] weights [0:255];

always_ff @(posedge clk)
begin

    if(we)
        weights[addr] <= weight_in;

    weight_out <= weights[addr];

end

endmodule