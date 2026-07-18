module excess3_to_bcd(
    input  [3:0] EX3,
    output [3:0] BCD
);

assign BCD = EX3 - 4'b0011;

endmodule
