module top_module(
    input clk,
    input areset,
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging );

    parameter LEFT     = 3'd0,
              RIGHT    = 3'd1,
              FALL_L   = 3'd2,
              FALL_R   = 3'd3,
              DIG_L    = 3'd4,
              DIG_R    = 3'd5,
              SPLAT    = 3'd6;

    reg [2:0] state, next;
    reg [4:0] cnt;

    // Falling counter
    always @(posedge clk) begin
        if ((next == FALL_L) || (next == FALL_R))
            cnt <= (cnt == 5'd21) ? cnt : cnt + 1'b1;
        else
            cnt <= 5'd0;
    end

    // State register
    always @(posedge clk or posedge areset) begin
        if (areset)
            state <= LEFT;
        else
            state <= next;
    end

    // Next-state logic
    always @(*) begin
        case (state)

            LEFT:
                casez ({ground,dig,bump_left,bump_right})
                    4'b0???: next = FALL_L;
                    4'b11??: next = DIG_L;
                    4'b101?: next = RIGHT;
                    4'b100?: next = LEFT;
                    default: next = state;
                endcase

            RIGHT:
                casez ({ground,dig,bump_left,bump_right})
                    4'b0???: next = FALL_R;
                    4'b11??: next = DIG_R;
                    4'b10?1: next = LEFT;
                    4'b10?0: next = RIGHT;
                    default: next = state;
                endcase

            FALL_L:
                if (cnt == 5'd21 && ground)
                    next = SPLAT;
                else
                    casez ({ground,dig,bump_left,bump_right})
                        4'b1???: next = LEFT;
                        default: next = FALL_L;
                    endcase

            FALL_R:
                if (cnt == 5'd21 && ground)
                    next = SPLAT;
                else
                    casez ({ground,dig,bump_left,bump_right})
                        4'b1???: next = RIGHT;
                        default: next = FALL_R;
                    endcase

            DIG_L:
                casez ({ground,dig,bump_left,bump_right})
                    4'b0???: next = FALL_L;
                    default: next = DIG_L;
                endcase

            DIG_R:
                casez ({ground,dig,bump_left,bump_right})
                    4'b0???: next = FALL_R;
                    default: next = DIG_R;
                endcase

            SPLAT:
                next = SPLAT;

            default:
                next = LEFT;
        endcase
    end

    // Output logic
    assign walk_left  = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah       = (state == FALL_L) || (state == FALL_R);
    assign digging    = (state == DIG_L) || (state == DIG_R);

endmodule        
