`ifndef TYPEDEFS_SVH
`define TYPEDEFS_SVH

typedef logic [7:0] pixel_t;

typedef logic [23:0] rgb_t;

typedef logic [15:0] feature_t;

typedef logic [31:0] axi_data_t;

typedef struct packed {

    logic [7:0] r;
    logic [7:0] g;
    logic [7:0] b;

} rgb_pixel_t;

typedef struct packed {

    logic valid;
    logic [7:0] data;

} pixel_stream_t;

typedef enum logic [2:0] {

    IDLE,
    LOAD,
    PROCESS,
    OUTPUT,
    DONE

} state_t;

`endif