module hdmi_controller(

    input  logic pixel_clk,
    input  logic reset_n,

    input  logic [7:0] red,
    input  logic [7:0] green,
    input  logic [7:0] blue,

    output logic tmds_clk_p,
    output logic tmds_clk_n,

    output logic [2:0] tmds_data_p,
    output logic [2:0] tmds_data_n

);

/////////////////////////////////////////////////
// SIMPLE HDMI PLACEHOLDER
/////////////////////////////////////////////////

assign tmds_clk_p = pixel_clk;
assign tmds_clk_n = ~pixel_clk;

assign tmds_data_p[0] = red[0];
assign tmds_data_p[1] = green[0];
assign tmds_data_p[2] = blue[0];

assign tmds_data_n = ~tmds_data_p;

endmodule