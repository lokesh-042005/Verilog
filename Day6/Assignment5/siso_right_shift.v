module siso_right_shift (
    input clk,
    input rst,
    input serial_in,
    output reg serial_out
);

reg q1, q2;

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        q1 <= 1'b0;
        q2 <= 1'b0;
        serial_out <= 1'b0;
    end
    else
    begin
        serial_out <= q2;
        q2 <= q1;
        q1 <= serial_in;
    end
end

endmodule
