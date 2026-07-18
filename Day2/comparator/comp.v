module comp(
    input [1:0] A,
    input [1:0] B,
    output GT,
    output LT,
    output EQ
);

    wire nA1, nA0, nB1, nB0;
    wire eq1, eq0;
    wire gt1, gt0;
    wire lt1, lt0;
    wire wgt, wlt;

    
    not (nA1, A[1]);
    not (nA0, A[0]);
    not (nB1, B[1]);
    not (nB0, B[0]);

    
    xnor (eq1, A[1], B[1]);
    xnor (eq0, A[0], B[0]);

   
    and (gt1, A[1], nB1);
    and (gt0, A[0], nB0);
    and (wgt, eq1, gt0);
    or  (GT, gt1, wgt);

    
    and (lt1, nA1, B[1]);
    and (lt0, nA0, B[0]);
    and (wlt, eq1, lt0);
    or  (LT, lt1, wlt);

   
    and (EQ, eq1, eq0);

endmodule
