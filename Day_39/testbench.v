module up_counter_4bit_tb;
reg clk;
reg reset;
wire [3:0] q;
up_counter_4bit uut(
    .clk(clk),
    .reset(reset),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, up_counter_4bit_tb);

    $monitor("time=%0t reset=%b q=%b",
             $time, reset, q);
    clk = 0;
    // Reset
    reset = 1;
    #10;
    // Count
    reset = 0;
    #10;
    #10;
    #10;
    #10;
    #10;
    #10;
    #10;
    #10;
    // Reset again
    reset = 1;
    #10;
    $finish;
end
endmodule
