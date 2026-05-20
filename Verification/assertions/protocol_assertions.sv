module protocol_assertions(

    input logic clk,

    input logic valid,
    input logic ready

);

/////////////////////////////////////////////////
// VALID must remain stable
/////////////////////////////////////////////////

property valid_ready_protocol;

    @(posedge clk)

    valid |-> ready;

endproperty

assert property(valid_ready_protocol);

endmodule