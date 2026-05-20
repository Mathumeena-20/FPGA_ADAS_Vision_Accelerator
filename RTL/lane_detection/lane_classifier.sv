module lane_classifier(

    input  logic [9:0] lane_position,

    output logic       left_lane,
    output logic       right_lane

);

always_comb
begin

    left_lane  = 1'b0;
    right_lane = 1'b0;

    if(lane_position < 320)
        left_lane = 1'b1;

    else
        right_lane = 1'b1;

end

endmodule