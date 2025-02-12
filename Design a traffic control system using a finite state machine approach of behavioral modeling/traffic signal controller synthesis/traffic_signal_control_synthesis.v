`timescale 1ns / 1ps
//`define TRUE 1'b1
//`define FALSE 1'b0

//`define Y2RDELAY 3
//`define R2GDELAY 2

module traffic_signal_control_synthesis (hwy, cntry, X, clock, clear);
 
    	output [1:0] hwy;
    	output [1:0] cntry;

    	input X;
    	input clock;
    	input clear;

	reg [1:0] hwy, cntry;

	parameter 	RED 	= 2'd0,
	 		YELLOW 	= 2'd1,
			GREEN 	= 2'd2;
	 
	parameter 	S0 	= 5'b0000,
	 		S1 	= 5'b0001,
			S1_w1 	= 5'b0010,
			S1_w2	= 5'b0011,
			S1_w3	= 5'b0100,
			S2 	= 5'b0101,
			S2_w1 	= 5'b0110,
			S2_w2 	= 5'b0111,
 			S2_w3 	= 5'b1000,
 			S3 	= 5'b1001,
			S4 	= 5'b1010,
			S4_w1 	= 5'b1011, 
			S4_w2 	= 5'b1100,
	 		S4_w3 	= 5'b1101;




				  
	 reg [3:0] state;
	 reg [3:0] next_state;
	 
	always@(posedge clock)
	if (clear)
			state <= S0;
		else
			state <= next_state;

	always @(state)
	begin
	 	hwy = GREEN;
		cntry = RED;
		case(state)
			S0: ;
			S1: hwy = YELLOW;
			S2: hwy = RED;
			S3: begin
					hwy = RED;
					cntry = GREEN;
				 end
			S4: begin
					hwy = RED;
					cntry = GREEN;
				 end
		endcase
	end 		
	
	always @(state or X)
	begin
		case (state)
			S0: if (X)
					next_state = S1;
				else
					next_state = S0;	
			S1: 
				begin
				 // repeat(`Y2RDELAY) @(posedge clock);
				 // next_state = S2;
				  next_state = S1_w1;
				end

			S1_w1 : next_state = S2_w2;
  			S1_w2 : next_state = S1_w3;
			S1_w3 : next_state = S2;

			S2: 
				begin 
				 // repeat(`R2GDELAY) @(posedge clock);
				 //@(posedge clock);
				 next_state = S2_w1;
				end
			S2_w1 :  next_state = S2_w2;
			S2_w2 :  next_state = S2_w3;
 			S2_w3 :  next_state = S3;

			S3: if (X)
					next_state = S3;
				else
					next_state = S4;
			S4: 
				begin
				// repeat (`Y2RDELAY) @(posedge clock);
		 		//  next_state = S0;
 		 		next_state = S4_w1;
 				end
			S4_w1 :  next_state = S4_w2;
			S4_w2 :  next_state = S4_w3;
	 		S4_w3 :  next_state = S0;
	  	 default: next_state = S0;	
		endcase
	end


endmodule

