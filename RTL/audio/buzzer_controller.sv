module buzzer_controller (

    input  logic clk,
    input  logic rst_n,

    input  logic enable,

    output logic buzzer_out

);

logic [23:0] counter;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin
        counter    <= 0;
        buzzer_out <= 0;
    end

    else if(enable)
    begin

        counter <= counter + 1;

        if(counter == 500000)
        begin
            buzzer_out <= ~buzzer_out;
            counter <= 0;
        end

    end

    else
    begin
        buzzer_out <= 0;
        counter <= 0;
    end

end

endmodule