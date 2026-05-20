module accumulator(

    input  logic       clk,

    input  logic       valid_edge,

    output logic [15:0] acc

);

always_ff @(posedge clk)
begin

    if(valid_edge)
        acc <= acc + 1;

end

endmodule