`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:58 11/12/2023 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input a,
    input b,
	 input en,
    output [3:0] y
    );
	 wire na, nb;
	 not (na, a);
	 not (nb, b);
	 
	 and(y[0], en, na, nb);
	 and(y[1], en, na, b);
	 and(y[2], en, a, nb);
	 and(y[3], en, a, b);


endmodule
