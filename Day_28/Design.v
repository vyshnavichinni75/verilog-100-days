//T flipflop using JK Flipflop
module t_using_jk(
    input t,
    input clk,
    input reset,
    output reg q
);
wire j,k;
assign j = t;
assign k = t;
always @(posedge clk or posedge reset)
begin
    if(reset)
        q <= 0;
    else begin
        case({j,k})
            2'b00: q <= q;
            2'b01: q <= 0;
            2'b10: q <= 1;
            2'b11: q <= ~q;
        endcase
    end
end
endmodule
