module rtl_circuit (
    input  clock,
    input  x1,
    input  x2,
    input  x3,
    output reg f,
    output reg g
);

always @(posedge clock)
begin
    f <= x1 & x2;
    g <= x3 | f;
end

endmodule
