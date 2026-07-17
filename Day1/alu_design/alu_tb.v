module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] Y;
wire Carry;


alu uut(
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .Carry(Carry)
);

initial begin

$display("========== ALU USING TASK & FUNCTION ==========");
$display("Time\tSel\tA\tB\tY\tCarry");
$monitor("%0t\t%b\t%d\t%d\t%d\t%b",
          $time, sel, A, B, Y, Carry);


A=4'd5;  B=4'd3;  sel=3'b000; #10;

A=4'd9;  B=4'd4;  sel=3'b001; #10;

A=4'd10; B=4'd12; sel=3'b010; #10;

A=4'd10; B=4'd12; sel=3'b011; #10;

A=4'd10; B=4'd12; sel=3'b100; #10;

A=4'd10; B=4'd0;  sel=3'b101; #10;

A=4'd5;  B=4'd0;  sel=3'b110; #10;

A=4'd8;  B=4'd0;  sel=3'b111; #10;

$finish;

end

endmodule
