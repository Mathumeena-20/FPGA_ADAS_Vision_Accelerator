module dual_port_ram(

    input  logic       clk,

    input  logic       we_a,
    input  logic       we_b,

    input  logic [7:0] addr_a,
    input  logic [7:0] addr_b,

    input  logic [7:0] data_a,
    input  logic [7:0] data_b,

    output logic [7:0] q_a,
    output logic [7:0] q_b

);

logic [7:0] ram [0:255];

always_ff @(posedge clk)
begin

    if(we_a)
        ram[addr_a] <= data_a;

    if(we_b)
        ram[addr_b] <= data_b;

    q_a <= ram[addr_a];
    q_b <= ram[addr_b];

end

endmodule