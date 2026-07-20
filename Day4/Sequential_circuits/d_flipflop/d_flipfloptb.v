module d_flipfloptb;

reg D;
reg CLK;

wire Q0;
wire Q1;

d_flipflop uut(
    .D(D),
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
    $display("Time\tCLK D | Q0 Q1");
    $monitor("%0t\t %b   %b |  %b   %b",
             $time, CLK, D, Q0, Q1);

    CLK = 0;
    D = 0;

    #10 D = 1;
    #10 D = 0;
    #10 D = 1;
    #10 D = 1;
    #10 D = 0;

    #10 $finish;
end

endmodule
