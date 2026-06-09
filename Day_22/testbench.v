module gray_to_binary_tb;
reg [3:0] G;
wire [3:0] B;
gray_to_binary uut(
    .G(G),
    .B(B)
);
initial begin
   $dumpfile("dump.vcd");$dumpvars;
   $display("--i/p-|-o/p-");
  $display(" G  |  B ");
     
  $monitor("%b -> %b", G, B);
    G = 4'b0000; #10;
    G = 4'b0011; #10;
    G = 4'b0110; #10;
    G = 4'b1111; #10;
    $finish;
end
endmodule
