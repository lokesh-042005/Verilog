module demux1to2tb;

reg I,S;
wire Y0,Y1;

demux1to2 uut(I,S,Y0,Y1);

initial begin 

$monitor("I=%b S=%b Y0=%b Y1=%b",I,S,Y0,Y1);

I=1;S=0;
#10 S=1;
#10 $finish;

end
endmodule
