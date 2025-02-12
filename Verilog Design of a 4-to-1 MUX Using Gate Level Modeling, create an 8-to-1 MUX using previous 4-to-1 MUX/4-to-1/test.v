module mux4to1_test;

  // Define inputs and outputs
  reg I0, I1, I2, I3, S1, S0;
  wire OUT;

  // Instantiate the 4-to-1 MUX module
  mux4to1 ml (OUT, I0, I1, I2, I3, S1, S0);

  // Apply test stimuli
  initial begin
    $display("Testing 4-to-1 MUX");
    $monitor($time,"Inputs: I0=%b, I1=%b, I2=%b, I3=%b, S1=%b, S0=%b | Output: OUT=%b",I0,I1,I2,I3,S1,S0,OUT);
   
    // Test all possible combinations of inputs
        I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b1; 
        S1 = 1'b0; S0 = 1'b0;
    #3  S1 = 1'b0; S0 = 1'b1;
    #4  S1 = 1'b1; S0 = 1'b0;
    #5  S1 = 1'b1; S0 = 1'b1;
    #6  $stop;
    // End simulation
    $finish;
  end
endmodule





