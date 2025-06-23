module mux4to1 (
    input wire [1:0] sel,
    input wire d0,
    d1,
    d2,
    d3,
    output wire y
);

    assign y = (sel == 2'b00) ? d0 : (sel == 2'b01) ? d1 : (sel == 2'b10) ? d2 : d3;

endmodule

module mux4to1_tb;
    reg [1:0] sel;
    reg d0, d1, d2, d3, y;

    initial begin
        $monitor("y=%b", y);
        #5 sel = 2'b00;
    end

    mux4to1 m0 (
        .sel(sel),
        .d0 (d0),
        .d1 (d1),
        .d2 (d2),
        .d3 (d3)
    );

endmodule
