module error_monitor(

    input  logic       valid_signal,

    output logic       error_flag

);

always_comb
begin

    if(valid_signal == 0)
        error_flag = 1'b1;

    else
        error_flag = 1'b0;

end

endmodule