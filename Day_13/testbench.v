module pe42_tb;
  reg[3:0]i;
  reg e;
  wire [1:0]o;
  pe42 uut(.i(i),.e(e),.o(o));
  initial
  begin
  $dumpfile("dump.vcd");$dumpvars;
  $display("--i/p-|-o/p-");
    $display("  i e  | o");
    $monitor("%b  %b | %b",i,e,o);
    e=0;i=4'b0000; #10;
    $display("%b  %b | %b",i,e,o);
    e=1;i=4'b0001; #10;
    $display("%b  %b | %b",i,e,o);
    i=4'b0010; #10;
    $display("%b  %b | %b",i,e,o);
    i=4'b0100; #10;
    $display("%b  %b | %b",i,e,o);
    i=4'b1000; #10;
    $display("%b  %b | %b",i,e,o);
    i=4'b0000; #10;
    $display("%b  %b | %b",i,e,o);
      $finish;
end

endmodule
