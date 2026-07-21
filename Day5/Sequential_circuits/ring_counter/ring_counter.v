module ring_counter(
    input CLK,
    output reg [3:0] Q0
);

initial
begin
    Q0 = 4'b0001;
end

always @(posedge CLK)
begin
    Q0 <= {Q0[2:0], Q0[3]};
end

endmodule
