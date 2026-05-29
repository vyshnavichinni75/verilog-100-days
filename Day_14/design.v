//4bit comparator
module comp(a,b,aeqb,altb,agtb);
  input[3:0] a,b;
  output reg aeqb,altb,agtb;
  always @(*)
    begin
      if(a==b)
        begin
          aeqb=1'b1;altb=1'b0;agtb=1'b0;
        end
      else if(a<b)
        begin
          aeqb=1'b0;altb=1'b1;agtb=1'b0;
         end
      else begin
           aeqb=1'b0;altb=1'b0;agtb=1'b1;
        end
    end
endmodule
          
