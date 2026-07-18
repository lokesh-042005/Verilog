module priority_encoder_8to3tb;

reg  [7:0] I;
wire [2:0] Y;

priority_encoder_8to3 uut (
    .I(I),
    .Y(Y)
);

initial
begin
    $display("Time\tInput\t\tOutput");
    $monitor("%0t\t%b\t%b", $time, I, Y);

    I = 8'b00000000; #10;
    I = 8'b00000001; #10;
    I = 8'b00000010; #10;
    I = 8'b00000100; #10;
    I = 8'b00001000; #10;
    I = 8'b00010000; #10;
    I = 8'b00100000; #10;
    I = 8'b01000000; #10;
    I = 8'b10000000; #10;

    // Multiple inputs HIGH (Priority Check)
    I = 8'b00000111; #10;
    I = 8'b00101100; #10;
    I = 8'b11111111; #10;

    $finish;
end

endmodule
