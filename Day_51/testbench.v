module stopwatch_tb;
reg clk;
reg reset;
reg enable;
wire [5:0] seconds;
wire [5:0] minutes;
stopwatch uut(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .seconds(seconds),
    .minutes(minutes)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, stopwatch_tb);

    $monitor("time=%0t reset=%b enable=%b minutes=%d seconds=%d",
             $time, reset, enable, minutes, seconds);
    clk = 0;
    // Reset
    reset = 1;
    enable = 0;
    #10;
    // Start stopwatch
    reset = 0;
    enable = 1;
    // Run for 65 seconds
    #650;
    // Stop
    enable = 0;
    #20;
    $finish;
end
endmodule
