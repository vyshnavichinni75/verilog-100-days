//sr flipflop using jk flipflop
module sr_using_jk(
    input s,
    input r,
    input clk,
    output reg q
);
wire j,k;
initial q = 0;
assign j = s;
assign k = r;
always @(posedge clk)
begin
    case({j,k})
        2'b00: q <= q;
        2'b01: q <= 0;
        2'b10: q <= 1;
        2'b11: q <= 1'bx;
    endcase
end
endmodule
