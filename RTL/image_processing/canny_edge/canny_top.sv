module canny_top(

    input  logic       clk,

    input  logic [7:0] pixel_in,

    output logic       edge_out

);

logic [7:0] gradient;

gradient_calc u_grad(

    .gx(pixel_in),
    .gy(pixel_in >> 1),

    .gradient(gradient)

);

edge_threshold u_thresh(

    .gradient(gradient),

    .edge_detect(edge_out)

);

endmodule