module sensor_fusion (

    input  logic clk,
    input  logic rst_n,

    input  logic [15:0] front_distance,
    input  logic [15:0] rear_distance,
    input  logic [15:0] left_distance,
    input  logic [15:0] right_distance,

    output logic obstacle_detected,
    output logic [1:0] obstacle_direction

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        obstacle_detected  <= 0;
        obstacle_direction <= 0;

    end

    else
    begin

        obstacle_detected  <= 0;
        obstacle_direction <= 0;

        if(front_distance < 20)
        begin

            obstacle_detected  <= 1'b1;
            obstacle_direction <= 2'b00;

        end

        else if(rear_distance < 20)
        begin

            obstacle_detected  <= 1'b1;
            obstacle_direction <= 2'b01;

        end

        else if(left_distance < 20)
        begin

            obstacle_detected  <= 1'b1;
            obstacle_direction <= 2'b10;

        end

        else if(right_distance < 20)
        begin

            obstacle_detected  <= 1'b1;
            obstacle_direction <= 2'b11;

        end

    end

end

endmodule