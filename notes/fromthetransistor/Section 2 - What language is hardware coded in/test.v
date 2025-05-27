module test;
    reg t, t1;
    initial begin
        $monitor("t=%b,t1=%b", t, t1);
        t  = 0;
        t1 = 0;
        #5 t = 1;
        #5 t = 0;
        #10{t, t1} = 2'b00;
        #10{t, t1} = 2'b11;
        #10 $finish;
    end
endmodule
