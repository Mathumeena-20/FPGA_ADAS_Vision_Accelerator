module image_memory #(

    parameter DATA_WIDTH = 8,
    parameter IMG_WIDTH  = 640,
    parameter IMG_HEIGHT = 480

)(

    input logic clk,

    input logic wr_en,
    input logic rd_en,

    input logic [18:0] wr_addr,
    input logic [18:0] rd_addr,

    input logic [DATA_WIDTH-1:0] pixel_in,

    output logic [DATA_WIDTH-1:0] pixel_out

);

logic [DATA_WIDTH-1:0] image_mem [0:(IMG_WIDTH*IMG_HEIGHT)-1];

always_ff @(posedge clk)
begin

    if(wr_en)
        image_mem[wr_addr] <= pixel_in;

end

always_ff @(posedge clk)
begin

    if(rd_en)
        pixel_out <= image_mem[rd_addr];

end

endmodule