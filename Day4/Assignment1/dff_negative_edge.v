module dff_negative_edge(
    input D,
    input clk,
    input reset_n,
    output reg Q
);

always @(negedge clk or negedge reset_n)
begin
    if (!reset_n)
        Q <= 1'b0;
    else
        Q <= D;
end

endmodule
