module system_controller(

    input  logic clk,
    input  logic rst_n,

    input  logic start,

    output logic done

);

typedef enum logic [1:0] {

    IDLE,
    RUN,
    COMPLETE

} state_t;

state_t state;

always_ff @(posedge clk or negedge rst_n)
begin

    if(!rst_n)
        state <= IDLE;

    else
    begin

        case(state)

            IDLE:
            begin
                done <= 0;

                if(start)
                    state <= RUN;
            end

            RUN:
            begin
                state <= COMPLETE;
            end

            COMPLETE:
            begin
                done <= 1;
            end

        endcase

    end

end

endmodule