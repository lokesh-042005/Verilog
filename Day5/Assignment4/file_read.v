module file_read;

reg clk;
reg [7:0] data_in;
integer fd;

initial
begin
    
    fd = $fopen("/home/user1/sim/f1.txt", "r");

    if (fd == 0)
    begin
        $display("Error: Unable to open file");
        $finish;
    end
end


initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end


always @(posedge clk)
begin
    if (!$feof(fd))
    begin
        $fscanf(fd, "%b", data_in);
        $display("Time=%0t, data_in=%b", $time, data_in);
    end
    else
    begin
        $fclose(fd);
        $finish;
    end
end

endmodule
