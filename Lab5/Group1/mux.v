module Mux4x1(s,w,y);
input [1:0]s;
input [3:0]w;
wire [1:0]s_not;
wire [3:0]a;
output y;
not n1(s_not[0],s[0]);
not n2(s_not[1],s[1]);
and a1(a[0],s_not[0],s_not[1],w[0]);
and a2(a[1],s_not[1],s[0],w[1]);
and a3(a[2],s_not[0],s[1],w[2]);
and a4(a[3],s[0],s[1],w[3]);
or o1(y,a[0],a[1],a[2],a[3]);
endmodule
