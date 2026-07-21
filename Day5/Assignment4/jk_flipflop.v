`define HOLD   2'b00
`define RESET  2'b01
`define SET    2'b10
`define TOGGLE 2'b11

module jk_flipflop (
    input clk,
    input J,
    input K,
    output reg Q
);

always @(posedge clk)
begin
    case ({J, K})
        `HOLD:   Q <= Q;      
        `RESET:  Q <= 1'b0;   
        `SET:    Q <= 1'b1;   
        `TOGGLE: Q <= ~Q;     
        default: Q <= Q;
    endcase
end

endmodule
