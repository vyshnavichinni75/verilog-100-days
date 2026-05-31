module jk_ff_tb;
  reg j;
  reg k;
  reg clk;
  wire q;
  jk_ff uut(.j(j),.k(k),.clk(clk),.q(q));
  always #5 clk = ~clk;
  initial begin
  $dumpfile("dump.vcd");$dumpvars;
  $display("--i/p-|-o/p-");
    $display("  j k clk | q ");
    $monitor("%b  %b %b | %b",j,k,clk,q);
    clk = 0;
    j=0; k=0; #10;
    j=1; k=0; #10;
    j=0; k=1; #10;
    j=1; k=1; #10;
    $finish;
end
endmodule
