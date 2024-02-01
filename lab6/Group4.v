`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:13 11/19/2023 
// Design Name: 
// Module Name:    moghayese 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module moghayese(a2,a1,a0,b2,b1,b0,L,E,G
    );
	 
	 input a2,a1,a0,b2,b1,b0;
	 output L,E,G;
	 wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13;
	 wire na0,na1,na2,nb0,nb1,nb2;
	 wire nw7;
	 xnor(w1,a1,b1);
	 xnor(w2,a2,b2);
	 not (na0,a0);
	 and(w3,b0,na0);
	 not(na2,a2);
	 and(w4,b2,na2);
	 not(na1,a1);
	 and(w5,b1,na1);
	 xnor(w6,b0,a0);
	 not(nb0,b0);
	 and(w7,nb0,a0);
	 and(w8,w1,w2);
	 and(w9,w5,w2);
	 and(w10,w8,w3);
	 xnor(w11,w9,w4);
	 and(E,w8,w6);
	 not(nw7,w7);
	 and(w12,w8,nw7);
	 or(w13,w9,w4);
	 xnor(G,w10,w11);
	 xnor(L,w12,w13);


endmodule
