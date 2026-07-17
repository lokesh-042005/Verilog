module demux1to4(
input I,
input S1,
input S0,
output Y0,
output Y1,
output Y2,
output Y3
);

wire nS1,nS0;

not(nS1,S1);
not(nS0,S0);

and(Y0,I,nS1,nS0);
and(Y1,I,nS1,S0);
and(Y2,I,S1,nS0);
and(Y3,I,S1,S0);

endmodule
