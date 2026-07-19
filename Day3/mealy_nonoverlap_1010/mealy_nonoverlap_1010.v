module mealy_nonoverlap_1010(
    input clk,
    input rst,
    input x,
    output reg y
);


parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

reg [1:0] present_state, next_state;


always @(posedge clk or posedge rst)
begin
    if (rst)
        present_state <= S0;
    else
        present_state <= next_state;
end


always @(*)
begin
    case (present_state)

        S0:
            if (x)
                next_state = S1;
            else
                next_state = S0;

        S1:
            if (x)
                next_state = S1;
            else
                next_state = S2;

        S2:
            if (x)
                next_state = S3;
            else
                next_state = S0;

        S3:
            if (x)
                next_state = S1;
            else
                next_state = S0;   

        default:
            next_state = S0;

    endcase
end


always @(*)
begin
    y = 0;

    case (present_state)
        S3:
            if (x == 0)
                y = 1;
        default:
            y = 0;
    endcase
end

endmodule
