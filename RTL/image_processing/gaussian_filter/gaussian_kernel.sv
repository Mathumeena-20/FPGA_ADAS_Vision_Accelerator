module gaussian_kernel(

    input  logic [7:0] p1,
    input  logic [7:0] p2,
    input  logic [7:0] p3,

    output logic [7:0] kernel_out

);

always_comb
begin

    kernel_out = (p1 + (2*p2) + p3) >> 2;

end

endmodule