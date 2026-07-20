module register_with_enable(
    input CLK,
    input E,
    input [3:0] D,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0000;
end

always @(posedge CLK)
begin
    if(E)
        Q0 <= D;
    else
        Q0 <= Q0;
end

endmodule
