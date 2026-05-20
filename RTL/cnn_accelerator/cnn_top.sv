module cnn_top(

    input  logic       clk,

    input  logic [7:0] pixel_in,
    input  logic [7:0] weight,

    output logic [15:0] cnn_out

);

logic [15:0] conv_data;
logic signed [15:0] relu_data;

conv_engine u_conv(

    .clk(clk),

    .pixel_in(pixel_in),
    .weight(weight),

    .conv_out(conv_data)

);

relu u_relu(

    .data_in(conv_data),

    .data_out(relu_data)

);

assign cnn_out = relu_data;

endmodule