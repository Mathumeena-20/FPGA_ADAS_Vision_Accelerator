module pwm_generator(

    input  logic clk,

    input  logic enable,

    output logic pwm_out

);

logic [7:0] counter;

always_ff @(posedge clk)
begin

    counter <= counter + 1;

    if(enable)
        pwm_out <= counter[7];
    else
        pwm_out <= 1'b0;

end

endmodule