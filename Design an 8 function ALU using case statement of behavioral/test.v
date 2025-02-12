module stimulus; 
wire [4:0]out; 
reg [3:0] a,b; 
reg [2:0] S; 
alu a1(out,S,a,b); 
initial 
$monitor($time,“out=%b,a=%b,b=%b, 
select=%b”, out, a,b,S); 
initial 
begin 
a=4’b1010; b=4’b0101; 
S=3’b000; 
#5 S=3’b001; 
#5 S=3’b010; 
#5 S=3’b011; 
#5 S=3’b100; 
#5 S=3’b101; 
#5 S=3’b110; 
#5 S=3’b111; 
#5 $stop; 
end 
endmodule

