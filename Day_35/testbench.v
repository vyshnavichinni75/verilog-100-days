module sipo_register_4bit_tb;
reg clk;
reg reset;
reg serial_in;
wire [3:0] q;
sipo_register_4bit uut(
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, sipo_register_4bit_tb);

    $monitor("time=%0t reset=%b serial_in=%b q=%b",
             $time, reset, serial_in, q);
    clk = 0;
    reset = 1;
    serial_in = 0;
    #10;
    reset = 0;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    #10 $finish;
end
endmodule
