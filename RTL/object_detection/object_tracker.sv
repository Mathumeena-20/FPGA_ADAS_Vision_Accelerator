module object_tracker(

    input  logic       clk,
    input  logic       rst_n,

    input  logic       object_valid,

    output logic [9:0] object_count

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        object_count <= 10'd0;

    else if(object_valid)
        object_count <= object_count + 1;

end

endmodule