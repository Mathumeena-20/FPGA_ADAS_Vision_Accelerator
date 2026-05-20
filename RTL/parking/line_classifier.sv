module line_classifier (

    input  logic clk,
    input  logic rst_n,

    input  logic [9:0] line_angle,

    output logic vertical_line,
    output logic horizontal_line

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        vertical_line   <= 0;
        horizontal_line <= 0;

    end

    else
    begin

        if(line_angle > 80 && line_angle < 100)
        begin
            vertical_line   <= 1'b1;
            horizontal_line <= 1'b0;
        end

        else if(line_angle < 10)
        begin
            vertical_line   <= 1'b0;
            horizontal_line <= 1'b1;
        end

        else
        begin
            vertical_line   <= 1'b0;
            horizontal_line <= 1'b0;
        end

    end

end

endmodule