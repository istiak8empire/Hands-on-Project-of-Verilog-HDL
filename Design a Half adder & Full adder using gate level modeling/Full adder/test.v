module test;
wire s,cout;
reg a,b,cin;
fulladder f1(s,cout,a,b,cin); 
initial
$monitor($time,"sum=%b,carry=%b,a=%b,b=%b,cin=%b",s,cout,a,b,cin);
initial
begin
a=1'b0;b=1'b0;cin=1'b0;
#2 a=1'b0;b=1'b0;cin=1'b1;
#2 a=1'b0;b=1'b1;cin=1'b0;
#2 a=1'b0;b=1'b1;cin=1'b1;
#2 a=1'b1;b=1'b0;cin=1'b0;
#2 a=1'b1;b=1'b0;cin=1'b1;
#2 a=1'b1;b=1'b1;cin=1'b0;
#2 a=1'b1;b=1'b1;cin=1'b1; 
#2 $stop;
end
endmodule
