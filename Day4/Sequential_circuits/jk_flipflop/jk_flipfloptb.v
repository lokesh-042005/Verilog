module jk_flipfloptb;

reg J;
reg K;
reg CLK;

wire Q0;
wire Q1;

jk_flipflop uut(
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q0(Q0),
    .Q1(Q1)
);

always
begin
    #5 CLK = ~CLK;
end

initial
begin
    CLK = 0;
    J = 0;
    K = 0;

    $display("Time\tCLK J K | Q0 Q1");
    $monitor("%0t\t %b   %b %b |  %b   %b",
             $time, CLK, J, K, Q0, Q1);

    
    #10 J = 0; K = 0;
    
    #10 J = 1; K = 0;
    
    #10 J = 0; K = 1;
    
    #10 J = 1; K = 1;
    
    #20 J = 1; K = 1;

    #20 J = 0; K = 0;

    #20 $finish;
end

endmodule
