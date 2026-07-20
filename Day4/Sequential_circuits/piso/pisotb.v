module pisotb;

reg clk;
reg reset;
reg load;
reg [3:0] parallel_in;
wire serial_out;


piso uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .parallel_in(parallel_in),
    .serial_out(serial_out)
);


always #5 clk = ~clk;

initial
begin
    $display("Time\tclk\treset\tload\tparallel_in\tserial_out");
    $monitor("%0t\t%b\t%b\t%b\t%b\t\t%b",
             $time, clk, reset, load, parallel_in, serial_out);

    
    clk = 0;
    reset = 1;
    load = 0;
    parallel_in = 4'b0000;

   
    #10 reset = 0;

    
    #10;
    load = 1;
    parallel_in = 4'b1011;

    
    #10 load = 0;

    
    #10;
    #10;
    #10;
    #10;

    $finish;
end

endmodule
