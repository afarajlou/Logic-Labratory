`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:02:02 11/12/2023
// Design Name:   mux
// Module Name:   D:/40131010/mux/mux_tb.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg [1:0] s;
	reg [3:0] w;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.s(s), 
		.w(w), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		s = 2'b00;
		w = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		s = 2'b00;
		w = 4'b0001;

		// Wait 100 ns for global reset to finish
		#100;
		s = 2'b01;
		w = 4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		s = 2'b01;
		w = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
		s = 2'b01;
		w = 4'b1000;

		// Wait 100 ns for global reset to finish
		#100;
		s = 2'b11;
		w = 4'b1000;

		// Wait 100 ns for global reset to finish
		#100;
		s = 2'b01;
		w = 4'b1111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

