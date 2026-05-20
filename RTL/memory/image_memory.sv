module image_memory(

    input  logic       clk,

    input  logic       we,
    input  logic [15:0] addr,
    input  logic [7:0] pixel_in,

    output logic [7:0] pixel_out

);

logic [7:0] mem [0:65535];

always_ff @(posedge clk)
begin

    if(we)
        mem[addr] <= pixel_in;

    pixel_out <= mem[addr];

end

endmodule