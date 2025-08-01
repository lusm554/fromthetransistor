module and_gate (
    input wire in1,
    input wire in2,
    output wire out1
);
    wire and_temp;
    assign and_temp = in1 & in2;
    assign out1 = and_temp;
endmodule

module tb_and_gate;
    reg in1, in2;
    wire out1;

    initial begin
        $display("time\tin1\tin2\tout1");
        $monitor("%g\t%b\t%b\t%b", $time, in1, in2, out1);
        in1 = 0;
        in2 = 0;
        #5 in1 = 1;
        #5 in2 = 1;
        #5 in1 = 0;
    end

    /*
    time	in1	in2	out1
    0	0	0	0
    5	1	0	0
    10	1	1	1
    15	0	1	0
    */

    and_gate ag1 (
        .in1(in1),
        .in2(in2),
        .out1(out1)
    );

endmodule
