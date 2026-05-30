module sr_ff_tb;
reg s;
reg r;
reg clk;
wire q;
sr_ff uut(
    .s(s),
    .r(r),
    .clk(clk),
    .q(q)
);
always #5 clk = ~clk;
initial begin
$dumpfile("dump.vcd");$dumpvars;
$display("--i/p-|-o/p-");
  $display("  s r clk | q ");
  $monitor("%b  %b %b | %b",s,r,clk,q);
    clk = 0;
    s=0; r=0; #10;
    s=1; r=0; #10;
    s=0; r=1; #10;
    s=1; r=1; #10;
    $finish;
end
endmodule
