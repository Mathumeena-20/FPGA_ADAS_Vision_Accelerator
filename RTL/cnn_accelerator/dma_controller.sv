module dma_controller(

    input  logic       clk,
    input  logic       start,

    output logic       busy,
    output logic       done

);

always_ff @(posedge clk)
begin

    if(start)
    begin
        busy <= 1'b1;
        done <= 1'b0;
    end

    else
    begin
        busy <= 1'b0;
        done <= 1'b1;
    end

end

endmodule