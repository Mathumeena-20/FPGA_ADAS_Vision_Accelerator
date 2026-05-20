module watchdog_timer(

    input  logic clk,
    input  logic rst_n,

    input  logic refresh,

    output logic timeout

);

logic [31:0] counter;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin
        counter <= 0;
        timeout <= 0;
    end

    else
    begin

        if(refresh)
            counter <= 0;

        else
            counter <= counter + 1;

        if(counter > 100000)
            timeout <= 1'b1;

    end

end

endmodule