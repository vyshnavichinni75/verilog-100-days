module pipo_register_4bit_tb;
reg clk;
reg load;
reg [3:0] d;
wire [3:0] q;
pipo_register_4bit uut(
    .clk(clk),
    .load(load),
    .d(d),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, pipo_register_4bit_tb);

    $monitor("time=%0t load=%b d=%b q=%b",
             $time, load, d, q);
    clk = 0;
    // Load 1010
    load = 1;
    d = 4'b1010;
    #10;
    // Load 1100
    d = 4'b1100;
    #10;
    // Load 1111
    d = 4'b1111;
    #10;
    // Hold
    load = 0;
    d = 4'b0000;
    #10;
    $finish;
end
endmodule
