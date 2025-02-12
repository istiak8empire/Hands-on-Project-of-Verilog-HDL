module mux8to1(out,i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0);
            output out;
            input i0,i1,i2,i3,i4,i5,i6,i7;
            input s2,s1,s0;
            wire w1,w2;
mux4to1 m1(w1,i0,i1,i2,i3,s1,s0);
mux4to1 m2(w2,i4,i5,i6,i7,s1,s0);
mux4to1 m3(out,w1,w2,0,0,s2,s1);
endmodule
