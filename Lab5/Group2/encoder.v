`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:34 11/12/2023 
// Design Name: 
// Module Name:    encoder 
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
module encoder(
    input [3:0] d,
    output [1:0]q,
    output v
    );
	 wire nd2, n;
	 not(nd2, d[2]);
	 and(n, nd2, d[1]);
	 or(q[0], d[3], n);
	 or(q[1], d[3], d[2]);
	 or(v, d[0], d[1], d[2], d[3]);

endmodule
