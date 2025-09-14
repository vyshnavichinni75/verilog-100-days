module hs(
  input a,c,
  output di,br
);
  assign di=a^c;
  assign br=((~a)&c);
endmodule
  
