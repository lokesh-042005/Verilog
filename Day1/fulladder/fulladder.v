module fulladder(input A,B,Cin,output Sum,Carry);
wire x1,c1,c2,c3;
xor(x1,A,B);
xor(Sum,x1,Cin);
and(c1,A,B);
and(c2,B,Cin);
and(c3,A,Cin);
or(Carry,c1,c2,c3);
endmodule
