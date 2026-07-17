module halfadder(input A,B,output Sum,Carry);
xor(Sum,A,B);
and(Carry,A,B);
endmodule
