module demux1to2(input I,S,output Y0,Y1);

wire nS;

not(nS,S);
and(Y0,I,nS);
and(Y1,I,S);

endmodule
