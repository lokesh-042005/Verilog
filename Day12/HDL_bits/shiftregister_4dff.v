module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
reg [2:0] shift_reg;

always @(posedge clk) begin
    if(!resetn) begin
        shift_reg <= 3'b000;
        out <= 1'b0;
    end
    else begin
        shift_reg <= {in, shift_reg[2:1]};
        out <= shift_reg[0];
    end
end

endmodule

