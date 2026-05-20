module ultrasonic_controller (

    input  logic clk,
    input  logic rst_n,

    input  logic echo,

    output logic trigger,
    output logic [15:0] distance_cm

);

logic [31:0] counter;

logic [31:0] echo_count;

logic measuring;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        trigger      <= 0;
        counter      <= 0;
        echo_count   <= 0;
        measuring    <= 0;
        distance_cm  <= 0;

    end

    else
    begin

        counter <= counter + 1;

        if(counter < 500)
            trigger <= 1'b1;
        else
            trigger <= 1'b0;

        if(echo)
        begin

            measuring  <= 1'b1;
            echo_count <= echo_count + 1;

        end

        else if(measuring)
        begin

            measuring   <= 0;
            distance_cm <= echo_count / 58;
            echo_count  <= 0;

        end

    end

end

endmodule