module adaptive_threshold(

    input  logic        clk,
    input  logic [7:0]  pixel_in,

    output logic [7:0]  threshold_out

);

/////////////////////////////////////////////////
// Internal Signals
/////////////////////////////////////////////////

logic [7:0] avg_value;

/////////////////////////////////////////////////
// Adaptive Threshold Logic
/////////////////////////////////////////////////

always_ff @(posedge clk)
begin

    // Simple adaptive average
    avg_value <= pixel_in >> 1;

    // Compare pixel value
    if(pixel_in > avg_value)
        threshold_out <= 8'hFF;
    else
        threshold_out <= 8'h00;

end

endmodule