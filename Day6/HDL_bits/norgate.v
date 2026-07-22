module norgate(input a,b, output out);
  assign out = ~(a|b);
endmodule
