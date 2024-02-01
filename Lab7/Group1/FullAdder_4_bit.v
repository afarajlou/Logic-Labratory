`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:34 11/26/2023 
// Design Name: 
// Module Name:    FullAdder_4_bit 
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
module FullAdder_4_bit(A, B, sel, Cout, Sum);
	input [3:0] A, B;
	input sel;
	output [3:0] Sum;
	output Cout;
	wire [2:0] e;
	
	FullAdder_1_bit 
					F1 (A[0], B[0], sel, sel, e[0], Sum[0]),
					F2 (A[1], B[1], sel, e[0], e[1], Sum[1]),
					F3 (A[2], B[2], sel, e[1], e[2], Sum[2]),
					F4 (A[3], B[3], sel, e[2], Cout, Sum[3]);
endmodule


