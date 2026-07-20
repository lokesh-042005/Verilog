module sr_flipfloptb;

reg S;
reg R;
reg CLK;

wire Q0;
wire Q1;

sr_flipflop uut(
    .S(S),
    .R(R),
    .CLK(CLK),
    .Q0(Q0),
    .Q1(Q1)
);

initial
begin
    $display("CLK S R | Q0 Q1");
    $monitor("%b   %b %b |  %b   %b",
              CLK, S, R, Q0, Q1);

   
    CLK = 0; S = 0; R = 0;
    #10;

    
    CLK = 1; S = 1; R = 0;
    #10;

    
    S = 0; R = 0;
    #10;

    
    S = 0; R = 1;
    #10;

    
    S = 0; R = 0;
    #10;

    
    S = 1; R = 1;
    #10;

    $finish;
end

endmodule
