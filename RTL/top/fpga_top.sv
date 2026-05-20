module fpga_top(

    input  logic       CLOCK_50,
    input  logic       reset_n,

    input  logic [7:0] camera_r,
    input  logic [7:0] camera_g,
    input  logic [7:0] camera_b,

    output logic [7:0] led_output

);

/////////////////////////////////////////////////
// Instantiate ADAS Pipeline
/////////////////////////////////////////////////

adas_pipeline_top u_adas(

    .clk      (CLOCK_50),
    .rst_n    (reset_n),

    .r        (camera_r),
    .g        (camera_g),
    .b        (camera_b),

    .edge_out (led_output)

);

endmodule