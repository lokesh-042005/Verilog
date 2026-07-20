module jk_flipflop(
    input J,
    input K,
    input CLK,
    output reg Q0,
    output Q1
);

initial
begin
    Q0 = 1'b0;
end

always @(posedge CLK)
begin
    case ({J,K})

        2'b00 : Q0 <= Q0;     

        2'b01 : Q0 <= 1'b0;    

        2'b10 : Q0 <= 1'b1;    

        2'b11 : Q0 <= ~Q0;     

    endcase
end

assign Q1 = ~Q0;

endmodule
