module lane_tracker(

    input  logic       clk,
    input  logic       rst_n,

    input  logic       lane_detect,

    output logic [9:0] lane_position

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        lane_position <= 10'd0;

    else if(lane_detect)
        lane_position <= lane_position + 1;

end

endmodule