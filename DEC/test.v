`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:31:35 12/10/2017
// Design Name:   d
// Module Name:   F:/fpga/dec_36_wire/test.v
// Project Name:  dec_36_wire
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [35:0] S_I;
	reg clk;
	reg [143:0] keyin;
	reg encrypt_en;
	//reg key_in_en;

	// Outputs
	wire [35:0] S_j;
	wire encr_done;
	//wire [6:0] round__no;
	//wire [8:0] round__key_1;
	//wire [8:0] round__key_2;
	//wire [8:0] round__key_3;
	//wire [35:0] si;
	//wire [8:0] sbox_ip_1;
	//wire [8:0] sbox_ip_2;
	//wire [8:0] sbox_ip_3;
	//wire [8:0] sbox_op_1;
	//wire [8:0] sbox_op_2;
	//wire [8:0] sbox_op_3;
	//wire [8:0] sbox_op_2_1,sbox_op_2_2,sbox_op_2_3 ;
	//wire [35:0] Sjw;

	// Instantiate the Unit Under Test (UUT)
	d uut (
		.S_I(S_I), 
		.S_j(S_j), 
		.clk(clk), 
		.encr_done(encr_done), 
		.keyin(keyin), 
		.encrypt_en(encrypt_en) 
		/*.key_in_en(key_in_en),*/
		/*.round__no(round__no), 
		.round__key_1(round__key_1), 
		.round__key_2(round__key_2), 
		.round__key_3(round__key_3), 
		.si(si), 
		.sbox_ip_1(sbox_ip_1), 
		.sbox_ip_2(sbox_ip_2), 
		.sbox_ip_3(sbox_ip_3), 
		.sbox_op_1(sbox_op_1), 
		.sbox_op_2(sbox_op_2), 
		.sbox_op_3(sbox_op_3),
      .sbox_2_op_1(sbox_op_2_1),
		.sbox_2_op_2(sbox_op_2_2),
		.sbox_2_op_3(sbox_op_2_3),		
		.Sjw(Sjw)*/
	);

	initial begin
		// Initialize Inputs
		// Initialize Inputs
		S_I = 0;
		clk = 0;
		encrypt_en = 0;
		keyin = 144'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
		//key_in_en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		//key_in_en = 1;
		#3;
      //keyin = 0;
		//#5;
		//key_in_en =0;
		//#5;
		S_I = 36'h606AEBB19;
		keyin = 0;
		//#10;
		encrypt_en = 1;
		//#5;
		
		#800;
		encrypt_en = 0;
		#100;
		S_I = 36'hAAAAAAAAA;
		keyin = 144'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
		encrypt_en = 1;
		#800;
		encrypt_en = 0;
		#100;
		S_I = 36'h606AEBB19;
		keyin = 0;
		#20;
		encrypt_en = 1;

        
		// Add stimulus here

	end
	always 
	 begin
	  #5 clk = !clk;
	 end 
      
endmodule

