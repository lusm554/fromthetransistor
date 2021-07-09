// conditional_assignment.v

module condition(
  input d0, d1, s,
  output y
);

  assign y = s ? d0: d1;

  initial begin
    $display("y = s ? d0 : d1\n");
  end
  
  always @(y) 
    $display("y = %b\ns = %b\nd0 = %b\nd1 = %b\n", y, s, d0, d1);
endmodule
