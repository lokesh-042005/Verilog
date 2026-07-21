module up_counter_2bit(
    input CLK,
    output reg [1:0] Q0
);

initial
begin
    Q0 = 2'b00;
end

always @(posedge CLK)
begin
    Q0 <= Q0 + 1;
end

endmodule
