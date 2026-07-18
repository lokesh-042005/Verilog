module demux1to8(
    input I,
    input [2:0] S,
    output [7:0] Y
);

assign Y[0] = (~S[2] & ~S[1] & ~S[0]) ? I : 1'b0;
assign Y[1] = (~S[2] & ~S[1] &  S[0]) ? I : 1'b0;
assign Y[2] = (~S[2] &  S[1] & ~S[0]) ? I : 1'b0;
assign Y[3] = (~S[2] &  S[1] &  S[0]) ? I : 1'b0;
assign Y[4] = ( S[2] & ~S[1] & ~S[0]) ? I : 1'b0;
assign Y[5] = ( S[2] & ~S[1] &  S[0]) ? I : 1'b0;
assign Y[6] = ( S[2] &  S[1] & ~S[0]) ? I : 1'b0;
assign Y[7] = ( S[2] &  S[1] &  S[0]) ? I : 1'b0;

endmodule
