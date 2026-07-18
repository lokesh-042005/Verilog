module comparator_2bit_tb;

   
    reg [1:0] A;
    reg [1:0] B;

    
    wire GT;
    wire LT;
    wire EQ;

    
    comparator_2bit uut (
        .A(A),
        .B(B),
        .GT(GT),
        .LT(LT),
        .EQ(EQ)
    );

    
    initial begin

        $display(" A  B | GT LT EQ");
        $display("-----------------");

        A = 2'b00; B = 2'b00; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b00; B = 2'b01; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b00; B = 2'b10; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b00; B = 2'b11; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b01; B = 2'b00; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b01; B = 2'b01; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b01; B = 2'b10; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b01; B = 2'b11; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b10; B = 2'b00; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b10; B = 2'b01; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b10; B = 2'b10; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b10; B = 2'b11; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b11; B = 2'b00; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b11; B = 2'b01; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b11; B = 2'b10; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        A = 2'b11; B = 2'b11; #10;
        $display("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

        $finish;

    end

endmodule
