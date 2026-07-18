module binary_to_graytb;

    reg  [3:0] B;
    wire [3:0] G;

    
    binary_to_gray uut (
        .B(B),
        .G(G)
    );

    initial begin

        $dumpfile("binary_to_gray.vcd");
        $dumpvars(0, binary_to_graytb);

        $display(" Binary | Gray ");
        $display("----------------");

        B = 4'b0000; #10; $display("  %b   | %b", B, G);
        B = 4'b0001; #10; $display("  %b   | %b", B, G);
        B = 4'b0010; #10; $display("  %b   | %b", B, G);
        B = 4'b0011; #10; $display("  %b   | %b", B, G);
        B = 4'b0100; #10; $display("  %b   | %b", B, G);
        B = 4'b0101; #10; $display("  %b   | %b", B, G);
        B = 4'b0110; #10; $display("  %b   | %b", B, G);
        B = 4'b0111; #10; $display("  %b   | %b", B, G);
        B = 4'b1000; #10; $display("  %b   | %b", B, G);
        B = 4'b1001; #10; $display("  %b   | %b", B, G);
        B = 4'b1010; #10; $display("  %b   | %b", B, G);
        B = 4'b1011; #10; $display("  %b   | %b", B, G);
        B = 4'b1100; #10; $display("  %b   | %b", B, G);
        B = 4'b1101; #10; $display("  %b   | %b", B, G);
        B = 4'b1110; #10; $display("  %b   | %b", B, G);
        B = 4'b1111; #10; $display("  %b   | %b", B, G);

        $finish;

    end

endmodule
