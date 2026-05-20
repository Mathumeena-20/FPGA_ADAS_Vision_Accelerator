`include "../common/definitions.svh"

module adas_pipeline_top(

    //////////////////////////////////////////////////
    // Inputs
    //////////////////////////////////////////////////

    input  logic       clk,
    input  logic       rst_n,

    input  logic [7:0] r,
    input  logic [7:0] g,
    input  logic [7:0] b,

    //////////////////////////////////////////////////
    // Outputs
    //////////////////////////////////////////////////

    output logic [7:0] edge_out,

    output logic       parking_detected,

    output logic [15:0] distance_cm,

    output logic       buzzer

);

////////////////////////////////////////////////////
// Internal Signals
////////////////////////////////////////////////////

logic [7:0] gray_pixel;

logic [7:0] gaussian_pixel;

logic [7:0] sobel_pixel;

logic [7:0] threshold_pixel;

////////////////////////////////////////////////////
// Ultrasonic Internal Signals
////////////////////////////////////////////////////

logic obstacle_detected;

logic [1:0] obstacle_direction;

logic [15:0] front_distance;
logic [15:0] rear_distance;
logic [15:0] left_distance;
logic [15:0] right_distance;

////////////////////////////////////////////////////
// RGB to Gray
////////////////////////////////////////////////////

rgb2gray u_rgb2gray(

    .clk(clk),

    .r(r),
    .g(g),
    .b(b),

    .gray(gray_pixel)

);

////////////////////////////////////////////////////
// Gaussian Filter
////////////////////////////////////////////////////

gaussian_filter u_gaussian(

    .clk(clk),

    .pixel_in(gray_pixel),

    .pixel_out(gaussian_pixel)

);

////////////////////////////////////////////////////
// Sobel Filter
////////////////////////////////////////////////////

sobel_filter u_sobel(

    .clk(clk),

    .pixel_in(gaussian_pixel),

    .edge_out(sobel_pixel)

);



////////////////////////////////////////////////////
// Threshold Detector
////////////////////////////////////////////////////

threshold_detector u_threshold(

    .clk(clk),

    .edge_in(sobel_pixel),

    .threshold_out(threshold_pixel)

);

////////////////////////////////////////////////////
// Parking Slot Detector
////////////////////////////////////////////////////

parking_slot_detector u_parking(

    .clk(clk),

    .rst_n(rst_n),

    .edge_pixel(threshold_pixel),

    .parking_detected(parking_detected)

);

////////////////////////////////////////////////////
// Dummy Ultrasonic Distances
////////////////////////////////////////////////////

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        front_distance <= 16'd100;

        rear_distance  <= 16'd80;

        left_distance  <= 16'd60;

        right_distance <= 16'd40;

    end

    else
    begin

        ////////////////////////////////////////////
        // Simulate Moving Obstacle
        ////////////////////////////////////////////

        if(front_distance > 16'd5)
            front_distance <= front_distance - 1;
        else
            front_distance <= 16'd100;

        rear_distance  <= 16'd70;

        left_distance  <= 16'd50;

        right_distance <= 16'd30;

    end

end


////////////////////////////////////////////////////
// Sensor Fusion
////////////////////////////////////////////////////

sensor_fusion u_ultrasonic(

    .clk(clk),

    .rst_n(rst_n),

    .front_distance(front_distance),

    .rear_distance(rear_distance),

    .left_distance(left_distance),

    .right_distance(right_distance),

    .obstacle_detected(obstacle_detected),

    .obstacle_direction(obstacle_direction)

);

////////////////////////////////////////////////////
// Distance Output
////////////////////////////////////////////////////

assign distance_cm = front_distance;

////////////////////////////////////////////////////
// Temporary Buzzer Logic
////////////////////////////////////////////////////

pwm_generator u_pwm(

    .clk(clk),

    .enable(obstacle_detected),

    .pwm_out(buzzer)

);

////////////////////////////////////////////////////
// Final Edge Output
////////////////////////////////////////////////////

assign edge_out = threshold_pixel;

endmodule