module down_counter_4bit(
    input clk,
    input reset,
    output reg [3:0] q
);
always @(posedge clk)
begin
    if(reset)
        q <= 4'b1111;
    else
        q <= q - 1'b1;
end
endmodule
