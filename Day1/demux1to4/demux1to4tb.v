module demux1to4tb;

reg I;
reg S1;
reg S0;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

demux1to4 uut (
    .I(I),
    .S1(S1),
    .S0(S0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial
begin
    $monitor("I=%b S1=%b S0=%b Y0=%b Y1=%b Y2=%b Y3=%b",
              I,S1,S0,Y0,Y1,Y2,Y3);

    I=1; S1=0; S0=0; #10;
    I=1; S1=0; S0=1; #10;
    I=1; S1=1; S0=0; #10;
    I=1; S1=1; S0=1; #10;

    $finish;
end

endmodule
