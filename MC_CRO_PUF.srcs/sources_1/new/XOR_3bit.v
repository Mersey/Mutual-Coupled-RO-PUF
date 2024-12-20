`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 17:00:24
// Design Name: 
// Module Name: XOR_3bit
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


module XOR_3bit(
    input A,
    input B,
    input C,
    output O
    );
  
LUT3 #(
.INIT(64'h96) 
) CE_0_decode (
   .O(O), 
   .I0(A), 
   .I1(B) ,
   .I2(C)
);  
 
endmodule
