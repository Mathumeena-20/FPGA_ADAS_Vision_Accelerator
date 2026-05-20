module distance_estimator(

    input  logic [9:0] object_size,

    output logic [15:0] distance

);

always_comb
begin

    if(object_size != 0)
        distance = 10000 / object_size;

    else
        distance = 16'd0;

end

endmodule