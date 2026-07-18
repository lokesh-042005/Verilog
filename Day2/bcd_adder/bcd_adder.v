module bcd_adder(
    input  [3:0] A,
    input  [3:0] B,
    input  Cin,
    output [3:0] Sum,
    output Cout
);

wire [4:0] temp_sum;
wire [4:0] corrected_sum;
wire correction;


assign temp_sum = A + B + Cin;


assign correction = temp_sum[4] | (temp_sum[3] & temp_sum[2]) | (temp_sum[3] & temp_sum[1]);


assign corrected_sum = temp_sum + (correction ? 5'b00110 : 5'b00000);


assign Sum  = corrected_sum[3:0];
assign Cout = corrected_sum[4];

endmodule
