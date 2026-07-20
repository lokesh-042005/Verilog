module encoder4to2(
    input I0,
    input I1,
    input I2,
    input I3,
    output reg Y1,
    output reg Y0
);

always @(*)
begin
    if (I0)
    begin
        Y1 = 0;
        Y0 = 0;
    end
    else if (I1)
    begin
        Y1 = 0;
        Y0 = 1;
    end
    else if (I2)
    begin
        Y1 = 1;
        Y0 = 0;
    end
    else if (I3)
    begin
        Y1 = 1;
        Y0 = 1;
    end
    else
    begin
        Y1 = 0;
        Y0 = 0;
    end
end

endmodule
