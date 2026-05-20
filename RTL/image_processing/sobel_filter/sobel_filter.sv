/*module sobel_filter(

    input  logic        clk,

    input  logic [7:0]  pixel_in,

    output logic [7:0]  edge_out

);

always_ff @(posedge clk)
begin

    //////////////////////////////////////////////////
    // Simple Edge Approximation
    //////////////////////////////////////////////////

    if(pixel_in > 8'd128)

        edge_out <= 8'hFF;

    else

        edge_out <= 8'h00;

end

endmodule*/


/*module sobel_filter(

    input  logic       clk,

    input  logic [7:0] pixel_in,

    output logic [7:0] edge_out

);

/////////////////////////////////////////////////
// Internal Register
/////////////////////////////////////////////////

logic [7:0] pixel_reg;

/////////////////////////////////////////////////
// Sequential Logic
/////////////////////////////////////////////////

always_ff @(posedge clk)
begin

    pixel_reg <= pixel_in;

    //////////////////////////////////////////////////
    // Simple Threshold Edge Detection
    //////////////////////////////////////////////////

    if(pixel_reg > 8'd128)

        edge_out <= 8'hFF;

    else

        edge_out <= 8'h00;

end

endmodule*/


module sobel_filter(

    input  logic       clk,

    input  logic [7:0] pixel_in,

    output logic [7:0] edge_out

);

logic [7:0] prev_pixel;

logic [8:0] gradient;

always_ff @(posedge clk)
begin

    prev_pixel <= pixel_in;

    if(pixel_in > prev_pixel)
        gradient <= pixel_in - prev_pixel;
    else
        gradient <= prev_pixel - pixel_in;

    if(gradient > 8'd20)
        edge_out <= 8'hFF;
    else
        edge_out <= 8'h00;

end

endmodule