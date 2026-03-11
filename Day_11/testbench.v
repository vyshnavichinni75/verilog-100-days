module de3to8_tb;
  reg[2:0]i;
  wire[7:0]o;
  de3to8 uut(i,o);
  initial begin
  $dumpfile("dump.vcd");$dumpvars;
  $display("--i/p-|-o/p-");
  $display("  i  | o");
  $monitor("%b   | %b",i,o);
  i = 3'b000; #10;
  i = 3'b001; #10;
  i = 3'b010; #10;
  i = 3'b011; #10;
  i = 3'b100; #10;
  i = 3'b101; #10;
  i = 3'b110; #10;
  i = 3'b111; #10;
  end 
endmodule
