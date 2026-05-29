//1 to 2 demux
module demux12(
    input s,
    input i,
    output [1:0] o
);
assign o[0] = ~s & i;
assign o[1] =  s & i;
endmodule
