module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q
    
wire feedback;

assign feedback = LEDR[1] ^ LEDR[2];

dff_mux d0(
    .clk(KEY[0]),
    .L(KEY[1]),
    .R(SW[0]),
    .feedback(LEDR[2]),
    .Q(LEDR[0])
);

dff_mux d1(
    .clk(KEY[0]),
    .L(KEY[1]),
    .R(SW[1]),
    .feedback(LEDR[0]),
    .Q(LEDR[1])
);

dff_mux d2(
    .clk(KEY[0]),
    .L(KEY[1]),
    .R(SW[2]),
    .feedback(feedback),
    .Q(LEDR[2])
);

endmodule

module dff_mux(
    input clk,
    input L,
    input R,
    input feedback,
    output reg Q
);

always @(posedge clk) begin
    if(L)
        Q <= R;
    else
        Q <= feedback;
end

endmodule

