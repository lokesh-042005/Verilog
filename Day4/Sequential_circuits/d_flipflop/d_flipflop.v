module d_flipflop(
    input D,
    input CLK,
    output reg Q0,
    output Q1
);

always @(posedge CLK)
begin
    Q0 <= D;
end

assign Q1 = ~Q0;

endmodule
