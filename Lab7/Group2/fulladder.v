`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:47 11/26/2023 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(
    input x,
    input y,
    input ci,
    output co,
    output sum
    );
	 
	 
	 wire x1, x2, x3;
	 xor #(10) (x1, x, y),
			     (sum, x1, ci);
    and #(5) (x2, x, y),
	          (x3, ci, x1);
    or #(5) (co, x2, x3);


endmodule
