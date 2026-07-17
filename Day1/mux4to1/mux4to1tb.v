module mux4to1_tb;

reg I0,I1,I2,I3,S1,S0;
wire Y;

mux4to1 uut(I0,I1,I2,I3,S1,S0,Y);

initial begin
    $monitor("I0=%b I1=%b I2=%b I3=%b S1=%b S0=%b Y=%b",
              I0,I1,I2,I3,S1,S0,Y);

    I0=0; I1=1; I2=0; I3=1;

    S1=0; S0=0;
    #10 S1=0; S0=1;
    #10 S1=1; S0=0;
    #10 S1=1; S0=1;

    #10 $finish;
end

endmodule
