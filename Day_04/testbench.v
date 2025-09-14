module hs_tb;
  reg a,c;
  wire di,br;
  hs u1(a,c,di,br);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("i/p|-o/p-");
    $display("a,c|di,br");
    $monitor("%b %b|%b %b",a,c,di,br);
    a=0;c=0; #5;
    a=0;c=1; #5;
    a=1;c=0; #5;
    a=1;c=1; #5;
  end
endmodule
