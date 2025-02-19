`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 09:56:14 PM
// Design Name: 
// Module Name: ccsm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ccsm (output x,y ,input  a, b,c);
      assign x=(~c)^(a | b);
      assign y=(a| b) & (~(a&b)^ (a | b));
endmodule
