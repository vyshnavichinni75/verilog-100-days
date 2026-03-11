//4to2 encoder
module en4to2(i,o);
  input[3:0]i;
  output reg[1:0]o;
  always @(i)
    begin
      if(i==4'b0001) o=2'b00;
      else if(i==4'b0010) o=2'b01;
      else if(i==4'b0100) o=2'b10;
      else if(i==4'b1000) o=2'b11;
      else
        o=2'bxx;
    end
endmodule
