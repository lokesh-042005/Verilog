module vending_machine(
    input clk,
    input rst,
    input I,
    input J,
    output reg X,
    output reg Y
);

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;

reg [1:0] state, next_state;


always @(posedge clk or posedge rst)
begin
    if(rst)
        state <= S0;
    else
        state <= next_state;
end


always @(*)
begin
    case(state)

   
    S0:
    begin
        case({I,J})
        2'b00: next_state = S0;
        2'b01: next_state = S1;
        2'b10: next_state = S2;
        default: next_state = S0;
        endcase
    end

    
    S1:
    begin
        case({I,J})
        2'b00: next_state = S1;
        2'b01: next_state = S2;
        2'b10: next_state = S0;
        default: next_state = S1;
        endcase
    end

    
    S2:
    begin
        case({I,J})
        2'b00: next_state = S2;
        2'b01: next_state = S0;
        2'b10: next_state = S0;
        default: next_state = S2;
        endcase
    end

    default:
        next_state = S0;

    endcase
end

always @(*)
begin

    X = 1'b0;
    Y = 1'b0;

    case(state)

    S1:
    begin
        if({I,J}==2'b10)
            X = 1'b1;
    end

    S2:
    begin
        if({I,J}==2'b01)
            X = 1'b1;

        else if({I,J}==2'b10)
        begin
            X = 1'b1;
            Y = 1'b1;
        end
    end

    endcase

end

endmodule
