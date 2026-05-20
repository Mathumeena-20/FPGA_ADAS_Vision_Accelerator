module vga_controller(

    input  logic clk,
    input  logic reset_n,

    output logic hsync,
    output logic vsync,

    output logic [7:0] red,
    output logic [7:0] green,
    output logic [7:0] blue

);

/////////////////////////////////////////////////
// VGA TIMING
/////////////////////////////////////////////////

logic [9:0] hcount;
logic [9:0] vcount;

always_ff @(posedge clk or negedge reset_n)
begin

    if(!reset_n)
    begin

        hcount <= 0;
        vcount <= 0;

    end

    else
    begin

        if(hcount == 799)
        begin

            hcount <= 0;

            if(vcount == 524)

                vcount <= 0;

            else

                vcount <= vcount + 1;

        end

        else

            hcount <= hcount + 1;

    end

end

/////////////////////////////////////////////////
// HSYNC
/////////////////////////////////////////////////

assign hsync =
~((hcount >= 656) && (hcount < 752));

/////////////////////////////////////////////////
// VSYNC
/////////////////////////////////////////////////

assign vsync =
~((vcount >= 490) && (vcount < 492));

/////////////////////////////////////////////////
// SIMPLE COLOR PATTERN
/////////////////////////////////////////////////

always_comb
begin

    if(hcount < 640 && vcount < 480)
    begin

        red   = hcount[7:0];
        green = vcount[7:0];
        blue  = 8'hFF;

    end

    else
    begin

        red   = 0;
        green = 0;
        blue  = 0;

    end

end

endmodule