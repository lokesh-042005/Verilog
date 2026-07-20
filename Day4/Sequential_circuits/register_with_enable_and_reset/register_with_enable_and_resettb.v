module register_with_enable_and_resettb;

reg clk;
reg reset;
reg enable;
reg [7:0] d;
wire [7:0] q;


register_with_enable_and_reset uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .d(d),
    .q(q)
);


always #5 clk = ~clk;

initial
begin
    $display("Time\tclk\treset\tenable\td\t\tq");
    $monitor("%0t\t%b\t%b\t%b\t%h\t%h",
             $time, clk, reset, enable, d, q);

    
    clk = 0;
    reset = 1;
    enable = 0;
    d = 8'h00;

    
    #10;
    reset = 0;

    
    #10;
    enable = 1;
    d = 8'hA5;

    
    #10;
    d = 8'h3C;

    
    #10;
    enable = 0;
    d = 8'hF0;

    
    #10;
    enable = 1;
    d = 8'h55;

    
    #10;
    reset = 1;

    
    #10;
    reset = 0;
    enable = 1;
    d = 8'hAA;

    #10;
    $finish;
end

endmodule
