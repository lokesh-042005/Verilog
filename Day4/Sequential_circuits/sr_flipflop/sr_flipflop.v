module sr_flipflop(
    input S,
    input R,
    input CLK,
    output Q0,
    output Q1
);

wire S1;
wire R1;

and (S1, S, CLK);
and (R1, R, CLK);

nor (Q0, R1, Q1);
nor (Q1, S1, Q0);

endmodule
