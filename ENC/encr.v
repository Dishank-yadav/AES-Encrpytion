`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:33 06/04/2017 
// Design Name: 
// Module Name:    enc 
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
module encr (SI , Sj  ,clk, key1 ,key2 , key3 ,round_no ,encrypt_en,/*key ,*/sboxip_1,sboxip_2,sboxip_3,sboxop_1,sboxop_2,sboxop_3,sbox_op_2_1,sbox_op_2_2,sbox_op_2_3,done ,Si);

input wire encrypt_en;
input wire [35:0] SI;
output reg [35:0] Si;
output reg [35:0] Sj;
//input wire [15:0] keyin; 
//input wire [143:0] key;
input wire [8:0] key1 ,key2 , key3 ;
output reg [7:0] round_no;
output wire [8:0] sboxip_1,sboxip_2,sboxip_3;
input wire  [8:0] sboxop_1,sboxop_2,sboxop_3;
input wire [8:0] sbox_op_2_1,sbox_op_2_2,sbox_op_2_3;
///*output*/ reg [1:0] step;
input wire clk;
//input wire clk2;
output reg done;

//reg s_box_no ;
reg encr_en ;
//reg encr_en_edge ;
initial
 begin
//   s_box_no <= 0;
   Sj <= 0;
	Si = SI;
	round_no <= 8'b00000010;
	encr_en = 0;
   //round_no <= 8'b00000001;
	/*
	sboxip_1 <= Si[27+:9];
	sboxip_2 <= Si[18+:9];
	sboxip_3 <= Si[9+:9];*/
	
	///step = 2'b11;
 end 
 
 
 assign sboxip_1 = Si[9+:9];
 assign sboxip_2 = Si[18+:9];
 assign sboxip_3 = Si[27+:9];
 


always @ (posedge clk)
  begin
    if ( encrypt_en && encr_en && (round_no <= 92) && (round_no[0] == 0) )
	   begin
         Sj[27+:9] = key1 ^ Si[18+:9] ^ sboxop_3;
			Sj[18+:9] = key2 ^ Si[9+:9] ^ sboxop_2;
         Sj[9+:9] =  key3 ^ Si[0+:9] ^ sboxop_1;
         Sj[0+:9] =  Si[27+:9] ;

			//#2;
			Si = Sj;	
			 
         round_no <= round_no + 8'b00000011;/*
			sboxip_1 <= Si[27+:9];
         sboxip_2 <= Si[18+:9];
			sboxip_3 <= Si[9+:9];*/							  
	   end
	else if ( encrypt_en && encr_en && (round_no <= 92) && (round_no[0] == 1) )
	   begin
         Sj[27+:9] = key1 ^ Si[18+:9] ^ sbox_op_2_3;
			Sj[18+:9] = key2 ^ Si[9+:9] ^ sbox_op_2_2;
         Sj[9+:9] =  key3 ^ Si[0+:9] ^ sbox_op_2_1;
         Sj[0+:9] =  Si[27+:9] ;

			//#2;
			Si = Sj;	
         round_no <= round_no + 8'b00000011;/*
			sboxip_1 <= Si[27+:9];
         sboxip_2 <= Si[18+:9];
			sboxip_3 <= Si[9+:9];*/							  
	   end
	else if ( encrypt_en && encr_en && (round_no > 92) )
      begin
        done <= 1'b1;
        //encr_en = 0;		  
      end
   else
      begin
		   encr_en = encrypt_en;					
			Si = SI;
			round_no <= 8'b00000010;
			Sj = 0;
			done <= 0;					
					/*
					sboxip_1 <= Si[27+:9];
					sboxip_2 <= Si[18+:9];
					sboxip_3 <= Si[9+:9];*/	
		end 
      		
  end
 
/*always @ (posedge encrypt_en or posedge done)
 begin
   if (done == 1)
	   begin
		  encr_en_edge = 0;
		end
   else
     begin	
      encr_en_edge = encrypt_en;
	  end	
 end	 
*/
endmodule

