module pulse_counter(
    input clk,
    input reset,
    input pulse_in,
    output reg [7:0] count
);
reg pulse_prev;
always @(posedge clk)
begin
    if(reset)
    begin
        pulse_prev <= 0;
        count <= 0;
    end
    else
    begin
        pulse_prev <= pulse_in;

        if(pulse_in && !pulse_prev)
            count <= count + 1'b1;
    end
end
endmodule
