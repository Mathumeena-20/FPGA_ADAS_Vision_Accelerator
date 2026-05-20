module bounding_box(

    input  logic [9:0] x,
    input  logic [9:0] y,

    input  logic       object_detect,

    output logic [9:0] box_x,
    output logic [9:0] box_y

);

always_comb
begin

    if(object_detect)
    begin
        box_x = x;
        box_y = y;
    end

    else
    begin
        box_x = 10'd0;
        box_y = 10'd0;
    end

end

endmodule