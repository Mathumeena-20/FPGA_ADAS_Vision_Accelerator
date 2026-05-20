module axi_slave(

    input  logic       clk,
    input  logic       rst_n,

    input  logic       awvalid,
    input  logic [31:0] awaddr,

    input  logic       wvalid,
    input  logic [31:0] wdata,

    output logic       bvalid

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        bvalid <= 0;

    else if(awvalid && wvalid)
        bvalid <= 1'b1;

end

endmodule