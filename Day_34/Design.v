module siso_register_4bit(
    input clk,
    input serial_in,
    output serial_out
);
reg [3:0] q;

always @(posedge clk)
begin
    q <= {q[2:0], serial_in};
end

assign serial_out = q[3];

endmodule
