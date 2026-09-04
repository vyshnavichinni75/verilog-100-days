
module frequency_divider(
    input clk,
    input reset,
    output reg clk_out
);
reg [2:0] count;

always @(posedge clk)
begin
    if(reset)
    begin
        count <= 0;
        clk_out <= 0;
    end
    else if(count == 3'd3)
    begin
        count <= 0;
        clk_out <= ~clk_out;
    end
    else
        count <= count + 1'b1;
end
endmodule
