module hf(
  input a,b,
  output s,Cout
);
  assign s=a^b;
  assign Cout=a&b;
endmodule
