module why;
  integer i;
  
  initial begin
    for (i = 0; i <= 100; i = i + 1) begin
      $display("Hello", i, " times");
    end
  end
endmodule 
