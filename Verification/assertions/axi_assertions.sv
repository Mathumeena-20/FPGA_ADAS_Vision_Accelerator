module axi_assertions(

    input logic clk,

    input logic awvalid,
    input logic awready

);

/////////////////////////////////////////////////
// AXI Handshake
/////////////////////////////////////////////////

property axi_handshake;

    @(posedge clk)

    awvalid |-> awready;

endproperty

assert property(axi_handshake);

endmodule