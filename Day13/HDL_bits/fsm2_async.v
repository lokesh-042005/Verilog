module top_module(
    input clk,
    input areset,    
    input j,
    input k,
    output out); 

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
        case (state)
            OFF: begin
                case ({j,k})
                    2'b00: next_state = OFF;
                    2'b01: next_state = OFF;
                    2'b10: next_state = ON;
                    2'b11: next_state = ON;
                endcase
            end
            
            ON: begin
                case ({j,k})
                    2'b00: next_state = ON;
                    2'b01: next_state = OFF;
                    2'b10: next_state = ON;
                    2'b11: next_state = OFF;
                endcase
            end
        endcase
    end

    always @(posedge clk, posedge areset) begin
       
        if(areset)
            state <= OFF;
        else
            state <= next_state;
    end

  
            assign out = (state == ON);
            
endmodule

