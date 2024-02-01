`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:57 11/19/2023 
// Design Name: 
// Module Name:    comparator3 
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
module comparator3( A, B, Lt, Eq, Gt );
		input [ 2:0 ] A;  
		input [ 2:0 ] B; 
		  
		
		output Lt; 
		output Eq;
		output Gt;
	
		
		assign Lt = ~((((( A[1] ~^ B[1] ) & ( A[2] ~^ B[2] )) & ( ~A[0] & B[0] )) ^ (( ~A[2] & B[2] ) ~^ (( ~A[1] & B[1] ) & ( A[2] ~^ B[2] ))))) ;
				  
	   assign Eq = ((( A[1] ~^ B[1] ) & ( A[2] ~^ B[2] )) & ( A[0] ~^ B[0] ));
				  
	   assign Gt = ~(((( A[1] ~^ B[1] ) & ( A[2] ~^ B[2] )) & ~( ~B[0] & A[0] )) ^ ((( B[1] & ~A[1] ) & ( A[2] ~^ B[2] )) | ( B[2] & ~A[2] )));
				  
endmodule
