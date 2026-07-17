module full_subtractor_tb;

reg A,B,Bin;
wire Difference,Borrow;

full_subtractor uut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Borrow(Borrow)
);

initial
begin
    $display("A B Bin | Difference Borrow");
    $monitor("%b %b %b | %b          %b",A,B,Bin,Difference,Borrow);

    A=0;B=0;Bin=0;
    #10 A=0;B=0;Bin=1;
    #10 A=0;B=1;Bin=0;
    #10 A=0;B=1;Bin=1;
    #10 A=1;B=0;Bin=0;
    #10 A=1;B=0;Bin=1;
    #10 A=1;B=1;Bin=0;
    #10 A=1;B=1;Bin=1;
    #10 $finish;
end

endmodule
