module alu(
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] sel,
    output reg [3:0] Y,
    output reg Carry
);


function [4:0] alu_function;
    input [3:0] A;
    input [3:0] B;
    input [2:0] sel;

    begin
        case(sel)
            3'b000: alu_function = A + B;          
            3'b001: alu_function = A - B;          
            3'b010: alu_function = {1'b0, A & B}; 
            3'b011: alu_function = {1'b0, A | B}; 
            3'b100: alu_function = {1'b0, A ^ B}; 
            3'b101: alu_function = {1'b0, ~A};    
            3'b110: alu_function = {1'b0, A << 1}; 
            3'b111: alu_function = {1'b0, A >> 1}; 
            default: alu_function = 5'b00000;
        endcase
    end
endfunction


task execute_alu;
    input [3:0] a;
    input [3:0] b;
    input [2:0] s;

    reg [4:0] result;

    begin
        result = alu_function(a, b, s);
        Carry = result[4];
        Y     = result[3:0];
    end
endtask


always @(*) begin
    execute_alu(A, B, sel);
end

endmodule
