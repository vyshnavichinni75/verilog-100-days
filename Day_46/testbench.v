
module frequency_divider_tb;
reg clk;
reg reset;
wire clk_out;
frequency_divider uut(
    .clk(clk),
    .reset(reset),
    .clk_out(clk_out)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, frequency_divider_tb);
    $monitor("time=%0t clk=%b reset=%b count=%d clk_out=%b",
             $time, clk, reset, uut.count, clk_out);
    clk = 0;
    reset = 1;
    #10;
    reset = 0;
    #100;
    $finish;
end
endmodule
