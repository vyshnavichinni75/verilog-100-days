module clock_divider(
    input clk,
    input reset,
    output reg clk_out
);
always @(posedge clk)
begin
    if(reset)
        clk_out <= 0;
    else
        clk_out <= ~clk_out;
end
endmodule
