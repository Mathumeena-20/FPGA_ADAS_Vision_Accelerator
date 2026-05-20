module distance_calculator (

    input  logic clk,
    input  logic rst_n,

    input  logic [31:0] echo_time,

    output logic [15:0] distance_cm

);

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
    begin

        distance_cm <= 0;

    end

    else
    begin

        distance_cm <= echo_time / 58;

    end

end

endmodule