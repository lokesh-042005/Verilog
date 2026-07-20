module registerstb;

reg CLK;
reg [3:0] D;

wire [3:0] Q0;

registers uut(
    .CLK(CLK),
    .D(D),
    .Q0(Q0)
);

always
begin
    #5 CLK = ~CLK;
end

initial
begin
    CLK = 0;
    D = 4'b0000;

    $display("Time\tCLK\tD\tQ0");
    $monitor("%0t\t%b\t%b\t%b",
             $time, CLK, D, Q0);

    #10 D = 4'b1010;
    #10 D = 4'b1100;
    #10 D = 4'b0111;
    #10 D = 4'b1111;
    #10 D = 4'b0001;

    #20 $finish;
end

endmodule
