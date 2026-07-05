//d Flipflop using jk flipflop
module d_using_jk(
    input d,
    input clk,
    output reg q
);
wire j,k;
assign j = d;
assign k = ~d;
always @(posedge clk)
begin
    case({j,k})
        2'b00: q <= q;
        2'b01: q <= 0;
        2'b10: q <= 1;
        2'b11: q <= ~q;
    endcase
end
endmodule
