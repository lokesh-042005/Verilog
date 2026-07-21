module up_down_countertb;

reg CLK;
reg U_D;

wire [3:0] Q0;

up_down_counter uut(
    .CLK(CLK),
    .U_D(U_D),
    .Q0(Q0)
);

always
begin
    #5 CLK = ~CLK;
end

initial
begin
    $dumpfile("wave.vcd");
    $dumpvars(0, uut);

    CLK = 0;
    U_D = 1;

    $display("Time\tCLK\tU_D\tQ0");
    $monitor("%0t\t%b\t%b\t%b",$time,CLK,U_D,Q0);

    #80 U_D = 0;
    #80 U_D = 1;

    #40;
    $finish;
end

endmodule
