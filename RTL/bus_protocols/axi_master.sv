module axi_master(

    input  logic       clk,
    input  logic       rst_n,

    output logic       awvalid,
    output logic [31:0] awaddr,

    output logic       wvalid,
    output logic [31:0] wdata,

    input  logic       bvalid

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin
        awvalid <= 0;
        wvalid  <= 0;
    end

    else
    begin

        awvalid <= 1'b1;
        awaddr  <= 32'h00001000;

        wvalid  <= 1'b1;
        wdata   <= 32'hDEADBEEF;

    end

end

endmodule