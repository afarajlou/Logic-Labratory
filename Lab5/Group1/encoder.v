`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:45 11/12/2023 
// Design Name: 
// Module Name:    az5 
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
module az5(d,q,v);
	input [3:0]d;
	output [1:0]q;
	output v;
	wire nd2;
	wire nd2ad1;
	not n1(nd2,d[2]);
	and a1(nd2ad1,nd2,d[1]);
	or o1(q[0],d[3],nd2ad1);
	or o2(q[1],d[3],d[2]);
	or o3 (v,d[3],d[2],d[1],d[0]);

endmodule
