module odd_random;

integer i;
integer num;

initial
begin
    i = 0;

    while (i < 5)
    begin
        
        num = ($random % 10) + 1;

        if (num % 2 != 0)
        begin
            $display("Odd Random Number = %0d", num);
            i = i + 1;
        end
    end
end

endmodule
