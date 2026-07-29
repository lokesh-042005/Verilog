module mealy_overlap_1101_lsb (
    input clk,
    input rst,
    input x,
    output reg y
);

reg [1:0] state, next_state;


parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;


always @(posedge clk or posedge rst)
begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end


always @(*)
begin
    case(state)

        S0:
            if(x)
                next_state = S1;
            else
                next_state = S0;

        S1:
            if(x)
                next_state = S1;
            else
                next_state = S2;

        S2:
            if(x)
                next_state = S3;
            else
                next_state = S0;

        S3:
            if(x)
                next_state = S1;
            else
                next_state = S2;

        default:
            next_state = S0;

    endcase
end


always @(*)
begin
    case(state)

        S3:
            if(x)
                y = 1'b1;
            else
                y = 1'b0;

        default:
            y = 1'b0;

    endcase
end

endmodule
