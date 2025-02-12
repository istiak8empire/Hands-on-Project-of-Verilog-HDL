module test;
 wire OUT;
 reg IN0,IN1,S;
 mux2to1 m1(OUT,IN1,IN0,S);
 initial
 $monitor($time,"OUT=%b,IN1=%b,IN0=%b,S=%b",OUT,IN1,IN0,S);
 initial
 begin
 IN1=1'b1; IN0=1'b0;
 S=1'b0;
 #20 S=1'b1;
 #30 $stop;
 end
endmodule
