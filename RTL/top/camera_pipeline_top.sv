module camera_pipeline_top(

    input  logic       clk,
    input  logic       rst_n,

    input  logic [7:0] cam_r,
    input  logic [7:0] cam_g,
    input  logic [7:0] cam_b,

    output logic [7:0] processed_pixel

);

/////////////////////////////////////////////////
// Internal Signals
/////////////////////////////////////////////////

logic [7:0] gray_data;
logic [7:0] blur_data;

/////////////////////////////////////////////////
// RGB to Gray
/////////////////////////////////////////////////

rgb2gray u_gray(

    .clk  (clk),

    .r    (cam_r),
    .g    (cam_g),
    .b    (cam_b),

    .gray (gray_data)

);

/////////////////////////////////////////////////
// Gaussian Filter
/////////////////////////////////////////////////

gaussian_filter u_gaussian(

    .clk       (clk),

    .pixel_in  (gray_data),

    .pixel_out (blur_data)

);

/////////////////////////////////////////////////
// Sobel Filter
/////////////////////////////////////////////////

sobel_filter u_sobel(

    .clk      (clk),

    .pixel_in (blur_data),

    .edge_out (processed_pixel)

);

endmodule