module comp_tb;
  reg [3:0] a,b;
  wire aeqb,altb,agtb;
  comp uut(
      .a(a),
      .b(b),
      .aeqb(aeqb),
      .altb(altb),
      .agtb(agtb)
  );
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("--i/p--|---o/p---");
    $display("a    b   | aeqb altb agtb");
    $monitor("%b %b |   %b    %b    %b",
              a, b, aeqb, altb, agtb);
    a = 4'b0101; b = 4'b0101; #10;
    a = 4'b0011; b = 4'b1000; #10;
    a = 4'b1110; b = 4'b0110; #10;
    a = 4'b0001; b = 4'b0010; #10;
    a = 4'b1010; b = 4'b0101; #10;
    $finish;
  end

endmodule

