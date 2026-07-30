module top_module(
    input clk,
    input areset,   
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
  
	parameter LEFT  = 2'd0,
             	  RIGHT = 2'd1,
             FALL_LEFT  = 2'd2,
             FALL_RIGHT = 2'd3;

    reg [1:0] state, next_state;

    
    always @(*) begin
        case(state)

            LEFT:
                if (!ground)
                    next_state = FALL_LEFT;
                else if (bump_left)
                    next_state = RIGHT;
                else
                    next_state = LEFT;

            RIGHT:
                if (!ground)
                    next_state = FALL_RIGHT;
                else if (bump_right)
                    next_state = LEFT;
                else
                    next_state = RIGHT;

            FALL_LEFT:
                if (ground)
                    next_state = LEFT;
                else
                    next_state = FALL_LEFT;

            FALL_RIGHT:
                if (ground)
                    next_state = RIGHT;
                else
                    next_state = FALL_RIGHT;

            default:
                next_state = LEFT;

        endcase
    end

   
    always @(posedge clk or posedge areset) begin
        if (areset)
            state <= LEFT;
        else
            state <= next_state;
    end

    
    assign walk_left  = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah       = (state == FALL_LEFT) || (state == FALL_RIGHT);

endmodule

