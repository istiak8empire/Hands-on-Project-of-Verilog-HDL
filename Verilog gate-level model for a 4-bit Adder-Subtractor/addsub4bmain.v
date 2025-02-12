module adder_subtractor_4bit(a, b, cin, sum, cout);
  input [3:0] a; 
  input [3:0] b;
  input cin;
  output [3:0] sum;
  output cout;
  
  wire c0, c1, c2;
  wire [3:0] w; // Internal Wire

  // Perform XOR operation on each bit based on sub signal
  xor x0(w[0], b[0], cin);
  xor x1(w[1], b[1], cin);
  xor x2(w[2], b[2], cin);
  xor x3(w[3], b[3], cin);

  // Full adder chain to calculate sum and carry-out
  full_adder_1bit fa0 (a[0], w[0], cin, sum[0], c0);
  full_adder_1bit fa1 (a[1], w[1], c0, sum[1], c1);
  full_adder_1bit fa2 (a[2], w[2], c1, sum[2], c2);
  full_adder_1bit fa3 (a[3], w[3], c2, sum[3], cout);
endmodule
