module bcd_adder_tb;
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] Sum;
wire Cout;
bcd_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);
initial begin
    $dumpfile("dump.vcd");$dumpvars;
  $display("--i/p-|-o/p-");
  $display("  A  B  Cin   |Sum  Cout ");
  $monitor("%b  %b %b | %b",A,B,Cin,Sum,Cout);
    A=4'b0101; B=4'b0011; Cin=0; #10;
    A=4'b1001; B=4'b0011; Cin=0; #10;
    A=4'b1001; B=4'b1001; Cin=0; #10;
    $finish;
end
endmodule
