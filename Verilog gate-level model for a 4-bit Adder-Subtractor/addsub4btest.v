module adder_subtractor_4bit_tb;

  // Define inputs and outputs
  reg [3:0] A, B;
  reg CIN;
  wire [3:0] SUM;
  wire COUT;

  // Instantiate the adder-subtractor module
  adder_subtractor_4bit dut (A, B, CIN, SUM, COUT);

  // Apply test stimuli
  initial begin
    $display("Testing 4-bit Adder-Subtractor");
    $monitor($time,"Inputs: A=%b, B=%b, CIN=%b | Outputs: SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);
             
    // Test all possible combinations of inputs
         A = 4'd0;  B = 4'd0;  CIN = 1'b0;
      #5 A = 4'd2;  B = 4'd1;  CIN = 1'b1;
      #5 A = 4'd4;  B = 4'd3;  CIN = 1'b0;
      #5 A = 4'd6;  B = 4'd5;  CIN = 1'b1;
      #5 A = 4'd8;  B = 4'd7;  CIN = 1'b0;
      #5 A = 4'd10; B = 4'd9;  CIN = 1'b1;
      #5 A = 4'd12; B = 4'd11; CIN = 1'b0;
      #5 A = 4'd14; B = 4'd13; CIN = 1'b1;
      #5 $stop;
    // End simulation
    $finish;
  end
endmodule

