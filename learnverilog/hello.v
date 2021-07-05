module hello;
  integer i;

  initial
    begin
      for (i = 1; i <= 10; i=i+1) begin
        $display("Hello, World! Count: %0d ", i);
      end
    end
endmodule
