module threshold_detector(

    input  logic       clk,

    input  logic [7:0] edge_in,

    output logic [7:0] threshold_out

);

always_ff @(posedge clk)
begin

    if(edge_in > 8'd100)
        threshold_out <= 8'hFF;
    else
        threshold_out <= 8'h00;

end

endmodule