// conditional_assignment_tb.v

`timescale 1 ns/10 ps // time-unit = 1ns, precision = 10 ps

module conditionalAssignment_tb;

  reg d0, d1, s;
  wire y;

  localparam period = 20;

  condition UUT (.d0(d0), .d1(d1), .s(s), .y(y));

  integer i, j, k;

  initial // initial block executes only once
    begin
      // values for d0, d1 and s.
      for (i = 0; i < 2; i = i + 1) begin
        for (j = 0; j < 2; j = j + 1) begin
          for (k = 0; k < 2; k = k + 1) begin
            d0 = i;
            d1 = j;
            s = k;
            #period;
          end
        end
      end
    end
endmodule
