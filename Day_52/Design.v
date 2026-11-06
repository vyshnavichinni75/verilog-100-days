module binary_to_bcd(
    input [3:0] binary,
    output reg [3:0] tens,
    output reg [3:0] ones
);
always @(*) 
begin
    if(binary <= 4'd9)
    begin
        tens = 4'd0;
        ones = binary;
    end
    else
    begin
        tens = 4'd1;
        ones = binary - 4'd10;
    end
end
endmodule
