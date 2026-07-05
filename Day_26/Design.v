//D flipflop using TFlipflop
module d_using_tff(
    input d,
    input clk,
    input reset,
    output reg q
);
wire t;
assign t = d ^ q;
  always @(posedge clk or posedge reset)begin
    if (reset)
      q <= 0;
    else if (t)
      q <= ~q;
    else
      q <=q;
  end
endmodule
