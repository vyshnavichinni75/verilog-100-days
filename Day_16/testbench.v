
module alu_tb;
  reg [3:0] a, b;
  reg [2:0] s;
  wire [3:0] o;
  alu uut(
      .a(a),
      .b(b),
      .s(s),
      .o(o)
  );
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display(" a     b     s    |    o ");
    $monitor("%b  %b  %b   |  %b",
              a, b, s, o);

    // NOT a
    a = 4'b1010; b = 4'b0101;
    s = 3'b000; #10;
    // NOT b
    s = 3'b001;#10;
    // a + b
    s = 3'b010;#10;
    // a - b
    s = 3'b011;#10;
    // a * b
    s = 3'b100;#10;
    // a / b
    s = 3'b101;#10;
    // a % b
    s = 3'b110;#10;
    // a ^ b
    s = 3'b111; #10;
    $finish;
  end

endmodule
