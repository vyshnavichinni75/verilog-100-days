module counter_4bit(
    input clk,
    input reset,
    input load,
    input en,
    input [3:0] d,
    output reg [3:0] q
);
always @(posedge clk)
begin
    if(reset)
        q <= 4'b0000;
    else if(load)
        q <= d;
    else if(en)
        q <= q + 1'b1;
    else
        q <= q;
end
endmodule
