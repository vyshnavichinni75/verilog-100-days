//Ripple carry adder using full adder
module fh(
  input a,b,c,
  output s,Cout
);
  assign s=a^b^c;
  assign Cout= (a&b)|(b&c)|(c&a);
endmodule
  module rca(
    input[3:0]A,
    input[3:0]B,
    input Cin,
    output[3:0]sum,
    output cout
);
    wire C1,C2,C3;
    fh f0(A[0],B[0],Cin,sum[0],C1);
    fh f1(A[1],B[1],C1,sum[1],C2);
    fh f2(A[2],B[2],C2,sum[2],C3);
    fh f3(A[3],B[3],C3,sum[3],cout);
endmodule
