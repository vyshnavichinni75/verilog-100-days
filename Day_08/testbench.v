module mux2to1_tb;
reg I0;
reg I1;
reg S;
wire Y;
mux2to1 uut(I0,I1,S,Y);
initial begin
 $dumpfile("dump.vcd");$dumpvars;
 $display("--i/p-|o/p");
 $display("I0 I1 S | Y");
 $monitor("%b %b %b | %b", I0, I1, S, Y);
 I0 = 0; I1 = 1; S = 0; #10;
 I0 = 0; I1 = 1; S = 1; #10;
 I0 = 1; I1 = 0; S = 0; #10;
 I0 = 1; I1 = 0; S = 1; #10;
end
endmodule
