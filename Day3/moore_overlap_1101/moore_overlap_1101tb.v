module moore_overlap_1101tb;

reg clk;
reg rst;
reg x;
wire y;


moore_overlap_1101 uut (
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

    
    #10;
    rst = 0;

    

    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;

    #10 x = 1;
    #10 x = 0;
    #10 x = 1;

    #20;

    $finish;
end


initial
begin
    $display("Time\tclk\trst\tx\ty");
end


always @(posedge clk)
begin
    $display("%0t\t%b\t%b\t%b\t%b",
             $time, clk, rst, x, y);
end

endmodule
