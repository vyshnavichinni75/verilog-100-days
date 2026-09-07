module counter_4bit_tb;
reg clk;
reg reset;
reg load;
reg en;
reg [3:0] d;
wire [3:0] q;
counter_4bit uut(
    .clk(clk),
    .reset(reset),
    .load(load),
    .en(en),
    .d(d),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, counter_4bit_tb);

    $monitor("time=%0t reset=%b load=%b en=%b d=%b q=%b",
             $time, reset, load, en, d, q);
    clk = 0;
    // Reset
    reset = 1;
    load = 0;
    en = 0;
    d = 4'b0000;
    #10;
    // Load 1010
    reset = 0;
    load = 1;
    en = 0;
    d = 4'b1010;
    #10;
    // Count
    load = 0;
    en = 1;
    #10;
    #10;
    #10;
    // Hold
    en = 0;
    #10;
    // Load 1100
    load = 1;
    d = 4'b1100;
    #10;
    // Count again
    load = 0;
    en = 1;
    #10;
    #10;
    $finish;
end
endmodule
