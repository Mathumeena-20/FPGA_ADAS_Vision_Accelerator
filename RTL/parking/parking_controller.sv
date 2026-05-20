module parking_controller (

    input  logic clk,
    input  logic rst_n,

    input  logic parking_detected,

    input  logic [15:0] front_distance,
    input  logic [15:0] rear_distance,

    output logic park_enable,
    output logic warning_alert

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        park_enable  <= 0;
        warning_alert <= 0;

    end

    else
    begin

        if(parking_detected)
            park_enable <= 1'b1;
        else
            park_enable <= 1'b0;

        if(front_distance < 10 ||
           rear_distance  < 10)
            warning_alert <= 1'b1;
        else
            warning_alert <= 1'b0;

    end

end

endmodule