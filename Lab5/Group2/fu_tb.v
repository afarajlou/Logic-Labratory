`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:44:36 11/12/2023
// Design Name:   fu4x16
// Module Name:   D:/40131010/decoder/fu_tb.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fu4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fu_tb;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	fu4x16 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b1000;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0110;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b1011;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

