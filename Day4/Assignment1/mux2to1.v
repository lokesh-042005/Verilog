module mux2to1(
    input I0,
    input I1,
    input S,
    output Y
);

wire w1, w2, s1;

not G1(s1, S);
and G2(w1, I0, s1);
and G3(w2, I1, S);
or  G4(Y, w1, w2);

endmodule
