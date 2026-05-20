module signal_monitor(

    input  logic signal_in,

    output logic signal_status

);

always_comb
begin

    signal_status = signal_in;

end

endmodule