`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:51 08/28/2017 
// Design Name: 
// Module Name:    S_box_2 
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


module S_box_2(x,y);

 input wire [8:0]x;
 output [8:0]y;

assign y = (  x    ==   9'h000  )?  9'h000:
(  x    ==   9'h001  )?  9'h058:
(  x    ==   9'h002  )?  9'h1AE:
(  x    ==   9'h003  )?  9'h066:
(  x    ==   9'h004  )?  9'h05A:
(  x    ==   9'h005  )?  9'h1E1:
(  x    ==   9'h006  )?  9'h184:
(  x    ==   9'h007  )?  9'h06E:
(  x    ==   9'h008  )?  9'h182:
(  x    ==   9'h009  )?  9'h11B:
(  x    ==   9'h00A  )?  9'h01D:
(  x    ==   9'h00B  )?  9'h01C:
(  x    ==   9'h00C  )?  9'h0B7:
(  x    ==   9'h00D  )?  9'h0A1:
(  x    ==   9'h00E  )?  9'h116:
(  x    ==   9'h00F  )?  9'h0AF:
(  x    ==   9'h010  )?  9'h0AD:
(  x    ==   9'h011  )?  9'h186:
(  x    ==   9'h012  )?  9'h100:
(  x    ==   9'h013  )?  9'h0CA:
(  x    ==   9'h014  )?  9'h148:
(  x    ==   9'h015  )?  9'h157:
(  x    ==   9'h016  )?  9'h079:
(  x    ==   9'h017  )?  9'h14A:
(  x    ==   9'h018  )?  9'h0F1:
(  x    ==   9'h019  )?  9'h0FF:
(  x    ==   9'h01A  )?  9'h162:
(  x    ==   9'h01B  )?  9'h18D:
(  x    ==   9'h01C  )?  9'h098:
(  x    ==   9'h01D  )?  9'h1CC:
(  x    ==   9'h01E  )?  9'h19E:
(  x    ==   9'h01F  )?  9'h1B8:
(  x    ==   9'h020  )?  9'h1A5:
(  x    ==   9'h021  )?  9'h0EA:
(  x    ==   9'h022  )?  9'h0E3:
(  x    ==   9'h023  )?  9'h034:
(  x    ==   9'h024  )?  9'h06F:
(  x    ==   9'h025  )?  9'h171:
(  x    ==   9'h026  )?  9'h0B9:
(  x    ==   9'h027  )?  9'h068:
(  x    ==   9'h028  )?  9'h0BB:
(  x    ==   9'h029  )?  9'h09F:
(  x    ==   9'h02A  )?  9'h0AB:
(  x    ==   9'h02B  )?  9'h0DE:
(  x    ==   9'h02C  )?  9'h07C:
(  x    ==   9'h02D  )?  9'h1AA:
(  x    ==   9'h02E  )?  9'h05E:
(  x    ==   9'h02F  )?  9'h04E:
(  x    ==   9'h030  )?  9'h1E0:
(  x    ==   9'h031  )?  9'h074:
(  x    ==   9'h032  )?  9'h14F:
(  x    ==   9'h033  )?  9'h065:
(  x    ==   9'h034  )?  9'h052:
(  x    ==   9'h035  )?  9'h0B4:
(  x    ==   9'h036  )?  9'h112:
(  x    ==   9'h037  )?  9'h198:
(  x    ==   9'h038  )?  9'h10F:
(  x    ==   9'h039  )?  9'h01F:
(  x    ==   9'h03A  )?  9'h036:
(  x    ==   9'h03B  )?  9'h02C:
(  x    ==   9'h03C  )?  9'h14C:
(  x    ==   9'h03D  )?  9'h197:
(  x    ==   9'h03E  )?  9'h1DB:
(  x    ==   9'h03F  )?  9'h03A:
(  x    ==   9'h040  )?  9'h1FA:
(  x    ==   9'h041  )?  9'h0CC:
(  x    ==   9'h042  )?  9'h09A:
(  x    ==   9'h043  )?  9'h067:
(  x    ==   9'h044  )?  9'h1A3:
(  x    ==   9'h045  )?  9'h0FC:
(  x    ==   9'h046  )?  9'h03E:
(  x    ==   9'h047  )?  9'h0E1:
(  x    ==   9'h048  )?  9'h146:
(  x    ==   9'h049  )?  9'h16F:
(  x    ==   9'h04A  )?  9'h01B:
(  x    ==   9'h04B  )?  9'h0E8:
(  x    ==   9'h04C  )?  9'h0A2:
(  x    ==   9'h04D  )?  9'h15A:
(  x    ==   9'h04E  )?  9'h08D:
(  x    ==   9'h04F  )?  9'h07F:
(  x    ==   9'h050  )?  9'h102:
(  x    ==   9'h051  )?  9'h18F:
(  x    ==   9'h052  )?  9'h00E:
(  x    ==   9'h053  )?  9'h02B:
(  x    ==   9'h054  )?  9'h118:
(  x    ==   9'h055  )?  9'h01E:
(  x    ==   9'h056  )?  9'h0AE:
(  x    ==   9'h057  )?  9'h1CD:
(  x    ==   9'h058  )?  9'h077:
(  x    ==   9'h059  )?  9'h17F:
(  x    ==   9'h05A  )?  9'h105:
(  x    ==   9'h05B  )?  9'h159:
(  x    ==   9'h05C  )?  9'h088:
(  x    ==   9'h05D  )?  9'h089:
(  x    ==   9'h05E  )?  9'h1DF:
(  x    ==   9'h05F  )?  9'h140:
(  x    ==   9'h060  )?  9'h006:
(  x    ==   9'h061  )?  9'h010:
(  x    ==   9'h062  )?  9'h08E:
(  x    ==   9'h063  )?  9'h1FE:
(  x    ==   9'h064  )?  9'h1EE:
(  x    ==   9'h065  )?  9'h08A:
(  x    ==   9'h066  )?  9'h048:
(  x    ==   9'h067  )?  9'h192:
(  x    ==   9'h068  )?  9'h002:
(  x    ==   9'h069  )?  9'h1CE:
(  x    ==   9'h06A  )?  9'h1B9:
(  x    ==   9'h06B  )?  9'h1E2:
(  x    ==   9'h06C  )?  9'h001:
(  x    ==   9'h06D  )?  9'h132:
(  x    ==   9'h06E  )?  9'h1E8:
(  x    ==   9'h06F  )?  9'h170:
(  x    ==   9'h070  )?  9'h11C:
(  x    ==   9'h071  )?  9'h047:
(  x    ==   9'h072  )?  9'h091:
(  x    ==   9'h073  )?  9'h1DC:
(  x    ==   9'h074  )?  9'h129:
(  x    ==   9'h075  )?  9'h016:
(  x    ==   9'h076  )?  9'h08B:
(  x    ==   9'h077  )?  9'h0ED:
(  x    ==   9'h078  )?  9'h07B:
(  x    ==   9'h079  )?  9'h176:
(  x    ==   9'h07A  )?  9'h154:
(  x    ==   9'h07B  )?  9'h11E:
(  x    ==   9'h07C  )?  9'h05B:
(  x    ==   9'h07D  )?  9'h049:
(  x    ==   9'h07E  )?  9'h0E9:
(  x    ==   9'h07F  )?  9'h0B5:
(  x    ==   9'h080  )?  9'h1E5:
(  x    ==   9'h081  )?  9'h155:
(  x    ==   9'h082  )?  9'h04B:
(  x    ==   9'h083  )?  9'h1F9:
(  x    ==   9'h084  )?  9'h0DF:
(  x    ==   9'h085  )?  9'h178:
(  x    ==   9'h086  )?  9'h0C8:
(  x    ==   9'h087  )?  9'h0BD:
(  x    ==   9'h088  )?  9'h02E:
(  x    ==   9'h089  )?  9'h1B7:
(  x    ==   9'h08A  )?  9'h06C:
(  x    ==   9'h08B  )?  9'h022:
(  x    ==   9'h08C  )?  9'h0EF:
(  x    ==   9'h08D  )?  9'h128:
(  x    ==   9'h08E  )?  9'h183:
(  x    ==   9'h08F  )?  9'h168:
(  x    ==   9'h090  )?  9'h150:
(  x    ==   9'h091  )?  9'h152:
(  x    ==   9'h092  )?  9'h0BC:
(  x    ==   9'h093  )?  9'h1DA:
(  x    ==   9'h094  )?  9'h04F:
(  x    ==   9'h095  )?  9'h1D8:
(  x    ==   9'h096  )?  9'h053:
(  x    ==   9'h097  )?  9'h10D:
(  x    ==   9'h098  )?  9'h1F8:
(  x    ==   9'h099  )?  9'h1BA:
(  x    ==   9'h09A  )?  9'h0E0:
(  x    ==   9'h09B  )?  9'h0F4:
(  x    ==   9'h09C  )?  9'h1AD:
(  x    ==   9'h09D  )?  9'h175:
(  x    ==   9'h09E  )?  9'h185:
(  x    ==   9'h09F  )?  9'h120:
(  x    ==   9'h0A0  )?  9'h1DE:
(  x    ==   9'h0A1  )?  9'h0D4:
(  x    ==   9'h0A2  )?  9'h1C6:
(  x    ==   9'h0A3  )?  9'h031:
(  x    ==   9'h0A4  )?  9'h00C:
(  x    ==   9'h0A5  )?  9'h050:
(  x    ==   9'h0A6  )?  9'h05F:
(  x    ==   9'h0A7  )?  9'h109:
(  x    ==   9'h0A8  )?  9'h1B2:
(  x    ==   9'h0A9  )?  9'h19A:
(  x    ==   9'h0AA  )?  9'h1D9:
(  x    ==   9'h0AB  )?  9'h0BE:
(  x    ==   9'h0AC  )?  9'h12B:
(  x    ==   9'h0AD  )?  9'h1FD:
(  x    ==   9'h0AE  )?  9'h0CF:
(  x    ==   9'h0AF  )?  9'h199:
(  x    ==   9'h0B0  )?  9'h142:
(  x    ==   9'h0B1  )?  9'h119:
(  x    ==   9'h0B2  )?  9'h051:
(  x    ==   9'h0B3  )?  9'h0C7:
(  x    ==   9'h0B4  )?  9'h195:
(  x    ==   9'h0B5  )?  9'h060:
(  x    ==   9'h0B6  )?  9'h035:
(  x    ==   9'h0B7  )?  9'h193:
(  x    ==   9'h0B8  )?  9'h02D:
(  x    ==   9'h0B9  )?  9'h08F:
(  x    ==   9'h0BA  )?  9'h1E9:
(  x    ==   9'h0BB  )?  9'h1CA:
(  x    ==   9'h0BC  )?  9'h190:
(  x    ==   9'h0BD  )?  9'h11F:
(  x    ==   9'h0BE  )?  9'h1EA:
(  x    ==   9'h0BF  )?  9'h023:
(  x    ==   9'h0C0  )?  9'h018:
(  x    ==   9'h0C1  )?  9'h094:
(  x    ==   9'h0C2  )?  9'h126:
(  x    ==   9'h0C3  )?  9'h1EB:
(  x    ==   9'h0C4  )?  9'h069:
(  x    ==   9'h0C5  )?  9'h122:
(  x    ==   9'h0C6  )?  9'h0C0:
(  x    ==   9'h0C7  )?  9'h064:
(  x    ==   9'h0C8  )?  9'h0F8:
(  x    ==   9'h0C9  )?  9'h0B2:
(  x    ==   9'h0CA  )?  9'h1D2:
(  x    ==   9'h0CB  )?  9'h191:
(  x    ==   9'h0CC  )?  9'h17D:
(  x    ==   9'h0CD  )?  9'h1C9:
(  x    ==   9'h0CE  )?  9'h027:
(  x    ==   9'h0CF  )?  9'h011:
(  x    ==   9'h0D0  )?  9'h02F:
(  x    ==   9'h0D1  )?  9'h103:
(  x    ==   9'h0D2  )?  9'h12A:
(  x    ==   9'h0D3  )?  9'h133:
(  x    ==   9'h0D4  )?  9'h17E:
(  x    ==   9'h0D5  )?  9'h153:
(  x    ==   9'h0D6  )?  9'h0D6:
(  x    ==   9'h0D7  )?  9'h104:
(  x    ==   9'h0D8  )?  9'h1D6:
(  x    ==   9'h0D9  )?  9'h081:
(  x    ==   9'h0DA  )?  9'h073:
(  x    ==   9'h0DB  )?  9'h097:
(  x    ==   9'h0DC  )?  9'h0A7:
(  x    ==   9'h0DD  )?  9'h014:
(  x    ==   9'h0DE  )?  9'h12C:
(  x    ==   9'h0DF  )?  9'h1AB:
(  x    ==   9'h0E0  )?  9'h106:
(  x    ==   9'h0E1  )?  9'h1C7:
(  x    ==   9'h0E2  )?  9'h137:
(  x    ==   9'h0E3  )?  9'h0E5:
(  x    ==   9'h0E4  )?  9'h026:
(  x    ==   9'h0E5  )?  9'h1C0:
(  x    ==   9'h0E6  )?  9'h021:
(  x    ==   9'h0E7  )?  9'h1F1:
(  x    ==   9'h0E8  )?  9'h076:
(  x    ==   9'h0E9  )?  9'h038:
(  x    ==   9'h0EA  )?  9'h03F:
(  x    ==   9'h0EB  )?  9'h0F9:
(  x    ==   9'h0EC  )?  9'h0D9:
(  x    ==   9'h0ED  )?  9'h087:
(  x    ==   9'h0EE  )?  9'h163:
(  x    ==   9'h0EF  )?  9'h1ED:
(  x    ==   9'h0F0  )?  9'h03C:
(  x    ==   9'h0F1  )?  9'h0C4:
(  x    ==   9'h0F2  )?  9'h166:
(  x    ==   9'h0F3  )?  9'h055:
(  x    ==   9'h0F4  )?  9'h147:
(  x    ==   9'h0F5  )?  9'h07E:
(  x    ==   9'h0F6  )?  9'h044:
(  x    ==   9'h0F7  )?  9'h0E6:
(  x    ==   9'h0F8  )?  9'h0D2:
(  x    ==   9'h0F9  )?  9'h113:
(  x    ==   9'h0FA  )?  9'h19B:
(  x    ==   9'h0FB  )?  9'h083:
(  x    ==   9'h0FC  )?  9'h10B:
(  x    ==   9'h0FD  )?  9'h1FF:
(  x    ==   9'h0FE  )?  9'h0EC:
(  x    ==   9'h0FF  )?  9'h0FA:
(  x    ==   9'h100  )?  9'h0D8:
(  x    ==   9'h101  )?  9'h00F:
(  x    ==   9'h102  )?  9'h02A:
(  x    ==   9'h103  )?  9'h1C2:
(  x    ==   9'h104  )?  9'h10A:
(  x    ==   9'h105  )?  9'h028:
(  x    ==   9'h106  )?  9'h0FE:
(  x    ==   9'h107  )?  9'h1CB:
(  x    ==   9'h108  )?  9'h15E:
(  x    ==   9'h109  )?  9'h1F5:
(  x    ==   9'h10A  )?  9'h19C:
(  x    ==   9'h10B  )?  9'h16C:
(  x    ==   9'h10C  )?  9'h1E6:
(  x    ==   9'h10D  )?  9'h1D5:
(  x    ==   9'h10E  )?  9'h062:
(  x    ==   9'h10F  )?  9'h10E:
(  x    ==   9'h110  )?  9'h075:
(  x    ==   9'h111  )?  9'h0F3:
(  x    ==   9'h112  )?  9'h14D:
(  x    ==   9'h113  )?  9'h06A:
(  x    ==   9'h114  )?  9'h042:
(  x    ==   9'h115  )?  9'h03B:
(  x    ==   9'h116  )?  9'h19F:
(  x    ==   9'h117  )?  9'h12F:
(  x    ==   9'h118  )?  9'h092:
(  x    ==   9'h119  )?  9'h173:
(  x    ==   9'h11A  )?  9'h1F6:
(  x    ==   9'h11B  )?  9'h131:
(  x    ==   9'h11C  )?  9'h196:
(  x    ==   9'h11D  )?  9'h11D:
(  x    ==   9'h11E  )?  9'h078:
(  x    ==   9'h11F  )?  9'h15D:
(  x    ==   9'h120  )?  9'h111:
(  x    ==   9'h121  )?  9'h1CF:
(  x    ==   9'h122  )?  9'h06D:
(  x    ==   9'h123  )?  9'h0A3:
(  x    ==   9'h124  )?  9'h0F5:
(  x    ==   9'h125  )?  9'h008:
(  x    ==   9'h126  )?  9'h117:
(  x    ==   9'h127  )?  9'h0EE:
(  x    ==   9'h128  )?  9'h115:
(  x    ==   9'h129  )?  9'h1B5:
(  x    ==   9'h12A  )?  9'h043:
(  x    ==   9'h12B  )?  9'h085:
(  x    ==   9'h12C  )?  9'h0F2:
(  x    ==   9'h12D  )?  9'h0D7:
(  x    ==   9'h12E  )?  9'h1BF:
(  x    ==   9'h12F  )?  9'h004:
(  x    ==   9'h130  )?  9'h13F:
(  x    ==   9'h131  )?  9'h15F:
(  x    ==   9'h132  )?  9'h1AF:
(  x    ==   9'h133  )?  9'h071:
(  x    ==   9'h134  )?  9'h0BA:
(  x    ==   9'h135  )?  9'h1C4:
(  x    ==   9'h136  )?  9'h0AC:
(  x    ==   9'h137  )?  9'h056:
(  x    ==   9'h138  )?  9'h0E7:
(  x    ==   9'h139  )?  9'h0E2:
(  x    ==   9'h13A  )?  9'h0C1:
(  x    ==   9'h13B  )?  9'h0DB:
(  x    ==   9'h13C  )?  9'h101:
(  x    ==   9'h13D  )?  9'h1C8:
(  x    ==   9'h13E  )?  9'h0A9:
(  x    ==   9'h13F  )?  9'h110:
(  x    ==   9'h140  )?  9'h181:
(  x    ==   9'h141  )?  9'h138:
(  x    ==   9'h142  )?  9'h00B:
(  x    ==   9'h143  )?  9'h1C1:
(  x    ==   9'h144  )?  9'h0A8:
(  x    ==   9'h145  )?  9'h1D4:
(  x    ==   9'h146  )?  9'h020:
(  x    ==   9'h147  )?  9'h1A4:
(  x    ==   9'h148  )?  9'h1E4:
(  x    ==   9'h149  )?  9'h07D:
(  x    ==   9'h14A  )?  9'h0FD:
(  x    ==   9'h14B  )?  9'h151:
(  x    ==   9'h14C  )?  9'h18C:
(  x    ==   9'h14D  )?  9'h090:
(  x    ==   9'h14E  )?  9'h082:
(  x    ==   9'h14F  )?  9'h127:
(  x    ==   9'h150  )?  9'h179:
(  x    ==   9'h151  )?  9'h177:
(  x    ==   9'h152  )?  9'h080:
(  x    ==   9'h153  )?  9'h030:
(  x    ==   9'h154  )?  9'h04A:
(  x    ==   9'h155  )?  9'h1B3:
(  x    ==   9'h156  )?  9'h013:
(  x    ==   9'h157  )?  9'h13B:
(  x    ==   9'h158  )?  9'h003:
(  x    ==   9'h159  )?  9'h18A:
(  x    ==   9'h15A  )?  9'h1EC:
(  x    ==   9'h15B  )?  9'h13C:
(  x    ==   9'h15C  )?  9'h14B:
(  x    ==   9'h15D  )?  9'h172:
(  x    ==   9'h15E  )?  9'h16B:
(  x    ==   9'h15F  )?  9'h1EF:
(  x    ==   9'h160  )?  9'h1A1:
(  x    ==   9'h161  )?  9'h136:
(  x    ==   9'h162  )?  9'h0C9:
(  x    ==   9'h163  )?  9'h1F0:
(  x    ==   9'h164  )?  9'h107:
(  x    ==   9'h165  )?  9'h0DD:
(  x    ==   9'h166  )?  9'h093:
(  x    ==   9'h167  )?  9'h1C5:
(  x    ==   9'h168  )?  9'h0BF:
(  x    ==   9'h169  )?  9'h0EB:
(  x    ==   9'h16A  )?  9'h12D:
(  x    ==   9'h16B  )?  9'h194:
(  x    ==   9'h16C  )?  9'h046:
(  x    ==   9'h16D  )?  9'h16D:
(  x    ==   9'h16E  )?  9'h15C:
(  x    ==   9'h16F  )?  9'h134:
(  x    ==   9'h170  )?  9'h0F6:
(  x    ==   9'h171  )?  9'h169:
(  x    ==   9'h172  )?  9'h1BB:
(  x    ==   9'h173  )?  9'h05C:
(  x    ==   9'h174  )?  9'h1BD:
(  x    ==   9'h175  )?  9'h041:
(  x    ==   9'h176  )?  9'h01A:
(  x    ==   9'h177  )?  9'h125:
(  x    ==   9'h178  )?  9'h0A0:
(  x    ==   9'h179  )?  9'h188:
(  x    ==   9'h17A  )?  9'h0D3:
(  x    ==   9'h17B  )?  9'h0DA:
(  x    ==   9'h17C  )?  9'h0D5:
(  x    ==   9'h17D  )?  9'h13A:
(  x    ==   9'h17E  )?  9'h04C:
(  x    ==   9'h17F  )?  9'h061:
(  x    ==   9'h180  )?  9'h18B:
(  x    ==   9'h181  )?  9'h0DC:
(  x    ==   9'h182  )?  9'h165:
(  x    ==   9'h183  )?  9'h123:
(  x    ==   9'h184  )?  9'h114:
(  x    ==   9'h185  )?  9'h0F7:
(  x    ==   9'h186  )?  9'h17B:
(  x    ==   9'h187  )?  9'h1B1:
(  x    ==   9'h188  )?  9'h04D:
(  x    ==   9'h189  )?  9'h03D:
(  x    ==   9'h18A  )?  9'h145:
(  x    ==   9'h18B  )?  9'h099:
(  x    ==   9'h18C  )?  9'h121:
(  x    ==   9'h18D  )?  9'h070:
(  x    ==   9'h18E  )?  9'h033:
(  x    ==   9'h18F  )?  9'h005:
(  x    ==   9'h190  )?  9'h13E:
(  x    ==   9'h191  )?  9'h015:
(  x    ==   9'h192  )?  9'h0FB:
(  x    ==   9'h193  )?  9'h1AC:
(  x    ==   9'h194  )?  9'h160:
(  x    ==   9'h195  )?  9'h1F7:
(  x    ==   9'h196  )?  9'h1FC:
(  x    ==   9'h197  )?  9'h1FB:
(  x    ==   9'h198  )?  9'h124:
(  x    ==   9'h199  )?  9'h024:
(  x    ==   9'h19A  )?  9'h07A:
(  x    ==   9'h19B  )?  9'h045:
(  x    ==   9'h19C  )?  9'h084:
(  x    ==   9'h19D  )?  9'h0A6:
(  x    ==   9'h19E  )?  9'h025:
(  x    ==   9'h19F  )?  9'h13D:
(  x    ==   9'h1A0  )?  9'h16A:
(  x    ==   9'h1A1  )?  9'h029:
(  x    ==   9'h1A2  )?  9'h144:
(  x    ==   9'h1A3  )?  9'h05D:
(  x    ==   9'h1A4  )?  9'h096:
(  x    ==   9'h1A5  )?  9'h007:
(  x    ==   9'h1A6  )?  9'h1BE:
(  x    ==   9'h1A7  )?  9'h135:
(  x    ==   9'h1A8  )?  9'h017:
(  x    ==   9'h1A9  )?  9'h164:
(  x    ==   9'h1AA  )?  9'h130:
(  x    ==   9'h1AB  )?  9'h0C3:
(  x    ==   9'h1AC  )?  9'h1A9:
(  x    ==   9'h1AD  )?  9'h1A2:
(  x    ==   9'h1AE  )?  9'h16E:
(  x    ==   9'h1AF  )?  9'h1B6:
(  x    ==   9'h1B0  )?  9'h19D:
(  x    ==   9'h1B1  )?  9'h1E7:
(  x    ==   9'h1B2  )?  9'h0D1:
(  x    ==   9'h1B3  )?  9'h0CD:
(  x    ==   9'h1B4  )?  9'h17C:
(  x    ==   9'h1B5  )?  9'h037:
(  x    ==   9'h1B6  )?  9'h149:
(  x    ==   9'h1B7  )?  9'h0A4:
(  x    ==   9'h1B8  )?  9'h1C3:
(  x    ==   9'h1B9  )?  9'h1A7:
(  x    ==   9'h1BA  )?  9'h11A:
(  x    ==   9'h1BB  )?  9'h1B4:
(  x    ==   9'h1BC  )?  9'h1DD:
(  x    ==   9'h1BD  )?  9'h06B:
(  x    ==   9'h1BE  )?  9'h057:
(  x    ==   9'h1BF  )?  9'h143:
(  x    ==   9'h1C0  )?  9'h0B1:
(  x    ==   9'h1C1  )?  9'h15B:
(  x    ==   9'h1C2  )?  9'h167:
(  x    ==   9'h1C3  )?  9'h019:
(  x    ==   9'h1C4  )?  9'h141:
(  x    ==   9'h1C5  )?  9'h095:
(  x    ==   9'h1C6  )?  9'h040:
(  x    ==   9'h1C7  )?  9'h1D7:
(  x    ==   9'h1C8  )?  9'h08C:
(  x    ==   9'h1C9  )?  9'h1B0:
(  x    ==   9'h1CA  )?  9'h180:
(  x    ==   9'h1CB  )?  9'h0C6:
(  x    ==   9'h1CC  )?  9'h072:
(  x    ==   9'h1CD  )?  9'h0B3:
(  x    ==   9'h1CE  )?  9'h0D0:
(  x    ==   9'h1CF  )?  9'h10C:
(  x    ==   9'h1D0  )?  9'h086:
(  x    ==   9'h1D1  )?  9'h1D1:
(  x    ==   9'h1D2  )?  9'h1A8:
(  x    ==   9'h1D3  )?  9'h12E:
(  x    ==   9'h1D4  )?  9'h0B8:
(  x    ==   9'h1D5  )?  9'h063:
(  x    ==   9'h1D6  )?  9'h00D:
(  x    ==   9'h1D7  )?  9'h161:
(  x    ==   9'h1D8  )?  9'h174:
(  x    ==   9'h1D9  )?  9'h0C2:
(  x    ==   9'h1DA  )?  9'h09B:
(  x    ==   9'h1DB  )?  9'h09D:
(  x    ==   9'h1DC  )?  9'h1F4:
(  x    ==   9'h1DD  )?  9'h156:
(  x    ==   9'h1DE  )?  9'h1F3:
(  x    ==   9'h1DF  )?  9'h14E:
(  x    ==   9'h1E0  )?  9'h0AA:
(  x    ==   9'h1E1  )?  9'h139:
(  x    ==   9'h1E2  )?  9'h17A:
(  x    ==   9'h1E3  )?  9'h054:
(  x    ==   9'h1E4  )?  9'h0CE:
(  x    ==   9'h1E5  )?  9'h0B0:
(  x    ==   9'h1E6  )?  9'h09C:
(  x    ==   9'h1E7  )?  9'h187:
(  x    ==   9'h1E8  )?  9'h0CB:
(  x    ==   9'h1E9  )?  9'h0C5:
(  x    ==   9'h1EA  )?  9'h0A5:
(  x    ==   9'h1EB  )?  9'h059:
(  x    ==   9'h1EC  )?  9'h09E:
(  x    ==   9'h1ED  )?  9'h1F2:
(  x    ==   9'h1EE  )?  9'h1BC:
(  x    ==   9'h1EF  )?  9'h1E3:
(  x    ==   9'h1F0  )?  9'h1D0:
(  x    ==   9'h1F1  )?  9'h039:
(  x    ==   9'h1F2  )?  9'h0E4:
(  x    ==   9'h1F3  )?  9'h18E:
(  x    ==   9'h1F4  )?  9'h1D3:
(  x    ==   9'h1F5  )?  9'h108:
(  x    ==   9'h1F6  )?  9'h0F0:
(  x    ==   9'h1F7  )?  9'h012:
(  x    ==   9'h1F8  )?  9'h009:
(  x    ==   9'h1F9  )?  9'h032:
(  x    ==   9'h1FA  )?  9'h0B6:
(  x    ==   9'h1FB  )?  9'h1A6:
(  x    ==   9'h1FC  )?  9'h189:
(  x    ==   9'h1FD  )?  9'h1A0:
(  x    ==   9'h1FE  )?  9'h00A:
(  x    ==   9'h1FF  )?  9'h158:
  0;

	endmodule
