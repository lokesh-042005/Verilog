module mod10_counter(
    input CLK,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0000;
end

always @(posedge CLK)
begin
    if(Q0 == 4'd9)
        Q0 <= 4'd0;
    else
        Q0 <= Q0 + 1;
end

endmodule
