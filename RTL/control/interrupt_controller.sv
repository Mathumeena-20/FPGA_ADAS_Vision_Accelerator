module interrupt_controller(

    input  logic clk,
    input  logic rst_n,

    input  logic event_detect,

    output logic interrupt

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        interrupt <= 0;

    else if(event_detect)
        interrupt <= 1'b1;

end

endmodule