module mux2to1(input A,B,S,output Y);

wire ns,w1,w2;

not(ns,S);
and(w1,A,ns);
and(w2,B,S);
or(Y,w1,w2);

endmodule
