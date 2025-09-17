module fs(
  input d,e,f,
  output diff,br
);
  assign diff=d^e^f;
  assign br=((~d)&e)|((~e)&f)|(f&d);
endmodule
    
