module mux4to1(out,i0,i1,i2,i3,s1,s0);
output out;
input i0,i1,i2,i3,s1,s0;
wire s1n,s0n,y0,y1,y2,y3;

not n1(s1n,s1);
not n2(s0n,s0);
and a1(y0,i0,s1n,s0n);
and a2(y1,i1,s1n,s0);
and a3(y2,i2,s1,s0n);
and a4(y3,i3,s1,s0);
or o1(out,y0,y1,y2,y3);
endmodule
