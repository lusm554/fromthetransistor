`timescale 1ns / 1ps
module first_counter (
    input wire clock,
    input wire reset,
    input wire enable,
    output reg [3:0] counter_out
);
    // Trigger block to positive edge of the clock
    always @(posedge clock) begin : COUNTER  // block name
        if (reset == 1'b1) begin
            counter_out <= #1 4'b0000;
        end else if (enable == 1'b1) begin
            counter_out <= #1 counter_out + 1;
        end
    end
endmodule

module first_counter_tb;
    reg clock, reset, enable;
    wire [3:0] counter_out;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, first_counter_tb);
        $display("time\tclk\treset\tenable\tcounter");
        $monitor("%g\t%b\t%b\t%b\t%b", $time, clock, reset, enable, counter_out);
        clock  = 1;
        reset  = 0;
        enable = 0;
        #5 reset = 1;
        #10 reset = 0;
        #10 enable = 1;
        #100 enable = 0;
        #5 $finish;
    end

    always begin
        #5 clock = ~clock;
    end

    first_counter f1 (
        .clock(clock),
        .reset(reset),
        .enable(enable),
        .counter_out(counter_out)
    );

endmodule
