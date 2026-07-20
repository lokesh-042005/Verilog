module pipotb;

reg clk;
reg reset;
reg [3:0] parallel_in;
wire [3:0] parallel_out;


pipo uut (
    .clk(clk),
    .reset(reset),
    .parallel_in(parallel_in),
    .parallel_out(parallel_out)
);


always #5 clk = ~clk;

initial
begin
    $display("Time\tclk\treset\tparallel_in\tparallel_out");
    $monitor("%0t\t%b\t%b\t%b\t\t%b",
             $time, clk, reset, parallel_in, parallel_out);

  
    clk = 0;
    reset = 1;
    parallel_in = 4'b0000;

    
    #10 reset = 0;

   
    #10 parallel_in = 4'b1010;

    
    #10 parallel_in = 4'b1101;

    
    #10 parallel_in = 4'b0111;

  
    #10 reset = 1;

    
    #10;
    reset = 0;
    parallel_in = 4'b1111;

    #10;
    $finish;
end

endmodule
