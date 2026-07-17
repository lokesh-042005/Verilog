module mux2to1_tb;

reg A,B,S;
wire Y;

mux2to1 uut(
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial
begin
    $display("A B S | Y");
    $monitor("%b %b %b | %b",A,B,S,Y);

    A=0;B=1;S=0;
    #10 A=0;B=1;S=1;
    #10 A=1;B=0;S=0;
    #10 A=1;B=0;S=1;
    #10 $finish;
end

endmodule
