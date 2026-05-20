interface axi_stream_if #(parameter DATA_WIDTH = 32);

    logic tvalid;
    logic tready;

    logic [DATA_WIDTH-1:0] tdata;

    logic tlast;

endinterface