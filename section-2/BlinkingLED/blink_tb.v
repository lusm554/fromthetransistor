// blink_tb.v
`timescale 10ns/1ns // time-unit = 1 ns, presicision

module blick_tb;
  reg clk;
  wire LED;

  localparam period = 20;
  integer i;

  blink UUT (.clk(clk), .LED(LED));

  initial begin
    for (i = 0; i < 1000; i = i + 1) begin
      clk = i;
      $monitor(clk);
    end 
  end

  initial begin
    $dumpfile("_blink.vcd");
    $dumpvars(0, blick_tb);
    #10000 $finish;
  end
endmodule
