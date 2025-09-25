//full adders using 2 half adders
module hfff(
  input a,b,c,
  output s,Cout
);
  wire w1,w2,w3;
  xor g1(w1,a,b);
  xor g2(s,w1,c);
  and g3(w3,a,b);
  and g4(w2,w1,c);
  or g5(Cout,w2,w3);
endmodule
  
  
