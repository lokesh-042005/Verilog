module registers(
    input CLK,
    input [3:0] D,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0000;
end

always @(posedge CLK)
begin
    Q0 <= D;
end

endmodule
