module dual_port_ram #(

    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 10

)(

    input logic clk,

    input logic we_a,
    input logic we_b,

    input logic [ADDR_WIDTH-1:0] addr_a,
    input logic [ADDR_WIDTH-1:0] addr_b,

    input logic [DATA_WIDTH-1:0] data_in_a,
    input logic [DATA_WIDTH-1:0] data_in_b,

    output logic [DATA_WIDTH-1:0] data_out_a,
    output logic [DATA_WIDTH-1:0] data_out_b

);

logic [DATA_WIDTH-1:0] ram [0:(2**ADDR_WIDTH)-1];

always_ff @(posedge clk)
begin

    if(we_a)
        ram[addr_a] <= data_in_a;

    data_out_a <= ram[addr_a];

end

always_ff @(posedge clk)
begin

    if(we_b)
        ram[addr_b] <= data_in_b;

    data_out_b <= ram[addr_b];

end

endmodule