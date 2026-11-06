`timescale 1ns/1ps
module binary_to_bcd_tb;
reg [3:0] binary;
wire [3:0] tens;
wire [3:0] ones;
binary_to_bcd uut(
    .binary(binary),
    .tens(tens),
    .ones(ones)
);
initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0,binary_to_bcd_tb);
    $monitor("time=%0t binary=%b tens=%d ones=%d",
              $time,binary,tens,ones);
    binary = 4'b0000; #10;
    binary = 4'b0011; #10;
    binary = 4'b0101; #10;
    binary = 4'b1001; #10;
    binary = 4'b1010; #10;
    binary = 4'b1100; #10;
    binary = 4'b1111; #10;

    $finish;
end
endmodule
