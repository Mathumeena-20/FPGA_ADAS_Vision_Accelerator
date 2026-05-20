module config_registers(

    input  logic       clk,
    input  logic       rst_n,

    input  logic       wr_en,
    input  logic [7:0] addr,
    input  logic [31:0] data_in,

    output logic [31:0] data_out

);

logic [31:0] regs [0:255];

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        regs[0] <= 0;

    else if(wr_en)
        regs[addr] <= data_in;

    data_out <= regs[addr];

end

endmodule