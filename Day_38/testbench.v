module universal_shift_register_tb;
reg clk;
reg [1:0] sel;
reg serial_left;
reg serial_right;
reg [3:0] d;
wire [3:0] q;
universal_shift_register uut(
    .clk(clk),
    .sel(sel),
    .serial_left(serial_left),
    .serial_right(serial_right),
    .d(d),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, universal_shift_register_tb);

    $monitor("time=%0t sel=%b d=%b q=%b",
             $time, sel, d, q);
    clk = 0;
    // Parallel Load
    sel = 2'b11;
    d = 4'b1010;
    #10;
    // Hold
    sel = 2'b00;
    #10;
    // Shift Right
    sel = 2'b01;
    serial_left = 1;
    #10;
    // Shift Left
    sel = 2'b10;
    serial_right = 0;
    #10;
    // Parallel Load again
    sel = 2'b11;
    d = 4'b1100;
    #10;
    $finish;

end
endmodule
