module d_latch_mux (
    input  d,
    input  en,
    output reg q
);

always @(*)
begin
    if (en)
        q = d;   
    else
        q = q;   
end

endmodule
