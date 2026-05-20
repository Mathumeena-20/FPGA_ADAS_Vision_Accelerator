module apb_slave(

    input  logic       pclk,
    input  logic       presetn,

    input  logic       psel,
    input  logic       penable,
    input  logic       pwrite,

    input  logic [31:0] pwdata,

    output logic [31:0] prdata

);

always_ff @(posedge pclk or negedge presetn)
begin

    if(!presetn)
        prdata <= 0;

    else if(psel && penable && pwrite)
        prdata <= pwdata;

end

endmodule