module up_counter_4bittb;

reg CLK;
wire [3:0] Q0;

up_counter_4bit uut(
    .CLK(CLK),
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

    $display("Time\tCLK\tQ0");
    $monitor("%0t\t%b\t%b",$time,CLK,Q0);

    #170;
    $finish;
end

endmodule
