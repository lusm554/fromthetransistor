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
    reg d0, d1, d2, d3;
    wire y;

    initial begin
        $monitor("sel=%b, y=%b, d0=%b, d1=%b, d2=%b, d3=%b", sel, y, d0, d1, d2, d3);
        d0 = 1;
        d1 = 0;
        d2 = 1;
        d3 = 0;
        #10 sel = 2'b00;
        #10 sel = 2'b01;
        #10 sel = 2'b10;
        #10 sel = 2'b11;
        $finish;
    end

    mux4to1 m0 (
        .sel(sel),
        .d0 (d0),
        .d1 (d1),
        .d2 (d2),
        .d3 (d3),
        .y  (y)
    );
endmodule
