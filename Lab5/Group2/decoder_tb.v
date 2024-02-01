`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:47:24 11/12/2023
// Design Name:   decoder
// Module Name:   D:/40131010/decoder/decoder_tb.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_tb;

	// Inputs
	reg a;
	reg b;
	reg en;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.a(a), 
		.b(b), 
		.en(en), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		a = 0;
		b = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		a = 1;
		b = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		a = 1;
		b = 1;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
				a = 0;
		b = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		a = 0;
		b = 1;
		en =1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		a = 1;
		b = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Initialize Inputs
		a = 1;
		b = 1;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

