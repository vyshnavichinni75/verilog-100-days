module piso_register_4bit(
    input clk,
    input load,
    input [3:0] d,
    output serial_out
);
reg [3:0] q;
always @(posedge clk)
begin
    if(load)
        q <= d;
    else
        q <= {q[2:0], 1'b0};
end
assign serial_out = q[3];
endmodule
