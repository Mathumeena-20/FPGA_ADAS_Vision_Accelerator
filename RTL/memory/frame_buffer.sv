module frame_buffer(

    input  logic       clk,

    input  logic       we,
    input  logic [18:0] addr,
    input  logic [7:0] data_in,

    output logic [7:0] data_out

);

logic [7:0] mem [0:307199];

always_ff @(posedge clk)
begin

    if(we)
        mem[addr] <= data_in;

    data_out <= mem[addr];

end

endmodule