module bit8_registertb;

reg CLK;
reg [7:0] D;

wire [7:0] Q0;

bit8_register uut(
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
    D = 8'b00000000;

    $display("Time\tCLK\tD\t\tQ0");
    $monitor("%0t\t%b\t%b\t%b",
             $time, CLK, D, Q0);

    #10 D = 8'b10101010;
    #10 D = 8'b11110000;
    #10 D = 8'b00001111;
    #10 D = 8'b11001100;
    #10 D = 8'b11111111;
    #10 D = 8'b00000001;

    #20 $finish;
end

endmodule
