`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    13:26:49 12/06/05
// Design Name:    
// Module Name:    TrafficLight_TB
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module traffic_signal_control_TB; 

wire [1:0] MAIN_SIG, CNTRY_SIG;
reg CAR_ON_CNTRY_RD;

reg CLOCK,CLEAR;
traffic_signal_control_synthesis SC_synthsis (MAIN_SIG, CNTRY_SIG, CAR_ON_CNTRY_RD,CLOCK,CLEAR);

initial
	$monitor($time, " Main Sig = %b Country Sig = %b Car_on_cntry = %b",MAIN_SIG, CNTRY_SIG, CAR_ON_CNTRY_RD);

initial 
begin 
	CLOCK = 1'b0;
	forever # 5 CLOCK = ~CLOCK;
end

initial
begin
	CLEAR = 1'b1;
	repeat (5) @(negedge CLOCK)
	CLEAR = 1'b0;
end

initial 
begin
	CAR_ON_CNTRY_RD = 1'b0;
	
	repeat(20) @ (negedge CLOCK); CAR_ON_CNTRY_RD = 1'b1;
	repeat(10) @ (negedge CLOCK); CAR_ON_CNTRY_RD = 1'b0;
	
	repeat(20) @ (negedge CLOCK); CAR_ON_CNTRY_RD = 1'b1;
	repeat(10) @ (negedge CLOCK); CAR_ON_CNTRY_RD = 1'b0;
	
	repeat(20) @ (negedge CLOCK); CAR_ON_CNTRY_RD = 1'b1;
	repeat(10) @ (negedge CLOCK); CAR_ON_CNTRY_RD = 1'b0;
	
	repeat(20) @ (negedge CLOCK); $stop;
end

endmodule
