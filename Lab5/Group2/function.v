`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:31 11/12/2023 
// Design Name: 
// Module Name:    function 
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
module fu4x16(
    input [3:0] in,
    output out
    );
	 wire [15:0] dec_out;
	 decoder4x16 dec(in, 1, dec_out);
	 or(
		out,
		dec_out[2],
		dec_out[3],
		dec_out[5],
		dec_out[7],
		dec_out[11],
		dec_out[13]
	 );

endmodule
