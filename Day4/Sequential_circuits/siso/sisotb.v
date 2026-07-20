module sisotb;

reg clk;
reg reset;
reg serial_in;
wire serial_out;


siso uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .serial_out(serial_out)
);


always #5 clk = ~clk;

initial
begin
    $display("Time\tclk\treset\tserial_in\tserial_out");
    $monitor("%0t\t%b\t%b\t%b\t\t%b",
             $time, clk, reset, serial_in, serial_out);

    
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
    #10 serial_in = 0;
    #10 serial_in = 0;

    #10;
    $finish;
end

endmodule
