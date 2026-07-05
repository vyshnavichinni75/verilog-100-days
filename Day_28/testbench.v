module t_using_jk_tb;
reg t, clk, reset;
wire q;
t_using_jk uut(
    .t(t),
    .clk(clk),
    .reset(reset),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");$dumpvars;
    $monitor("time=%0t t=%b q=%b", $time, t, q);
    clk = 0;
    reset = 1;
    t = 0;
    #10 reset = 0;
    t = 0; #10;
    t = 1; #10;
    t = 1; #10;
    t = 0; #10;
    $finish;
end
endmodule
