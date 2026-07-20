module register_with_enabletb;

reg CLK;
reg E;
reg [3:0] D;

wire [3:0] Q0;

register_with_enable uut(
    .CLK(CLK),
    .E(E),
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
    E = 0;
    D = 4'b0000;

    $display("Time\tCLK E\tD\tQ0");
    $monitor("%0t\t%b   %b\t%b\t%b",
             $time, CLK, E, D, Q0);

    // Enable = 1 → Load 1010
    #10 E = 1; D = 4'b1010;

    // Enable = 0 → Hold 1010
    #10 E = 0; D = 4'b1111;

    // Enable = 1 → Load 0101
    #10 E = 1; D = 4'b0101;

    // Enable = 0 → Hold 0101
    #10 E = 0; D = 4'b0011;

    // Enable = 1 → Load 1100
    #10 E = 1; D = 4'b1100;

    #20 $finish;
end

endmodule
