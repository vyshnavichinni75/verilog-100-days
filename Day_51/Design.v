module stopwatch(
    input clk,
    input reset,
    input enable,
    output reg [5:0] seconds,
    output reg [5:0] minutes
);
always @(posedge clk)
begin
    if(reset)
    begin
        seconds <= 6'd0;
        minutes <= 6'd0;
    end

    else if(enable)
    begin
        if(seconds == 6'd59)
        begin
            seconds <= 6'd0;

            if(minutes == 6'd59)
                minutes <= 6'd0;
            else
                minutes <= minutes + 1'b1;
        end
        else
            seconds <= seconds + 1'b1;
    end
end

endmodule
