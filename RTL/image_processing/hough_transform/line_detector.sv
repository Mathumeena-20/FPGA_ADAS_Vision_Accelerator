module line_detector(

    input  logic [15:0] acc_value,

    output logic        line_detected

);

parameter LINE_THRESHOLD = 100;

always_comb
begin

    if(acc_value > LINE_THRESHOLD)
        line_detected = 1'b1;
    else
        line_detected = 1'b0;

end

endmodule