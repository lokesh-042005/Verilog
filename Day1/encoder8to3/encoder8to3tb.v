module encoder8to3_tb;

reg D0,D1,D2,D3,D4,D5,D6,D7;
wire Y2,Y1,Y0;

encoder8to3 uut(
D0,D1,D2,D3,D4,D5,D6,D7,
Y2,Y1,Y0);

initial begin

$monitor("%b%b%b",Y2,Y1,Y0);

D0=1;D1=0;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;
#10;

D0=0;D1=1;D2=0;D3=0;D4=0;D5=0;D6=0;D7=0;
#10;

D0=0;D1=0;D2=1;D3=0;D4=0;D5=0;D6=0;D7=0;
#10;

D0=0;D1=0;D2=0;D3=1;D4=0;D5=0;D6=0;D7=0;
#10;

D0=0;D1=0;D2=0;D3=0;D4=1;D5=0;D6=0;D7=0;
#10;

D0=0;D1=0;D2=0;D3=0;D4=0;D5=1;D6=0;D7=0;
#10;

D0=0;D1=0;D2=0;D3=0;D4=0;D5=0;D6=1;D7=0;
#10;

D0=0;D1=0;D2=0;D3=0;D4=0;D5=0;D6=0;D7=1;
#10;

$finish;

end

endmodule
