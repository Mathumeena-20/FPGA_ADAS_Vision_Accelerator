module max_pool(

    input  logic [7:0] p1,
    input  logic [7:0] p2,
    input  logic [7:0] p3,
    input  logic [7:0] p4,

    output logic [7:0] max_out

);

always_comb
begin

    max_out = p1;

    if(p2 > max_out)
        max_out = p2;

    if(p3 > max_out)
        max_out = p3;

    if(p4 > max_out)
        max_out = p4;

end

endmodule