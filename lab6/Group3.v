`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:33 11/19/2023
// Design Name:   comparator3bits
// Module Name:   C:/Users/Admin/Desktop/Group3/report_6/comparator3_tb.v
// Project Name:  report_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator3bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator3_tb;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg L;
	reg G;
	reg Q;

	// Outputs
	wire Lt;
	wire Eq;
	wire Gt;

	// Instantiate the Unit Under Test (UUT)
	comparator3bits uut (
		.A(A), 
		.B(B), 
		.L(L), 
		.G(G), 
		.Q(Q), 
		.Lt(Lt), 
		.Eq(Eq), 
		.Gt(Gt)
	);

	initial begin
		// Initialize Inputs
		A = 3'b100;
		B = 3'b011;
		L = 0;
		G = 0;
		Q = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		  
		A = 3'b000;
		B = 3'b011;
		L = 0;
		G = 0;
		Q = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		
		A = 3'b010;
		B = 3'b010;
		L = 0;
		G = 0;
		Q = 1;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

