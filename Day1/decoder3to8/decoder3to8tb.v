module decoder2to4_tb;

reg A,B;
wire Y0,Y1,Y2,Y3;

decoder2to4 uut(A,B,Y0,Y1,Y2,Y3);

initial
begin

$monitor("%b %b -> %b %b %b %b",
A,B,Y0,Y1,Y2,Y3);

A=0;B=0;
#10;

A=0;B=1;
#10;

A=1;B=0;
#10;

A=1;B=1;
#10;

$finish;

end

endmodule
