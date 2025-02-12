module mux8to1_test;

  // Define inputs and outputs
  reg I0, I1, I2, I3, I4, I5, I6, I7, S2, S1, S0;
  wire OUT;

  // Instantiate the 8-to-1 MUX module
  mux8to1 dut (OUT, I0, I1, I2, I3, I4, I5, I6, I7, S2, S1, S0);

  // Apply test stimuli
  initial 
  begin
    $display("Testing 8-to-1 MUX");             
    $monitor($time, "Inputs: I0=%b, I1=%b, I2=%b, I3=%b, I4=%b, I5=%b, I6=%b, I7=%b, S2=%b, S1=%b, S0=%b | Output: OUT=%b",
              I0,I1,I2,I3,I4,I5,I6,I7,S2,S1,S0,OUT);
    
    // Test all possible combinations of inputs
        I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b1;
        I4 = 1'b0; I5 = 1'b0; I6 = 1'b1; I7 = 1'b1;
         
        S2 = 1'b0; S1 = 1'b0; S0 = 1'b0;
    #3  S2 = 1'b0; S1 = 1'b0; S0 = 1'b1;
    #4  S2 = 1'b0; S1 = 1'b1; S0 = 1'b0;
    #5  S2 = 1'b0; S1 = 1'b1; S0 = 1'b1;
    #6  S2 = 1'b1; S1 = 1'b0; S0 = 1'b0;
    #7  S2 = 1'b1; S1 = 1'b0; S0 = 1'b1;
    #8  S2 = 1'b1; S1 = 1'b1; S0 = 1'b0;
    #9  S2 = 1'b1; S1 = 1'b1; S0 = 1'b1;
    #10 $stop;
    // End simulation
    $finish;
  end
endmodule
