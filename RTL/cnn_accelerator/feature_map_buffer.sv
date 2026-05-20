module feature_map_buffer(

    input  logic       clk,

    input  logic       we,
    input  logic [7:0] addr,
    input  logic [15:0] data_in,

    output logic [15:0] data_out

);

logic [15:0] mem [0:255];

always_ff @(posedge clk)
begin

    if(we)
        mem[addr] <= data_in;

    data_out <= mem[addr];

end

endmodule