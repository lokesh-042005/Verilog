module full_subtractor(input A,B,Bin,output Difference,Borrow);

wire na,x1,b1,b2,b3;

xor (x1,A,B);
xor (Difference,x1,Bin);

not (na,A);

and (b1,na,B);
and (b2,na,Bin);
and (b3,B,Bin);

or (Borrow,b1,b2,b3);

endmodule
