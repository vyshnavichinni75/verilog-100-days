module d_ff_tb;
reg d;
reg clk;
wire q;
d_ff uut(
    .d(d),
    .clk(clk),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("--i/p--|---o/p---");
    $display("d clk | q");
    $monitor("%b %b |  %b",d, clk, q);
    clk = 0;
    d = 0; #10;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    $finish;
end
endmodule
