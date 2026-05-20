module fifo_sync(

    input  logic       clk,
    input  logic       rst_n,

    input  logic       wr_en,
    input  logic       rd_en,

    input  logic [7:0] data_in,

    output logic [7:0] data_out

);

logic [7:0] fifo [0:15];

logic [3:0] wr_ptr;
logic [3:0] rd_ptr;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin
        wr_ptr <= 0;
        rd_ptr <= 0;
    end

    else
    begin

        if(wr_en)
        begin
            fifo[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
        end

        if(rd_en)
        begin
            data_out <= fifo[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end

    end

end

endmodule