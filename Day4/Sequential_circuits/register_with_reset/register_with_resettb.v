module register_with_resettb;

reg CLK;
reg RST;
reg [3:0] D;

wire [3:0] Q0;

register_with_reset uut(
    .CLK(CLK),
    .RST(RST),
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
    RST = 0;
    D = 4'b0000;

    $display("Time\tCLK RST\tD\tQ0");
    $monitor("%0t\t%b   %b\t%b\t%b",
             $time, CLK, RST, D, Q0);

  
    #10 D = 4'b1010;

  
    #10 D = 4'b1100;

    
    #10 RST = 1;

    
    #10 RST = 0;
         D = 4'b0110;

  
    #10 D = 4'b1111;

    #20 $finish;
end

endmodule
