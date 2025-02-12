module top;
wire g,e,l;
reg a,b;
comparator c1(g,e,l,a,b);
initial
$monitor($time,"a=%b,b=%b,g=%b,e=%b,l=%b",a,b,g,e,l);
initial
begin
a=1'b0;b=1'b0;
#3 a=1'b0;b=1'b1;
#2 a=1'b1;b=1'b0;
#4 a=1'b1;b=1'b1;
#5 $stop;
 end
endmodule

