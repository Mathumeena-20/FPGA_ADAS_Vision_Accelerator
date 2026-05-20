module relu(

    input  logic signed [15:0] data_in,

    output logic signed [15:0] data_out

);

always_comb
begin

    if(data_in < 0)
        data_out = 0;
    else
        data_out = data_in;

end

endmodule