`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:46 11/26/2023 
// Design Name: 
// Module Name:    adder4bit 
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
module adder4bit(
    input [3:0]a,
    input [3:0]b,
    input cin,
    input sel,
    output cout,
    output [3:0]sum
    );
	 wire [3:0] bx;
	 wire [2:0] ci;
	 
	 xor #(10)(bx[0], b[0], sel),
	     (bx[1], b[1], sel),
		  (bx[2], b[2], sel),
		  (bx[3], b[3], sel);

	 fulladder f1(a[0], bx[0], cin, ci[0], sum[0]),
				  f2(a[1], bx[1], ci[0], ci[1], sum[1]),
				  f3(a[2], bx[2], ci[1], ci[2], sum[2]),
				  f4(a[3], bx[3], ci[2], cout, sum[3]);
	 
	 


endmodule
