decoder 2*4

module test5(A,B,EN,D);

    input A, B, EN;
	 output [0:3] D;
	 

	 
	 assign 
	 D[0] = ~A & ~B & EN ,
	 D[1] = ~A & B & EN , 
	 D[2] = A & ~B & EN ,
	 D[3] = A & B & EN ;

endmodule

*******************************

multiplexer

module Mp( S, I , y );

		input [ 1:2 ] S ;
		input [ 0:3 ] I ;
		output y ;
		
		wire [ 1:4 ] e ;
			
		assign
		
		     e[1] = ~S[1] & ~S[2] & I[0] ,
			  e[2] = ~S[1] &  S[2] & I[1] ,
			  e[3] =  S[1] & ~S[2] & I[2] ,
			  e[4] =  S[1] &  S[2] & I[3] ,
			  y  =  e[1] |  e[2] | e[3] | e[4] ;
			  
endmodule

*****************************************

priority decoder

module PE( D, Q, v);

		input [3:0] D;
		output [1:0] Q;
		output v;
		wire e;
		
		assign
				e = ~D[2] & D[1],
				Q[0] = e | D[3],
				Q[1] = D[3] | D[2],
				v = D[0] | D[1] | D[2] | D[3];
				
endmodule

*****************************************************
decoder 4*16

module DE4to16(I, EN,out);
      
			input [3:0] I;
			input EN;
			output [15:0] out;
	 
	 wire [3:0] e;
	 
	 
	 test5 g1(I[0], I[1], EN, e);
	 test5 g2(I[2], I[3], e[0], out[3:0]);
	 test5 g3(I[2], I[3], e[1], out[7:4]);
	 test5 g4(I[2], I[3], e[2], out[11:8]);
	 test5 g5(I[2], I[3], e[3], out[15:12]);

endmodule

***********************************************
W


module W(I, EN, out);
	
	input [3:0] I;
	input EN;
	output out;
	
	wire [15:0] o;
	
	DE4to16 h1(I, EN,o);	
   or (out, o[2], o[3], o[5], o[7], o[11], o[13]);

endmodule
