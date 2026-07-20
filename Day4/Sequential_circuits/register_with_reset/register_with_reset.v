module register_with_reset(
    input CLK,
    input RST,
    input [3:0] D,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0000;
end

always @(posedge CLK)
begin
    if(RST)
        Q0 <= 4'b0000;
    else
        Q0 <= D;
end

endmodule
