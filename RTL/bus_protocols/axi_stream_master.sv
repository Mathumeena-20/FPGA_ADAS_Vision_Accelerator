module axi_stream_master(

    input  logic       clk,
    input  logic       rst_n,

    input  logic [7:0] pixel_in,

    output logic       tvalid,
    output logic [31:0] tdata

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin
        tvalid <= 0;
        tdata  <= 0;
    end

    else
    begin
        tvalid <= 1'b1;
        tdata  <= {24'd0,pixel_in};
    end

end

endmodule