module decoder3(i,e,d);
	input [1:0] i ;
	input e;
	wire ni0,ni1;
	output[3:0] d;
	not n1(ni0,i[0]);
	not n2(ni1,i[1]);
	and a1(d[0],ni1,ni0,e);
	and a2(d[1],ni1,i[0],e);
	and a3(d[2],i[1],ni0,e);
	and a4(d[3],i[1],i[0],e);
	
endmodule