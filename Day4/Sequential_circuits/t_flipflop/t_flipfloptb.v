module t_flipfloptb;

reg T;
reg CLK;

wire Q0;
wire Q1;

t_flipflop uut(
    .T(T),
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
    T = 0;

    $display("Time\tCLK T | Q0 Q1");
    $monitor("%0t\t %b   %b |  %b   %b",
              $time, CLK, T, Q0, Q1);

    #10 T = 1;
    #10 T = 0;
    #10 T = 1;
    #20 T = 0;
    #10 T = 1;

    #20 $finish;
end

endmodule
