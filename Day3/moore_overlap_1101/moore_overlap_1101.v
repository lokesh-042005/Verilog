module moore_overlap_1101(
    input clk,
    input rst,
    input x,
    output reg y
);


parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100;

reg [2:0] present_state, next_state;


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
        begin
            if (x)
                next_state = S1;
            else
                next_state = S0;
        end

        S1:
        begin
            if (x)
                next_state = S2;
            else
                next_state = S0;
        end

        S2:
        begin
            if (x)
                next_state = S2;
            else
                next_state = S3;
        end

        S3:
        begin
            if (x)
                next_state = S4;
            else
                next_state = S0;
        end

        S4:
        begin
            if (x)
                next_state = S2;   
            else
                next_state = S0;
        end

        default:
            next_state = S0;

    endcase
end


always @(*)
begin
    case (present_state)
        S4: y = 1;
        default: y = 0;
    endcase
end

endmodule
