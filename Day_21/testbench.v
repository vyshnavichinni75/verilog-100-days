module d_latch_tb;
reg d;
reg en;
wire q;
d_latch uut(
    .d(d),
    .en(en),
    .q(q)
);
initial begin
    $dumpfile("dump.vcd");$dumpvars;
    $display("--i/p-|-o/p-");
    $display("EN D | Q");
    $monitor("%b  %b | %b", en, d, q);
    en = 0; d = 0; #10;
    en = 1; d = 0; #10;
    en = 1; d = 1; #10;
    en = 0; d = 1; #10;
    $finish;
end
endmodule
