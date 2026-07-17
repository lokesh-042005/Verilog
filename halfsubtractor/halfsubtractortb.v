module half_subtractor_tb;

reg A,B;
wire Difference,Borrow;

half_subtractor uut(
    .A(A),
    .B(B),
    .Difference(Difference),
    .Borrow(Borrow)
);

initial
begin
    $display("A B | Difference Borrow");
    $monitor("%b %b | %b          %b",A,B,Difference,Borrow);

    A=0;B=0;
    #10 A=0;B=1;
    #10 A=1;B=0;
    #10 A=1;B=1;
    #10 $finish;
end

endmodule
