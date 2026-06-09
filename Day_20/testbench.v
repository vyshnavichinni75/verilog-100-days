module sr_latch_tb;
reg s;
reg r;
wire q;

sr_latch uut(
    .s(s),
    .r(r),
    .q(q)
);
initial begin
   $dumpfile("dump.vcd");$dumpvars;
   $display("--i/p-|-o/p-");
    $display("S R | Q");
    $monitor("%b %b | %b", s, r, q);
    s = 0; r = 0; #10;
    s = 1; r = 0; #10;
    s = 0; r = 1; #10;
    s = 1; r = 1; #10;
    
    $finish;
end
endmodule
