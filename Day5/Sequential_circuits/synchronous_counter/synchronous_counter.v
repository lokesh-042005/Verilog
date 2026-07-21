module synchronous_counter(
    input CLK,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0000;
end

always @(posedge CLK)
begin
    Q0 <= Q0 + 1;
end

endmodule
