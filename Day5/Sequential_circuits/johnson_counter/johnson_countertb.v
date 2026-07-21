module johnson_countertb;

reg CLK;
wire [3:0] Q0;

johnson_counter uut (
    .CLK(CLK),
    .Q0(Q0)
);

always
begin
    #5 CLK = ~CLK;
end

initial
begin
    CLK = 0;

    $dumpfile("wave.vcd");
    $dumpvars(0, johnson_countertb);

    $display("Time\tCLK\tQ0");
    $monitor("%0t\t%b\t%b", $time, CLK, Q0);

    #180;
    $finish;
end

endmodule
