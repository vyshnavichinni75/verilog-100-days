//T-Flip-Flop
module t_ff(
    input t,
    input clk,
    output reg q
);
always @(posedge clk)
begin
    if(t == 1'b0)
        q <= q;

    else
        q <= ~q;
end
endmodule
