module encoder4to2_tb;

reg D0,D1,D2,D3;
wire Y1,Y0;

encoder4to2 uut(D0,D1,D2,D3,Y1,Y0);

initial begin

$monitor("%b %b %b %b -> %b%b",
D0,D1,D2,D3,Y1,Y0);

D0=1;D1=0;D2=0;D3=0;
#10;

D0=0;D1=1;D2=0;D3=0;
#10;

D0=0;D1=0;D2=1;D3=0;
#10;

D0=0;D1=0;D2=0;D3=1;
#10;

$finish;

end

endmodule
