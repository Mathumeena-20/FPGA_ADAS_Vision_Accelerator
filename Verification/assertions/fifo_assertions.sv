module fifo_assertions(

    input logic clk,

    input logic wr_en,
    input logic rd_en

);

/////////////////////////////////////////////////
// Assertion
/////////////////////////////////////////////////

property no_simultaneous_read_write;

    @(posedge clk)

    !(wr_en && rd_en);

endproperty

assert property(no_simultaneous_read_write);

endmodule