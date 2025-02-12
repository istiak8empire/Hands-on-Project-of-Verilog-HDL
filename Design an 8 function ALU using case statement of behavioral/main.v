module alu(out,select,a,b); 
output [4:0]out; 
input [3:0] a,b; 
input [2:0] select; 
reg [4:0]out; 
always@(select,a,b) 
begin 
case(select) 
3’b000: out =a; 
3’b001: out =a+b; 
3’b010: out =a-b; 
3’b011: out =a/b; 
3’b100: out =a%b; 
3’b101: out =a<<1; 
3’b110: out =a>>1; 
3’b111: out =a>b; 
default:$display(“invalid”); 
endcase 
end 
endmodule