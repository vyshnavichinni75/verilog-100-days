module d_using_jk_tb;
reg d;
reg clk;
wire q;
d_using_jk uut(
    .d(d),
    .clk(clk),
    .q(q)
);
always #5 clk = ~clk;
initial begin
  $dumpfile("dump.vcd");$dumpvars;
  $monitor("time=%0t \d=%b \q=%b", $time, d, q);
    clk = 0;
    d = 0; #10;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    d = 1; #10;
    $finish;
end
endmodule
