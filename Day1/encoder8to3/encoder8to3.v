module encoder8to3(
input D0,D1,D2,D3,D4,D5,D6,D7,
output Y2,Y1,Y0
);

or(Y2,D4,D5,D6,D7);

or(Y1,D2,D3,D6,D7);

or(Y0,D1,D3,D5,D7);

endmodule
