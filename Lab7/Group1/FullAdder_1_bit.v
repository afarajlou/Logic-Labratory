`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:48 11/26/2023 
// Design Name: 
// Module Name:    FullAdder_1_bit 
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
module FullAdder_1_bit(a, b, sel, Cin, Cout, Sum);
	input a, b, sel, Cin;
	output Sum, Cout;
	wire Xor1, Xor2, And1, And2;
	
	xor
		#(10) X1 (Xor1, b, sel),
		X2 (Xor2, a, Xor1),
		X3 (Sum, Xor2, Cin);
	
	and
		#(5) A1 (And1, Xor2, Cin),
		A2 (And2, a, Xor1);
	
	or #(5) O1(Cout, And1, And2);
endmodule


