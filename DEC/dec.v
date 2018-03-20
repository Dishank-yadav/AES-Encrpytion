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
module dec(SI , Sj  ,clk, round_key_1 ,round_key_2,round_key_3,round_no ,encrypt_en,/*key ,*/sboxip_1,sboxip_2,sboxip_3,sboxop_1,sboxop_2,sboxop_3,sboxop_2_1,sboxop_2_2,sboxop_2_3,done ,Si,Sjw);

input wire encrypt_en;
//wire [8:0] ew;
input wire [35:0] SI;
output reg [35:0] Si;
output reg [35:0] Sj;
output wire [35:0] Sjw;
//input wire [15:0] keyin; 
//input wire [143:0] key;
input wire [8:0] round_key_1 ,round_key_2 , round_key_3;
output reg [6:0] round_no;
output wire [8:0] sboxip_1,sboxip_2,sboxip_3;
input wire [8:0] sboxop_1,sboxop_2,sboxop_3;
input wire [8:0] sboxop_2_1,sboxop_2_2,sboxop_2_3;
///*output*/ reg [1:0] step;

 wire [8:0] sboxop_1_u,sboxop_2_u,sboxop_3_u;


input wire clk;
output reg done;
reg enc_en;


initial
 begin 
   Sj <= SI;
	Si = SI;
   round_no <= 92;/*
	sboxip_1 <= Si[27+:9];
	sboxip_2 <= Si[18+:9];
	sboxip_3 <= Si[9+:9];*/
	
	///step = 2'b11;
 end 
 
 /*assign ew[8] = encrypt_en;
 assign ew[7] = encrypt_en;
 assign ew[6] = encrypt_en;
 assign ew[5] = encrypt_en;
 assign ew[4] = encrypt_en;
 assign ew[3] = encrypt_en;
 assign ew[2] = encrypt_en;
 assign ew[1] = encrypt_en;
 assign ew[0] = encrypt_en;*/
 
 
 
 
 assign sboxop_1_u = ( round_no[0]  == 0)?  sboxop_1:
							/*( round_no  == 1)?*/ sboxop_2_1;
							
 assign sboxop_2_u = ( round_no[0]  == 0)?  sboxop_2:
						   /*( round_no  == 1)?*/ sboxop_2_2;
							
 assign sboxop_3_u = ( round_no[0]  == 0)?  sboxop_3:
						   /*( round_no  == 1)?*/ sboxop_2_3;


 
 
 
 assign sboxip_1 = Sjw[35-:9];
 assign sboxip_2 = Sjw[26-:9];
 assign sboxip_3 = Sjw[17-:9];
 
 assign Sjw[35-:9] =  (Si[8-:9]) /*& ew*/ ;
 assign Sjw[26-:9] = (round_key_1 ^ Si[35-:9] ^ sboxop_1_u)/* & ew*/;
 assign Sjw[17-:9] = (round_key_2 ^ Si[26-:9] ^ sboxop_2_u) /*& ew*/;
 assign Sjw[8-:9] = (round_key_3 ^ Si[17-:9] ^ sboxop_3_u) /*& ew*/;

always @ (posedge clk)
  begin
    if ( enc_en && encrypt_en && (round_no >= 2) && (round_no < 94)   )
	   begin
         Sj[35-:9] = Sjw[35-:9];
         Sj[26-:9] = Sjw[26-:9];
         Sj[17-:9] = Sjw[17-:9];
         Sj[8-:9] =  Sjw[8-:9] ;
			//#2;
			Si = Sj;	
         round_no <= round_no - 7'b0000011;/*
			sboxip_1 <= Si[27+:9];
         sboxip_2 <= Si[18+:9];
			sboxip_3 <= Si[9+:9];*/							  
	   end
	else if ( enc_en && encrypt_en && (round_no > 94) )
      begin
        done <= 1'b1;
        //enc_en <= 1'b0;	  
      end
   else
      begin
		  	Si = SI;
			enc_en = encrypt_en;
			round_no <= 92;
			Sj = SI;/*
			sboxip_1 <= Si[27+:9];
			sboxip_2 <= Si[18+:9];
			sboxip_3 <= Si[9+:9];*/
		   done <= 0;
		end 
      		
  end

endmodule
