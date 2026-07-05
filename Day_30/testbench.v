module jk_using_sr_tb;
reg j;
reg k;
reg clk;
wire q;
jk_using_sr uut(
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");$dumpvars;
    $monitor("time=%0t ,j=%0b k=%0b q=%0b",$time,j,k,q);
    clk = 0;
    j = 0; k = 0; #10;
    j = 1; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 1; #10;
    $finish;
end
endmodule
