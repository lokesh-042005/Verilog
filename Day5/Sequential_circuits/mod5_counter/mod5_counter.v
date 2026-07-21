module mod5_counter(
    input CLK,
    output reg [2:0] Q0
);

initial
begin
    Q0 = 3'b000;
end

always @(posedge CLK)
begin
    if(Q0 == 3'd4)
        Q0 <= 3'd0;
    else
        Q0 <= Q0 + 1;
end

endmodule
