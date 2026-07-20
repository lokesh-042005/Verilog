module t_flipflop(
    input T,
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
    if(T)
        Q0 <= ~Q0;
    else
        Q0 <= Q0;
end

assign Q1 = ~Q0;

endmodule
