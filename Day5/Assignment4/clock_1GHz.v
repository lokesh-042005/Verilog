`timescale 1us/1ps

module clock_1GHz;

reg clk;

initial
begin
    clk = 1'b0;
    forever
        #0.0005 clk = ~clk;   
end

endmodule
