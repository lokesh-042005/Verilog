module sr_latch(
    input S,
    input R,
    output Q0,
    output Q1
);

nor (Q0, R, Q1);
nor (Q1, S, Q0);

endmodule
