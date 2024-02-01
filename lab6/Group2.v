`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:20 11/19/2023 
// Design Name: 
// Module Name:    comparator3bits 
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
module comparator3bits(
    input[2:0] a,
    input[2:0] b,
    output[2:0] o
    );
	 wire x1, x2, x3,
	 an1, an2, an3,
	 an4, an5, an6,
	 an7, na0, na1,
	 na2, nb0, x4,an8
	 , notan4, or1;
	 
	 not(na0, a[0]);
	 not(na1, a[1]);
	 not(na2, a[2]);
	 not(nb0, b[0]);
	 
	 xnor(x1, b[1], a[1]);
	 xnor(x2, b[2], a[2]);
	 xnor(x3, b[0], a[0]);
	 
	 and(an1, b[0], na0);
    and(an2, b[2], na2);
	 and(an3, b[1], na1);
	 and(an4, nb0, a[0]);
	 
	 and(an5, x1, x2);
	 and(an6, x2, an3);
	 
    and(an7, an5, an1);
	 xnor(x4, an2, an6);
	 and(o[1], an5, x3);
	 
	 not(notan4, an4);
	 and(an8, an5, notan4);
	 
	 or(or1, an6, an2);
	 
	 xnor(o[0], an7, x4);
	 xnor(o[2], an8, or1);
endmodule
