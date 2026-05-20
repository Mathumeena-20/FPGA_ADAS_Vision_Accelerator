module line_buffer #(

    parameter DATA_WIDTH = 8,
    parameter LINE_LENGTH = 640

)(

    input logic clk,
    input logic rst_n,

    input logic wr_en,

    input logic [DATA_WIDTH-1:0] pixel_in,

    output logic [DATA_WIDTH-1:0] pixel_out

);

logic [DATA_WIDTH-1:0] line_mem [0:LINE_LENGTH-1];

integer i;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        for(i=0;i<LINE_LENGTH;i=i+1)
            line_mem[i] <= 0;

    end

    else if(wr_en)
    begin

        for(i=LINE_LENGTH-1;i>0;i=i-1)
            line_mem[i] <= line_mem[i-1];

        line_mem[0] <= pixel_in;

    end

end

assign pixel_out = line_mem[LINE_LENGTH-1];

endmodule