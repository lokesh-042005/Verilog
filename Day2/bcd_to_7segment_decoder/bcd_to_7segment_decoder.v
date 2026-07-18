module bcd_to_7segment_decoder(
    input  [3:0] BCD,
    output [6:0] SEG
);

assign SEG = (BCD == 4'd0) ? 7'b1111110 :
             (BCD == 4'd1) ? 7'b0110000 :
             (BCD == 4'd2) ? 7'b1101101 :
             (BCD == 4'd3) ? 7'b1111001 :
             (BCD == 4'd4) ? 7'b0110011 :
             (BCD == 4'd5) ? 7'b1011011 :
             (BCD == 4'd6) ? 7'b1011111 :
             (BCD == 4'd7) ? 7'b1110000 :
             (BCD == 4'd8) ? 7'b1111111 :
             (BCD == 4'd9) ? 7'b1111011 :
                             7'b0000000;

endmodule
