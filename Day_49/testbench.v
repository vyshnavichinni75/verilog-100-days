module timer_counter_tb;
reg clk;
reg reset;
reg enable;
wire [3:0] count;
timer_counter uut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .count(count)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, timer_counter_tb);

    $monitor("time=%0t reset=%b enable=%b count=%b",
             $time, reset, enable, count);
    clk = 0;
    // Reset
    reset = 1;
    enable = 0;
    #10;
    // Start timer
    reset = 0;
    enable = 1;
    #80;
    // Stop timer
    enable = 0;
    #20;
    // Start again
    enable = 1;
    #30;
    // Reset
    reset = 1;
    enable = 0;
    #10;
    $finish;
end
endmodule
