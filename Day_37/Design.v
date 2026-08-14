module pipo_register_4bit(
    input clk,
    input load,
    input [3:0] d,
    output reg [3:0] q
);
always @(posedge clk)
begin
    if(load)
        q <= d;
end
endmodule
