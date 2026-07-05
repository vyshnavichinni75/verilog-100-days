module d_using_tff_tb;
reg d;
reg clk;
reg reset;
wire q;
d_using_tff uut(
    .d(d),
    .clk(clk),
    .reset(reset),
    .q(q)
);
always #5 clk = ~clk;
initial begin 
  $dumpfile("dump.vcd"); $dumpvars;
  $monitor("time=%0t\ reset=%b\ d=%b\ q=%b",$time, reset, d, q);
    clk   = 0;
    reset = 1;
    d     = 0;
    #10 reset = 0;   
    d = 0; #10;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    #10 $finish;
end
endmodule
