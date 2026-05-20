`ifndef MACROS_SVH
`define MACROS_SVH

// Reset macro
`define RESET_REG(reg) \
    reg <= '0;

// Pipeline register
`define PIPE_REG(clk,reg,din) \
always_ff @(posedge clk) \
begin \
    reg <= din; \
end

// Clamp macro
`define CLAMP(val,min,max) \
((val < min) ? min : ((val > max) ? max : val))

// Absolute value
`define ABS(x) \
((x < 0) ? -x : x)

// Max macro
`define MAX(a,b) \
((a > b) ? a : b)

// Min macro
`define MIN(a,b) \
((a < b) ? a : b)

`endif