module fifo_async(

    input  logic       wr_clk,
    input  logic       rd_clk,

    input  logic       wr_en,
    input  logic       rd_en,

    input  logic [7:0] data_in,

    output logic [7:0] data_out

);

logic [7:0] fifo [0:15];

logic [3:0] wr_ptr;
logic [3:0] rd_ptr;

always_ff @(posedge wr_clk)
begin

    if(wr_en)
    begin
        fifo[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
    end

end

always_ff @(posedge rd_clk)
begin

    if(rd_en)
    begin
        data_out <= fifo[rd_ptr];
        rd_ptr <= rd_ptr + 1;
    end

end

endmodule