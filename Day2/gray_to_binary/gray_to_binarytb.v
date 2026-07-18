module gray_to_binarytb;

reg  [3:0] gray;
wire [3:0] binary;

gray_to_binary uut (
    .gray(gray),
    .binary(binary)
);

initial
begin
    $dumpfile("gray_to_binary.vcd");
    $dumpvars(0, gray_to_binarytb);

    $display("------------------------");
    $display(" Gray | Binary");
    $display("------------------------");

    gray = 4'b0000; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0001; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0011; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0010; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0110; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0111; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0101; #10; $display(" %b | %b", gray, binary);
    gray = 4'b0100; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1100; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1101; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1111; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1110; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1010; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1011; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1001; #10; $display(" %b | %b", gray, binary);
    gray = 4'b1000; #10; $display(" %b | %b", gray, binary);

    $finish;
end

endmodule
