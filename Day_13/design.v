// 4 to 2 priority encoder
module pe42(i,o,e);
  input[3:0]i;
  input e;
  output reg[1:0]o;
  always @(*)
  begin 
    if(e==1'b1)
      begin
        if(i[3]==1'b1) o=2'b11;
        else if(i[2]==1'b1) o=2'b10;
        else if(i[1]==1'b1) o=2'b01;
        else if(i[0]==1'b1) o=2'b00;
        else o=2'b00;
      end
    else o=2'b00;
  end
endmodule
