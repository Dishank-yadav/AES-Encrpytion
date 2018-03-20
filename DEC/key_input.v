`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:52 06/05/2017 
// Design Name: 
// Module Name:    key_input 
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
module key_input(clk , key_in_en , key_in, key );
 input wire [15:0] key_in;
 input wire key_in_en ;
 input wire clk;
 output reg  [143:0] key;
 reg [4:0] cnt;
 
 initial
   begin
	  cnt = 0;
	  key = 0;
	end  
 
 always @ (negedge key_in_en or posedge clk)
  begin
   if ( key_in_en == 0)
	  begin
      cnt = 0;
	  end
	else
     begin	
	   cnt = cnt + 1;
	  end	    
  end 
 
 always @ ( posedge clk )
  begin
   if ( (key_in_en == 1) && (cnt <= 9))
     begin
      key = key << 16 ;
      key[0+:16] = key_in;
	  end
  end	  

endmodule
