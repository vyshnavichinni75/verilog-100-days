module carry_select_adder_tb;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
carry_select_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
initial begin
    $dumpfile("dump.vcd");$dumpvars;
    $display("i/p         | o/p");
    $display("A  B  Cin | Sum  Cout");
    $monitor("%b %b  %b   | %b   %b",a,b,cin,sum,cout);
    a=4'b0010; b=4'b0011; cin=0; #10;
    a=4'b0101; b=4'b1011; cin=1; #10;
    a=4'b1111; b=4'b0001; cin=1; #10;
       $finish;
end
endmodule
