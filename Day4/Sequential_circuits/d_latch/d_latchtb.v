module d_latchtb;

reg D;
reg E;

wire Q0;
wire Q1;

d_latch uut(
    .D(D),
    .E(E),
    .Q0(Q0),
    .Q1(Q1)
);

initial
begin
    $display("Time\tE D | Q0 Q1");
    $monitor("%0t\t %b %b |  %b   %b",
             $time, E, D, Q0, Q1);

    
    E = 0; D = 0;
    #10;
    
    E = 1; D = 1;
    #10;
    
    E = 0; D = 0;
    #10;
    
    E = 1; D = 0;
    #10;
    
    E = 0; D = 1;
    #10;

    E = 1; D = 1;
    #10;

    $finish;
end

endmodule
