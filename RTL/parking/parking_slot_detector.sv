module parking_slot_detector (

    input  logic clk,
    input  logic rst_n,

    input  logic [7:0] edge_pixel,

    output logic parking_detected

);

logic [15:0] edge_counter;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        edge_counter <= 16'd0;

        parking_detected <= 1'b0;

    end

    else
    begin

        ////////////////////////////////////////////
        // Count Strong Edge Pixels
        ////////////////////////////////////////////

        if(edge_pixel == 8'hFF)
            edge_counter <= edge_counter + 1;
        else
            edge_counter <= 16'd0;

        ////////////////////////////////////////////
        // Parking Detection
        ////////////////////////////////////////////

        if(edge_counter > 16'd50)
            parking_detected <= 1'b1;
        else
            parking_detected <= 1'b0;

    end

end

endmodule