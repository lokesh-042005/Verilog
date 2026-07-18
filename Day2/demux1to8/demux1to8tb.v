module demux1to8tb;

reg I;
reg [2:0] S;
wire [7:0] Y;


demux1to8 uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial
begin
    $display("Time\tI\tS\tY");
    $monitor("%0t\t%b\t%b\t%b", $time, I, S, Y);

    I = 1'b1;

    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    $finish;
end

endmodule
