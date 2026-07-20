module mux4to1(
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output Y
);

wire w1, w2;


mux2to1 M1(
    .I0(I0),
    .I1(I1),
    .S(S0),
    .Y(w1)
);

mux2to1 M2(
    .I0(I2),
    .I1(I3),
    .S(S0),
    .Y(w2)
);


mux2to1 M3(
    .I0(w1),
    .I1(w2),
    .S(S1),
    .Y(Y)
);

endmodule
