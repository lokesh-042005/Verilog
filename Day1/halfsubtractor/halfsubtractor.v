module half_subtractor(input A,B,output Difference,Borrow);

wire na;

xor (Difference,A,B);
not (na,A);
and (Borrow,na,B);

endmodule
