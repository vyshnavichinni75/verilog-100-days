module clock_divider_tb;
reg clk;
reg reset;
wire clk_out;
clock_divider uut(
    .clk(clk),
    .reset(reset),
    .clk_out(clk_out)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, clock_divider_tb);

    $monitor("time=%0t clk=%b reset=%b clk_out=%b",
             $time, clk, reset, clk_out);
    clk = 0;
    reset = 1;
    #10;
    reset = 0;
    #10;
    #10;
    #10;
    #10;
    #10;
    #10;
    $finish;
end
endmodule
