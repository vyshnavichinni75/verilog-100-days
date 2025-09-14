module fh_tb;
  reg a,b,c;
  wire s,Cout;
  fh u1(a,b,c,s,Cout);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("i/p|---o/p---");
    $display("a,b,c|s,Cout");
    $monitor("%b %b %b|%b %b", a,b,c,s,Cout);
    
    a=0;b=0;c=0; #2;
    a=0;b=0;c=1; #2;
    a=0;b=1;c=0; #2;
    a=0;b=1;c=1; #2;
    a=1;b=0;c=0; #2;
    a=1;b=0;c=1; #2;
    a=1;b=1;c=0; #2;
    a=1;b=1;c=1; #2;
  end
endmodule
