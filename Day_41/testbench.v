module up_down_counter_4bit_tb;
reg clk;
reg reset;
reg up_down;
wire [3:0] q;
up_down_counter_4bit uut(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, up_down_counter_4bit_tb);

    $monitor("time=%0t reset=%b up_down=%b q=%b",
             $time, reset, up_down, q);
    clk = 0;
    // Reset
    reset = 1;
    up_down = 1;
    #10;
    // Count UP
    reset = 0;
    up_down = 1;
    #10;
    #10;
    #10;
    #10;
    // Count DOWN
    up_down = 0;
    #10;
    #10;
    #10;
    #10;
    $finish;
end
endmodule
