module comparator(G,E,L,A,B);
output G,E,L;
input A,B;
assign G=(B?(A?0:0):(A?1:0));
assign E=(B?(A?1:0):(A?0:1));
assign L=(B?(A?0:1):(A?0:0));
endmodule
