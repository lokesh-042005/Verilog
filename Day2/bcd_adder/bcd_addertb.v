module bcd_addertb;

reg  [3:0] A;
reg  [3:0] B;
reg  Cin;

wire [3:0] Sum;
wire Cout;


bcd_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial
begin
    $display("Time\tA\tB\tCin\tSum\tCout");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
             $time, A, B, Cin, Sum, Cout);

    A = 4'd2; B = 4'd3; Cin = 0; #10;   // 2+3=5
    A = 4'd4; B = 4'd5; Cin = 0; #10;   // 4+5=9
    A = 4'd5; B = 4'd6; Cin = 0; #10;   // 5+6=11
    A = 4'd8; B = 4'd7; Cin = 0; #10;   // 8+7=15
    A = 4'd9; B = 4'd9; Cin = 0; #10;   // 9+9=18
    A = 4'd3; B = 4'd4; Cin = 1; #10;   // 3+4+1=8

    $finish;
end

endmodule
