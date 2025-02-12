module full_adder_1bit(a, b, cin, sum, cout); // 1-bit Full Adder 
  input a, b, cin;
  output sum, cout;
  wire s1, s2, c1;
  xor  x1(s1, a, b);
  and  a1(c1, a, b);
  xor  x2(sum, s1, cin);
  and  a2(s2, s1,cin); 
  xor  x3(cout, s2, c1); 
endmodule
