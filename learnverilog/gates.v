// gates.v

module gates(input wire a, b,
             output wire y1, y2, y3, y4, y5);

  assign y1 = a & b;    // AND
  assign y2 = a | b;    // OR
  assign y3 = a ^ b;    // XOR
  assign y4 = ~(a & b); // HAND
  assign y5 = ~(a | b); // NOR

  // Log value when emit chang event of y(1, 2, 3, 4, 5).
  always @(y1) 
    $display("%b & %b = %b\n", a, b, y1);
  always @(y2) 
    $display("%b | %b = %b\n", a, b, y2);
  always @(y3) 
    $display("%b ^ %b = %b\n", a, b, y3);
  always @(y4) 
    $display("~(%b & %b) = %b\n", a, b, y4);
  always @(y5) 
    $display("~(%b | %b) = %b\n", a, b, y5);
endmodule
