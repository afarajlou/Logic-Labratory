`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:13 11/12/2023 
// Design Name: 
// Module Name:    decoder4x16 
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
module decoder4x16(
	input [3:0] in,
	input en,
    output[15:0] i
    );
	 wire [3:0] d;
	 decoder dec1(in[3], in[2], en, d);
	 
	 decoder dec2(in[1], in[0], d[0], i[3:0]);
	 decoder dec3(in[1], in[0], d[1], i[7:4]);
	 decoder dec4(in[1], in[0], d[2], i[11:8]);
	 decoder dec5(in[1], in[0], d[3], i[15:12]);

endmodule
