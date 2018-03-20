`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:02:11 06/03/2017 
// Design Name: 
// Module Name:    key_gen 
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

/*module key_gen(key , i , keyi  );
	input wire [143:0] key;
	input wire [8:0] i;
	output wire [8:0] keyi;
	wire [8:0] j ;
	assign j = (((i - 9'b000000001) & 9'b000001111) << 3) + ((i - 9'b000000001) & 9'b000001111); 
	assign keyi = (key[j+:9])^i;
endmodule
*/

module key_gen(key , iII , keyI , keyII ,keyIII);
input wire [143:0] key;
input wire [6:0] iII;
wire [6:0] iI , iIII;
output wire [8:0] keyI;
output wire [8:0] keyII;
output wire [8:0] keyIII;
reg [3:0] jI ,jII ,jIII ;
/*output*/ reg [8:0] hII;
reg [8:0] hI ,hIII;
assign iI = iII -7'b0000001;
assign iIII = iII +7'b0000001;
always @ (iII)
 begin
   jII = (iII & 7'b0001111);/*+7'b0000001;*/
	jII = (5'b10000 - jII);
	hII = (jII <<3 ) +jII;
 end	
 always @ ( iIII)
 begin
	jIII = (iIII & 7'b0001111);/*+7'b0000001;*/
	jIII = (5'b10000 - jIII);
	hIII = (jIII <<3 ) +jIII;
 end	
 always @ (iI )
 begin
   jI = (iI & 7'b0001111);/*+7'b0000001;*/
	jI = (5'b10000 - jI);
	hI = (jI <<3 ) +jI;
 end	
///assign j = (((i - 9'b000000001) & 8'b00001111) << 3) + ((i - 9'b000000001) & 8'b00001111);  
 assign keyI  = (key[hI+:9] )^iI;
 assign keyII  = (key[hII+:9] )^(iII);
 assign keyIII  = (key[hIII+:9] )^(iIII);
endmodule



