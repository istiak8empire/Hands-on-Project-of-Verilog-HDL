module fulladder(S,Cout,A,B,Cin);
output S,Cout;
input A,B,Cin;
wire m,y,z;
xor x1(m,A,B);
xor x2(S,m,Cin);
and a1(y,m,Cin);
and a2(z,A,B);
or o1(Cout,y,z);
endmodule