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
