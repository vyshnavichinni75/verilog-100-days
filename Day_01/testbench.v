module logicgates_tb;
  reg a,b;
  wire c,d,e,f,g,h,i;
  logicgates u1(a,b,c,d,e,f,g,h,i);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("i/p | ----o/p-------");
    $display("a b | c d e f g h i");
    $monitor("%b %b | %b %b %b %b %b %b %b",a,b,c,d,e,f,g,h,i);
    
    
    a=0; b=0;  #5;
    a=0; b=1;  #5;
    a=1; b=0;  #5;
    a=1; b=1;  #5;
   
  end
endmodule
