`timescale 1ns / 1ps
`include "key_gen.v"
`include "sbox.v"
`include "dec.v"
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
module d ( S_I , S_j  ,clk , encr_done , keyin , encrypt_en  /*, key_in_en*/ /*, round__no , round__key_1,round__key_2,round__key_3  ,si ,sbox_ip_1,sbox_ip_2,sbox_ip_3,sbox_op_1,sbox_op_2,sbox_op_3,sbox_2_op_1,sbox_2_op_2,sbox_2_op_3,Sjw*/);
	input wire encrypt_en;
	//input wire key_in_en; 
	input wire [35:0] S_I;
	output wire [35:0] S_j;
	output wire encr_done;	
	input wire [15:0] keyin; 
	input wire clk;
	
	/*output*/ wire [8:0] round__key_1,round__key_2,round__key_3;
	/*output*/ wire [6:0] round__no;
	/*output*/ wire [8:0] sbox_ip_1,sbox_ip_2,sbox_ip_3;
	/*output*/ wire [8:0] sbox_op_1,sbox_op_2,sbox_op_3;
	/*output*/ wire [8:0] sbox_2_op_1,sbox_2_op_2,sbox_2_op_3;	
	/*output*/ wire [35:0] si;
	/*output*/ wire [35:0] Sjw;
	
	reg [143:0] key;
	
	always @ (posedge encrypt_en )
	  begin
	    key = keyin;
	  end	 



	initial
	 begin 
		key = 0;
		//encrypt_en <= 1;		
	 end 
	 
		key_gen  KEY (.key(key) , .iII(round__no) , .keyI(round__key_1) , .keyII(round__key_2) ,.keyIII(round__key_3) );
		sbox sb_1 (.x(sbox_ip_1) , .y(sbox_op_1));
      sbox sb_2 (.x(sbox_ip_2) , .y(sbox_op_2));
      sbox sb_3 (.x(sbox_ip_3) , .y(sbox_op_3));	
      S_box_2 sb_2_1 (.x(sbox_ip_1) , .y(sbox_2_op_1));
      S_box_2 sb_2_2 (.x(sbox_ip_2) , .y(sbox_2_op_2));
      S_box_2 sb_2_3 (.x(sbox_ip_3) , .y(sbox_2_op_3));			
		dec  decr (.SI(S_I) , .Sj(S_j)  ,.clk(clk), .round_key_1(round__key_1) ,.round_key_2(round__key_2),.round_key_3(round__key_3),.round_no(round__no) ,.encrypt_en(encrypt_en),/*key ,*/.sboxip_1(sbox_ip_1),.sboxip_2(sbox_ip_2),.sboxip_3(sbox_ip_3),.sboxop_1(sbox_op_1),.sboxop_2(sbox_op_2),.sboxop_3(sbox_op_3),.sboxop_2_1(sbox_2_op_1),.sboxop_2_2(sbox_2_op_2),.sboxop_2_3(sbox_2_op_3),.done(encr_done),.Si(si),.Sjw(Sjw));
      //key_input ki (.clk(clk) , .key_in_en(key_in_en) , .key_in(keyin), .key(key) );
endmodule 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

