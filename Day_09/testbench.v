module mux4to1_tb;
reg [3:0] I;
reg [1:0] S;
wire Y;
mux4to1 uut(I,S,Y);
initial begin
  $dumpfile("dump.vcd");$dumpvars;
  $display("-i/p-|o/p");
  $display("I ,   S | Y");
  $monitor("%b %b | %b",I,S,Y);
  I = 4'b1010;
  S = 2'b00; #10;
  S = 2'b01; #10;
  S = 2'b10; #10;
  S = 2'b11; #10;
end
endmodule
