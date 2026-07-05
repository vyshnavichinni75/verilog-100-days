//left shift register with load
module left_shift_register(
    input clk,
    input load,
    input [3:0] d,
    output reg [3:0] q
);
always @(posedge clk)
begin
    if(load)
        q <= d;
    else
        q <= q << 1;
end
endmodule
