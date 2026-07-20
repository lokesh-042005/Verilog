module sipotb;

reg clk;
reg reset;
reg serial_in;
wire [3:0] parallel_out;


sipo uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .parallel_out(parallel_out)
);


always #5 clk = ~clk;

initial
begin
    $display("Time\tclk\treset\tserial_in\tparallel_out");
    $monitor("%0t\t%b\t%b\t%b\t\t%b",
             $time, clk, reset, serial_in, parallel_out);

    
    clk = 0;
    reset = 1;
    serial_in = 0;

    
    #10 reset = 0;

    
    #10 serial_in = 1;
    #10 serial_in = 0;
    #10 serial_in = 1;
    #10 serial_in = 1;

    
    #10 serial_in = 0;
    #10 serial_in = 0;

    #20;
    $finish;
end

endmodule
