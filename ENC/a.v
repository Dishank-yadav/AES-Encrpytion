`timescale 1ns / 1ps
`include "key_gen.v"
`include "sbox.v"
`include "encr.v"
`include "S_box_2.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:12 06/03/2017 
// Design Name: 
// Module Name:    a 
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
////////////////////////////////////////////////////////////////////////////////////
module a ( S_I , S_j  ,clk , encr_done , keyin , encrypt_en /* , key_in_en *//*, round__no , round__key_1,round__key_2,round__key_3  ,si ,sbox_ip_1,sbox_ip_2,sbox_ip_3,sbox_op_1,sbox_op_2,sbox_op_3,key,sbox_op_2_1,sbox_op_2_2,sbox_op_2_3*/);
	input wire encrypt_en;
	//input wire key_in_en; 
	input wire [35:0] S_I;
	output wire [35:0] S_j;
	input wire [143:0] keyin; 
	/*output*/  reg [143:0] key;
	/*output*/ wire [8:0] round__key_1,round__key_2,round__key_3;
	/*output*/ wire [6:0] round__no;
	/*output*/ wire [8:0] sbox_ip_1,sbox_ip_2,sbox_ip_3;
	/*output*/ wire [8:0] sbox_op_1,sbox_op_2,sbox_op_3;
	/*output*/ wire [8:0] sbox_op_2_1,sbox_op_2_2,sbox_op_2_3;
	input wire clk;
	reg clk2;
	output wire encr_done;
	/*output*/ wire [35:0] si;

   //assign key = keyin;
   
	initial
	 begin 
		 key = 0;
		//encrypt_en <= 1;
		 clk2 = 1'b0;
	 end 
	 
	 always @ (posedge encrypt_en)
	  begin
	    key = keyin;
     end	
	 
		key_gen  KEY (.key(key) , .iII(round__no) , .keyI(round__key_1) , .keyII(round__key_2) ,.keyIII(round__key_3) );
		sbox sb_1 (.x(sbox_ip_1) , .y(sbox_op_1));
      sbox sb_2 (.x(sbox_ip_2) , .y(sbox_op_2));
      sbox sb_3 (.x(sbox_ip_3) , .y(sbox_op_3));
      S_box_2 sb_2_1 (.x(sbox_ip_1) , .y(sbox_op_2_1));
      S_box_2 sb_2_2 (.x(sbox_ip_2) , .y(sbox_op_2_2));
      S_box_2 sb_2_3 (.x(sbox_ip_3) , .y(sbox_op_2_3));		
		encr  encri (.SI(S_I) , .Sj(S_j)  ,.clk(clk),/*.clk2(clk2),*/ .key1(round__key_1) ,.key2(round__key_2),.key3(round__key_3),.round_no(round__no) ,.encrypt_en(encrypt_en),/*key ,*/.sboxip_1(sbox_ip_1),.sboxip_2(sbox_ip_2),.sboxip_3(sbox_ip_3),.sboxop_1(sbox_op_1),.sboxop_2(sbox_op_2),.sboxop_3(sbox_op_3),.sbox_op_2_1(sbox_op_2_1),.sbox_op_2_2(sbox_op_2_2),.sbox_op_2_3(sbox_op_2_3),.done(encr_done) ,.Si(si));
     // key_input ki (.clk(clk) , .key_in_en(key_in_en) , .key_in(keyin), .key(key) );
endmodule 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

