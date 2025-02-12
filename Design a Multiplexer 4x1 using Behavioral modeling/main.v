module mux4to1(out, i0, i1, i2, i3, s1, s0); 
output out; 
input i0, i1, i2, i3; 
input s1, s0; 
reg out; 
always @ (s1 or s0 or i0 or i1 or i2 or i3) 
begin 
case ({s1, s0}) 
2'b00: out=i0; 
2'b01: out=i1; 
2'b10: out=i2; 
2'b11: out=i3; 
default: out=1'b1; // default: $display 
(“Invalid Input”); 
endcase 
end 
endmodule 