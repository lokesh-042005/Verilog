module bit8_register(
    input CLK,
    input [7:0] D,
    output reg [7:0] Q0
);

initial
begin
    Q0 = 8'b00000000;
end

always @(posedge CLK)
begin
    Q0 <= D;
end

endmodule
