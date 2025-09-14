module fh(
  input a,b,c,
  output s,Cout
);
  assign s=a^b^c;
  assign Cout= (a&b)|(b&c)|(c&a);
endmodule
  
