module sr_using_jk_tb;
reg s,r,clk;
wire q;
sr_using_jk uut(
    .s(s),
    .r(r),
    .clk(clk),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  $monitor("time=%0t , s=%0b ,r=%0b , q=%0b",$time,s,r,q);
    clk = 0;
    s=0; r=0; #10;
    s=1; r=0; #10;
    s=0; r=1; #10;
    s=1; r=1; #10;
    $finish;
end
endmodule
