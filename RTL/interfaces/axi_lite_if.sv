interface axi_lite_if #(parameter ADDR_WIDTH = 32);

    logic awvalid;
    logic awready;

    logic [ADDR_WIDTH-1:0] awaddr;

    logic wvalid;
    logic wready;

    logic [31:0] wdata;

    logic bvalid;
    logic bready;

endinterface