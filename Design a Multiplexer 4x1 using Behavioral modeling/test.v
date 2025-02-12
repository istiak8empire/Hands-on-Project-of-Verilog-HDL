module top; 
wire Out; 
reg S1, S0; 
reg I0, I1, I2, I3; 
mux4to1 f1(Out, S1, S0, I0, I1, I2, I3); 
initial 
$monitor ($time, “Out=%b, I0=%b, I1=%b, 
I2=%b, I3=%b, S1=%b, S0=%b”, Out, I0, I1, 
I2, I3, S0, S1); 
initial 
begin 
I0=1’b1; I1=1’b0; I2=1’b1; I3=1’b0; 
S1=1’b0; S0=1’b0; 
#5 S1=1’b0; S0=1’b1; 
#5 S1=1’b1; S0=1’b0; 
#5 S1=1’b1; S0=1’b1; 
#5 $stop; 
end 
endmodule

