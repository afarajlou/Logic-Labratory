`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:35 11/12/2023
// Design Name:   decoder4x16
// Module Name:   D:/40131010/decoder/decoder4x16_tb.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder4x16_tb;

	// Inputs
	reg [3:0] in;
	reg en;

	// Outputs
	wire [15:0] i;

	// Instantiate the Unit Under Test (UUT)
	decoder4x16 uut (
		.in(in), 
		.en(en), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		in = 4'b0000;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0000;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0001;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0010;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0011;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b0100;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b1000;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b1001;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in = 4'b1100;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

