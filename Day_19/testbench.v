module t_ff_tb;
reg t;
reg clk;
wire q;
t_ff uut(
    .t(t),
    .clk(clk),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");$dumpvars;
  $display("--i/p-|-o/p-");
  $display("  t clk | q ");
  $monitor("%b  %b  | %b",t,clk,q);
    clk = 0;
    t = 0; #10;
    t = 1; #10;
    t = 1; #10;
    t = 0; #10;
    $finish;
end
endmodule
