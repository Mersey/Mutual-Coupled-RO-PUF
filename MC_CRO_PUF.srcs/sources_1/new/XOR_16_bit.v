`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2024 11:44:09
// Design Name: 
// Module Name: XOR_16bit
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


module XOR_16bit(
    input [15:0] A,
    output Parity
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_first_6_bits (
       .O(O_0), // 1-bit LUT6 output
       .I0(A[0]), // 1-bit LUT input
       .I1(A[1]), // 1-bit LUT input
       .I2(A[2]), // 1-bit LUT input
       .I3(A[3]), // 1-bit LUT input
       .I4(A[4]), // 1-bit LUT input
       .I5(A[5]) // 1-bit LUT input
     
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_middle_5_bits (
       .O(O_1), // 1-bit LUT6 output
       .I0(A[6]), // 1-bit LUT input
       .I1(A[7]), // 1-bit LUT input
       .I2(A[8]), // 1-bit LUT input
       .I3(A[9]), // 1-bit LUT input
       .I4(A[10]), // 1-bit LUT input
       .I5(O_0) // 1-bit LUT input
     
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits (
       .O(Parity), // 1-bit LUT6 output
       .I0(A[11]), // 1-bit LUT input
       .I1(A[12]), // 1-bit LUT input
       .I2(A[13]), // 1-bit LUT input
       .I3(A[14]), // 1-bit LUT input
       .I4(A[15]), // 1-bit LUT input
       .I5(O_1) // 1-bit LUT input
     
    );
    
endmodule