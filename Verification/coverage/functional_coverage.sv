module functional_coverage(

    input logic       clk,

    input logic [7:0] pixel_in,

    input logic [7:0] edge_out

);

/////////////////////////////////////////////////
// Covergroup
/////////////////////////////////////////////////

covergroup sobel_cov @(posedge clk);

    //////////////////////////////////////////////////
    // Pixel Coverage
    //////////////////////////////////////////////////

    PIXEL_VALUES : coverpoint pixel_in
    {
        bins low    = {[0:50]};
        bins medium = {[51:150]};
        bins high   = {[151:255]};
    }

    //////////////////////////////////////////////////
    // Edge Coverage
    //////////////////////////////////////////////////

    EDGE_VALUES : coverpoint edge_out
    {
        bins zero_edge   = {0};
        bins small_edge  = {[1:50]};
        bins medium_edge = {[51:150]};
        bins large_edge  = {[151:255]};
    }

endgroup

/////////////////////////////////////////////////
// Create Coverage Instance
/////////////////////////////////////////////////

sobel_cov cov_inst = new();

endmodule