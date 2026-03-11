module en4to2_tb;
reg[3:0]i;
wire[1:0]o;
en4to2 uut(i,o);
initial begin
  $dumpfile("dump.vcd");$dumpvars;
  $display("--i/p-|-o/p-");
  $display("  i  | o");
  $monitor("%b   | %b",i,o);
  i=4'b0000;#10;
  i=4'b0001;#10;
  i=4'b0010;#10;
  i=4'b0100;#10;
  i=4'b1000;#10;
  $finish;
end
endmodule
