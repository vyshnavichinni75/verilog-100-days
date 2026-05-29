module demux12_tb;
reg s;
reg i;
wire [1:0] o;
demux12 uut (
    .s(s),
    .i(i),
    .o(o)
);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0, demux12_tb);
    $display("s i | o");
    $display("---------");
    s = 0; i = 0; #10;
    $display("%b %b | %b", s, i, o);
    s = 0; i = 1; #10;
    $display("%b %b | %b", s, i, o);
    s = 1; i = 0; #10;
    $display("%b %b | %b", s, i, o);
    s = 1; i = 1; #10;
    $display("%b %b | %b", s, i, o);
    $finish;
end
endmodule
