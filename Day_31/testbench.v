module register_4bit_tb;
reg clk;
reg [3:0] d;
wire [3:0] q;
register_4bit uut(
    .clk(clk),
    .d(d),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");$dumpvars;
    $monitor("time=%0t d=%b q=%b", $time, d, q);
    clk = 0;
    d = 4'b0000; #10;
    d = 4'b1010; #10;
    d = 4'b1100; #10;
    d = 4'b1111; #10;
    d = 4'b0011; #10;
    $finish;
end
endmodule
