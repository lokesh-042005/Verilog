module bcd_to_excess3tb;

reg  [3:0] BCD;
wire [3:0] EX3;


bcd_to_excess3 uut (
    .BCD(BCD),
    .EX3(EX3)
);

initial
begin
    $display("Time\tBCD\tEX3");
    $monitor("%0t\t%d\t%b", $time, BCD, EX3);

    BCD = 4'd0; #10;
    BCD = 4'd1; #10;
    BCD = 4'd2; #10;
    BCD = 4'd3; #10;
    BCD = 4'd4; #10;
    BCD = 4'd5; #10;
    BCD = 4'd6; #10;
    BCD = 4'd7; #10;
    BCD = 4'd8; #10;
    BCD = 4'd9; #10;

    $finish;
end

endmodule
