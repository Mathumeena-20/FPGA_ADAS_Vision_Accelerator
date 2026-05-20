module edge_threshold(

    input  logic [7:0] gradient,

    output logic       edge_detect

);

parameter THRESHOLD = 50;

always_comb
begin

    if(gradient > THRESHOLD)
        edge_detect = 1'b1;
    else
        edge_detect = 1'b0;

end

endmodule