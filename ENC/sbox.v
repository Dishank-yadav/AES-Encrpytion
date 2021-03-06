`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:55 05/31/2017 
// Design Name: 
// Module Name:    sbox 
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
module sbox(x,y);

input wire [8:0]x;
output [8:0]y;

assign y[0] = (x[0]&x[4])^(x[0]&x[5])^(x[1]&x[5])^(x[1]&x[6])^(x[2]&x[6])^(x[2]&x[7])^(x[3]&x[7])^(x[3]&x[8])^(x[4]&x[8])^1'b1;
assign y[1] = (x[0]&x[2]) ^ x[3] ^(x[1]&x[3]) ^ (x[2]&x[3]) ^ (x[3]&x[4]) ^ (x[4]&x[5]) ^ (x[0]&x[6]) ^ (x[2]&x[6]) ^ x[7] ^(x[0]&x[8]) ^ (x[3]&x[8]) ^ (x[5]&x[8]) ^ 1'b1;
assign y[2] = (x[0]&x[1]) ^ (x[1]&x[3]) ^ x[4] ^ (x[0]&x[4]) ^ (x[2]&x[4]) ^ (x[3]&x[4]) ^ (x[4]&x[5]) ^ (x[0]&x[6]) ^ (x[5]&x[6]) ^ (x[1]&x[7]) ^ (x[3]&x[7]) ^ x[8];
assign y[3] = (x[0]) ^ (x[1]&x[2]) ^ (x[2]&x[4]) ^ x[5] ^ (x[1]&x[5]) ^ (x[3]&x[5]) ^ (x[4]&x[5]) ^ (x[5]&x[6]) ^ (x[1]&x[7]) ^ (x[6]&x[7]) ^ (x[2]&x[8]) ^ (x[4]&x[8]);
assign y[4] = x[1] ^ (x[0]&x[3]) ^ (x[2]&x[3]) ^ (x[0]&x[5]) ^ (x[3]&x[5]) ^ (x[6]) ^ (x[2]&x[6]) ^ (x[4]&x[6]) ^ (x[5]&x[6]) ^ (x[6]&x[7]) ^ (x[2]&x[8]) ^ (x[7]&x[8]);
assign y[5] = x[2] ^ (x[0]&x[3]) ^ (x[1]&x[4]) ^ (x[3]&x[4]) ^ (x[1]&x[6]) ^ (x[4]&x[6]) ^ (x[7]) ^ (x[3]&x[7]) ^ (x[5]&x[7]) ^ (x[6]&x[7]) ^ (x[0]&x[8]) ^ (x[7]&x[8]);
assign y[6] = (x[0]&x[1]) ^ x[3] ^ (x[1]&x[4]) ^ (x[2]&x[5]) ^ (x[4]&x[5]) ^ (x[2]&x[7]) ^ (x[5]&x[7]) ^ x[8] ^ (x[0]&x[8]) ^ (x[4]&x[8]) ^ (x[6]&x[8]) ^ (x[7]&x[8]) ^ 1'b1;
assign y[7] = x[1] ^ (x[0]&x[1]) ^ (x[1]&x[2]) ^ (x[2]&x[3]) ^ (x[0]&x[4]) ^ (x[5]) ^ (x[1]&x[6]) ^ (x[3]&x[6]) ^ (x[0]&x[7]) ^ (x[4]&x[7]) ^ (x[6]&x[7]) ^ (x[1]&x[8]) ^ 1'b1;
assign y[8] = x[0] ^ (x[0]&x[1]) ^ (x[1]&x[2]) ^ (x[4]) ^ (x[0]&x[5]) ^ (x[2]&x[5]) ^ (x[3]&x[6]) ^ (x[5]&x[6]) ^ (x[0]&x[7]) ^ (x[0]&x[8]) ^ (x[3]&x[8]) ^ (x[6]&x[8]) ^ 1'b1;

endmodule
