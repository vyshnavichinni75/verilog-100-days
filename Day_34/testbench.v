module siso_register_4bit_tb;

reg clk;
reg serial_in;
wire serial_out;

siso_register_4bit uut(
    .clk(clk),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $dumpvars(0, siso_register_4bit_tb);

    $monitor("time=%0t serial_in=%b serial_out=%b",
              $time, serial_in, serial_out);

    clk = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;

    $finish;

end

endmodule
