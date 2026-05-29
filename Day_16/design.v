//ALU(Arthimatic logic unit ) 
module alu(a,b,s,o);
  input[3:0]a,b;
  input[2:0]s;
  output reg [3:0]o;
  always @(*)
    begin
      if(s==3'b000) o=~a;
      else if (s==3'b001) o=~b;
      else if (s==3'b010) o=a+b;
      else if (s==3'b011) o=a-b;
      else if (s==3'b100) o=a*b;
      else if (s==3'b101) o=a/b;
      else if (s==3'b011) o=a%b;
      else if (s==3'b111) o=a^b;
      else o=4'b0000;
    end 
endmodule
      
