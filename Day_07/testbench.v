module rca_tb;
 reg [3:0] A;
 reg [3:0] B;
 reg Cin;
 wire [3:0] sum;
 wire cout;
 rca uut(
  .A(A),
  .B(B),
  .Cin(Cin),
  .sum(sum),
  .cout(cout)
);
initial begin
  $dumpfile("dump.vcd"); $dumpvars(0,rca_tb);
  $display("i/p|----o/p---");
  $display("A B Cin | sum cout");
  $monitor("%b %b %b|%b %b", A,B,Cin,sum,cout);
  
  A=4'b0001; B=4'b0010; Cin=0; #10;
  A=4'b0101; B=4'b0011; Cin=0; #10;
  A=4'b1111; B=4'b0001; Cin=0; #10;
  A=4'b1010; B=4'b0101; Cin=0; #10;
  $finish;
end
endmodule
