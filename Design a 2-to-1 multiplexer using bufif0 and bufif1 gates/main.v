module mux2to1(out,in1,in0,s);
output out;
input in1,in0,s;
bufif0 #(1:2:3,3:4:5,5:6:7)b1(out,in0,s);
bufif1 #(1:2:3,3:4:5,5:6:7)b2(out,in1,s);
endmodule
