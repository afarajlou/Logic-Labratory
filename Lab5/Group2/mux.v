`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:44 11/12/2023 
// Design Name: 
// Module Name:    mux 
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
module mux(
    input[1:0] s,
    input[3:0] w,
    output y
    );
	 
	 
	 wire ns0, ns1, a, b, c, d;
	 not(ns0, s[0]);
	 not(ns1, s[1]);
	 
	 and(a, w[0], ns0, ns1);
	 and(b, w[1], s[0], ns1);
	 and(c, w[2], ns0, s[1]);
	 and(d, w[3], s[0], s[1]);
	 
	 or(y, a, b, c, d);
	 


endmodule
