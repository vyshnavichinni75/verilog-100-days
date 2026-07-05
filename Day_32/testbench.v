
module right_shift_register_tb;
reg clk;
reg load;
reg [3:0] d;
wire [3:0] q;
right_shift_register uut(
    .clk(clk),
    .load(load),
    .d(d),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");$dumpvars;
    $monitor("time=%0t load=%b d=%b q=%b",
              $time, load, d, q);
    clk = 0;
    load = 1;
    d = 4'b1010;
    #10;
    load = 0;
    #10;
    #10;
    #10;
    #10;
    $finish;
end
endmodule
