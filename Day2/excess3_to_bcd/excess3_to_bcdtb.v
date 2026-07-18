module excess3_to_bcdtb;

reg  [3:0] EX3;
wire [3:0] BCD;


excess3_to_bcd uut (
    .EX3(EX3),
    .BCD(BCD)
);

initial
begin
    $display("Time\tEX3\tBCD");
    $monitor("%0t\t%b\t%b", $time, EX3, BCD);

    EX3 = 4'b0011; #10;   // 0
    EX3 = 4'b0100; #10;   // 1
    EX3 = 4'b0101; #10;   // 2
    EX3 = 4'b0110; #10;   // 3
    EX3 = 4'b0111; #10;   // 4
    EX3 = 4'b1000; #10;   // 5
    EX3 = 4'b1001; #10;   // 6
    EX3 = 4'b1010; #10;   // 7
    EX3 = 4'b1011; #10;   // 8
    EX3 = 4'b1100; #10;   // 9

    $finish;
end

endmodule
