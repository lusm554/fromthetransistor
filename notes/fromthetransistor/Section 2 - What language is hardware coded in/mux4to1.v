module mux4to1 (
    input wire [1:0] sel,
    input wire d0,
    d1,
    d2,
    d3,
    output wire y
);

    assign y = d0;

endmodule

module mux4to1_tb;
    wire [1:0] sel;
    wire d0, d1, d2, d3, y;

    initial begin
        $monitor("y=%b", y);
        #5 assign d0 = 1;
    end

    mux4to1 m0 (
        .sel(sel),
        .d0 (d0),
        .d1 (d1),
        .d2 (d2),
        .d3 (d3)
    );

endmodule
