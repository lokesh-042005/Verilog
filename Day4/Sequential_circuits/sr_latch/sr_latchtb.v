module sr_latchtb;

reg S;
reg R;

wire Q0;
wire Q1;

sr_latch uut(
    .S(S),
    .R(R),
    .Q0(Q0),
    .Q1(Q1)
);

initial
begin
    $display("Time\tS R | Q0 Q1");
    $monitor("%0t\t%b %b | %b  %b",
             $time, S, R, Q0, Q1);

    
    S = 0; R = 0;
    #10;

    
    S = 1; R = 0;
    #10;

    
    S = 0; R = 0;
    #10;

    
    S = 0; R = 1;
    #10;

    
    S = 0; R = 0;
    #10;

    
    S = 1; R = 1;
    #10;

    
    S = 0; R = 0;
    #10;

    $finish;
end

endmodule
