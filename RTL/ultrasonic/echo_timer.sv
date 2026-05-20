module echo_timer (

    input  logic clk,
    input  logic rst_n,

    input  logic echo,

    output logic [31:0] echo_time

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        echo_time <= 0;

    end

    else
    begin

        if(echo)
            echo_time <= echo_time + 1;
        else
            echo_time <= 0;

    end

end

endmodule