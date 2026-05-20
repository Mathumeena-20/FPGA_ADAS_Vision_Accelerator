module alert_controller (

    input  logic clk,
    input  logic rst_n,

    input  logic [15:0] front_distance,
    input  logic [15:0] rear_distance,
    input  logic [15:0] left_distance,
    input  logic [15:0] right_distance,

    output logic alert_enable,
    output logic [1:0] alert_level

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        alert_enable <= 0;
        alert_level  <= 0;

    end

    else
    begin

        if(front_distance < 10 ||
           rear_distance  < 10 ||
           left_distance  < 10 ||
           right_distance < 10)
        begin

            alert_enable <= 1'b1;
            alert_level  <= 2'b11;

        end

        else if(front_distance < 20 ||
                rear_distance  < 20 ||
                left_distance  < 20 ||
                right_distance < 20)
        begin

            alert_enable <= 1'b1;
            alert_level  <= 2'b10;

        end

        else if(front_distance < 50 ||
                rear_distance  < 50 ||
                left_distance  < 50 ||
                right_distance < 50)
        begin

            alert_enable <= 1'b1;
            alert_level  <= 2'b01;

        end

        else
        begin

            alert_enable <= 1'b0;
            alert_level  <= 2'b00;

        end

    end

end

endmodule