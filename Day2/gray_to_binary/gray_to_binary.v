module gray_to_binary(input [3:0] gray,output [3:0] binary);

   wire w1, w2, w3;

   buf(binary[3], gray[3]);


   xor(w1, gray[3], gray[2]);
   buf(binary[2], w1);
   xor(w2, w1, gray[1]);
   buf(binary[1], w2);
   xor(w3, w2, gray[0]);
   buf(binary[0], w3);

endmodule
