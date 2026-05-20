module steering_estimator(

    input  logic       left_lane,
    input  logic       right_lane,

    output logic [1:0] steering_cmd

);

/////////////////////////////////////////////////
// Steering Commands
/////////////////////////////////////////////////
// 00 -> Straight
// 01 -> Left
// 10 -> Right
/////////////////////////////////////////////////

always_comb
begin

    if(left_lane && !right_lane)
        steering_cmd = 2'b01;

    else if(right_lane && !left_lane)
        steering_cmd = 2'b10;

    else
        steering_cmd = 2'b00;

end

endmodule