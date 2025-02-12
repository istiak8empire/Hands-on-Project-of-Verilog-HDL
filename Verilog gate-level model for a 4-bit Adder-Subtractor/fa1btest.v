module full_adder_1bit_tb;

  // Define inputs and outputs 
  reg A, B, CIN;
  wire SUM, COUT;
  // Instantiate the full adder module
  full_adder_1bit dut (A, B, CIN, SUM, COUT);

  // Apply test stimuli
  initial begin
    $display("Testing 1-bit Full Adder");
    $monitor($time,"Inputs: A=%b, B=%b, CIN=%b | Outputs: SUM=%b, COUT=%b",
             A, B, CIN, SUM, COUT);
    
    // Test all possible combinations of inputs
         A = 1'b0; B = 1'b0; CIN = 1'b0;
      #2 A = 1'b0; B = 1'b0; CIN = 1'b1;
      #3 A = 1'b0; B = 1'b1; CIN = 1'b0;
      #4 A = 1'b0; B = 1'b1; CIN = 1'b1;
      #5 A = 1'b1; B = 1'b0; CIN = 1'b0;
      #6 A = 1'b1; B = 1'b0; CIN = 1'b1;
      #7 A = 1'b1; B = 1'b1; CIN = 1'b0;
      #8 A = 1'b1; B = 1'b1; CIN = 1'b1;
      #9 $stop;
    // End simulation
    $finish;
  end
endmodule
