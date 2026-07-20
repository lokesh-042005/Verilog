module full_subtractor(
    input A,
    input B,
    input Bin,
    output Difference,
    output Borrow
);

wire d1, b1, b2;


half_subtractor HS1(
    .A(A),
    .B(B),
    .Difference(d1),
    .Borrow(b1)
);


half_subtractor HS2(
    .A(d1),
    .B(Bin),
    .Difference(Difference),
    .Borrow(b2)
);


assign Borrow = b1 | b2;

endmodule
