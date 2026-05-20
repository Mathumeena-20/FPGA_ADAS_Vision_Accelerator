module performance_counter(

    input  logic clk,
    input  logic rst_n,

    input  logic enable,

    output logic [31:0] cycle_count

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        cycle_count <= 0;

    else if(enable)
        cycle_count <= cycle_count + 1;

end

endmodule