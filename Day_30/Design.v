//jk flipflop using sr flipflop
module jk_using_sr(
    input j,
    input k,
    input clk,
    output reg q
);
wire s, r;
assign s = j & ~q;
assign r = k & q;
initial q = 0;
always @(posedge clk)
begin
    case({s,r})
        2'b00: q <= q;      
        2'b01: q <= 0;      
        2'b10: q <= 1;      
        2'b11: q <= 1'bx;   
    endcase
end
endmodule
