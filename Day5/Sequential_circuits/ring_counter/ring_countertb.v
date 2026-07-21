module ring_countertb;

reg CLK;
wire [3:0] Q0;

ring_counter uut(
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
    $monitor("%0t\t%b\t%b", $time, CLK, Q0);

    #100;
    $finish;
end

endmodule
