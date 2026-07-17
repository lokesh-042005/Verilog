module decoder2to4(input A,B,output Y0,Y1,Y2,Y3);

wire na,nb;

not(na,A);
not(nb,B);

and(Y0,na,nb);
and(Y1,na,B);
and(Y2,A,nb);
and(Y3,A,B);

endmodule
