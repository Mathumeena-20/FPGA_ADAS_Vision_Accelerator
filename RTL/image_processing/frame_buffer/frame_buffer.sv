module frame_buffer #(

    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 19,
    parameter FRAME_SIZE = 307200

)(

    input  logic clk,
    input  logic rst_n,

    input  logic wr_en,
    input  logic rd_en,

    input  logic [ADDR_WIDTH-1:0] wr_addr,
    input  logic [ADDR_WIDTH-1:0] rd_addr,

    input  logic [DATA_WIDTH-1:0] pixel_in,

    output logic [DATA_WIDTH-1:0] pixel_out

);

logic [DATA_WIDTH-1:0] memory [0:FRAME_SIZE-1];

always_ff @(posedge clk)
begin

    if(wr_en)
        memory[wr_addr] <= pixel_in;

end

always_ff @(posedge clk)
begin

    if(rd_en)
        pixel_out <= memory[rd_addr];

end

endmodule