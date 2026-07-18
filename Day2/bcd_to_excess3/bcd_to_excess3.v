module bcd_to_excess3(
    input  [3:0] BCD,
    output [3:0] EX3
);

assign EX3 = BCD + 4'b0011;

endmodule
