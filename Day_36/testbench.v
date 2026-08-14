module piso_register_4bit_tb;
reg clk;
reg load;
reg [3:0] d;
wire serial_out;
piso_register_4bit uut(
    .clk(clk),
    .load(load),
    .d(d),
    .serial_out(serial_out)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, piso_register_4bit_tb);

    $monitor("time=%0t load=%b d=%b serial_out=%b",
             $time, load, d, serial_out);
    clk = 0;
    load = 1;
    d = 4'b1011;
    #10;
    load = 0;
    #10;
    #10;
    #10;
    #10;

    $finish;
end
endmodule
