module pulse_counter_tb;
reg clk;
reg reset;
reg pulse_in;
wire [7:0] count;
pulse_counter uut(
    .clk(clk),
    .reset(reset),
    .pulse_in(pulse_in),
    .count(count)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, pulse_counter_tb);

    $monitor("time=%0t reset=%b pulse_in=%b count=%d",
             $time, reset, pulse_in, count);
    clk = 0;
    reset = 1;
    pulse_in = 0;
    #10 reset = 0;
    // Pulse 1
    #5 pulse_in = 1;
    #10 pulse_in = 0;
    // Pulse 2
    #10 pulse_in = 1;
    #10 pulse_in = 0;
    // Pulse 3
    #10 pulse_in = 1;
    #10 pulse_in = 0;
    // Pulse 4
    #10 pulse_in = 1;
    #10 pulse_in = 0;
    #10 $finish;
end
endmodule
