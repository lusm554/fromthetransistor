// gates_tb.v

`timescale 1 ns/10 ps // tine-unti = 1 ns, precision

module gates_tb;
  reg a, b;
  wire y1, y2, y3, y4, y5;

  // duration for each bit = 20 * timescale = 20 * 1 ns = 20ns
  localparam period = 20;
  
  gates UUT (.a(a), .b(b), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5));

  initial // initial block executes only once
    begin
      // value for a and b
      a = 1;
      b = 1;
      #period; // wait for period

      a = 0;
      b = 1;
      #period;
      
      a = 1;
      b = 0;
      #period;

      a = 0;
      b = 0;
      #period;
    end
endmodule
