// conditional_assignment.v

module condition(
  input d0, d1, s,
  output y
);

  assign y = s ? d1: d0;
  
  always @(y) 
    $display("y = %b\nd0 = %b\nd1 = %b\n", y, d0, d1);
endmodule
