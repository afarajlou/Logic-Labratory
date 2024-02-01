`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:29 11/12/2023
// Design Name:   encoder
// Module Name:   D:/40131010/encoder/encoder_tb.v
// Project Name:  encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder_tb;

	// Inputs
	reg [3:0] d;

	// Outputs
	wire [1:0] q;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.d(d), 
		.q(q), 
		.v(v)
	);

	initial begin
		// Initialize Inputs
		d = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b0001;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b0100;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1000;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b0110;

		// Wait 100 ns for global reset to finish
		#100;
		d = 4'b1001;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

