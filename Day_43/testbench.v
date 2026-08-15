module mod10_counter_tb;
reg clk;
reg reset;
wire [3:0] q;
mod10_counter uut(
    .clk(clk),
    .reset(reset),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, mod10_counter_tb);

    $monitor("time=%0t reset=%b q=%b",
             $time, reset, q);
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
    #10;
    #10;
    #10;
    #10;
    #10;
    $finish;
end
endmodule
