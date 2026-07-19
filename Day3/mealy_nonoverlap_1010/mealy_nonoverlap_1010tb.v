module mealy_nonoverlap_1010tb;

reg clk;
reg rst;
reg x;
wire y;


mealy_nonoverlap_1010 uut(
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
);


always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    x = 0;

    #10 rst = 0;

    
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 0;   

    #10 x = 1;
    #10 x = 0;   

    #20;

    $finish;
end

initial
begin
    $display("Time\tclk\trst\tx\ty");
    $monitor("%0t\t%b\t%b\t%b\t%b",
             $time, clk, rst, x, y);
end

endmodule
