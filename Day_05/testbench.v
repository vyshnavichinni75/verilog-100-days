module fs_tb;
  reg d,e,f;
  wire diff,br;
  fs u1(d,e,f,diff,br);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    $display("i/p|--o/p--");
    $display("d,e,f|diff,br");
    $monitor("%b %b %b|%b %b",d,e,f,diff,br);
    
    d=0;e=0;f=0; #4;
    d=0;e=0;f=1; #4;
    d=0;e=1;f=0; #4;
    d=0;e=1;f=1; #4;
    d=1;e=0;f=0; #4;
    d=1;e=0;f=1; #4;
    d=1;e=1;f=0; #4;
    d=1;e=1;f=1; #4;
  end
  
 endmodule
