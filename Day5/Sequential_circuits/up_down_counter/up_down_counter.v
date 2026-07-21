module up_down_counter(
    input CLK,
    input U_D,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0000;
end

always @(posedge CLK)
begin
    if(U_D)
        Q0 <= Q0 + 1;
    else
        Q0 <= Q0 - 1;
end

endmodule
