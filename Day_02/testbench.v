module hf_tb;
  reg a,b;
  wire s,Cout;
  hf u1(a,b,s,Cout);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("i/p|-o/p-");
    $display("a,b|s,Cout");
    $monitor("%b %b|%b %b",a,b,s,Cout);
    
    a=0;b=0;  #3;
    a=0;b=1;  #3;
    a=1;b=0;  #3;
    a=1;b=1;  #3;
   end
endmodule
