module d_latch(
    input D,
    input E,
    output Q0,
    output Q1
);

wire D_bar;
wire S;
wire R;

not (D_bar, D);

and (S, D, E);
and (R, D_bar, E);

nor (Q0, R, Q1);
nor (Q1, S, Q0);

endmodule
