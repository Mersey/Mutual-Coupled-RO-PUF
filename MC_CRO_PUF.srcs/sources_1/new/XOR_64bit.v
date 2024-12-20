`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 15:56:19
// Design Name: 
// Module Name: XOR_64bit
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


module XOR_64bit(
    input [31:0] A,
    input [31:0] B,
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
       .O(O_2), // 1-bit LUT6 output
       .I0(A[11]), // 1-bit LUT input
       .I1(A[12]), // 1-bit LUT input
       .I2(A[13]), // 1-bit LUT input
       .I3(A[14]), // 1-bit LUT input
       .I4(A[15]), // 1-bit LUT input
       .I5(O_1) // 1-bit LUT input
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_1 (
       .O(O_3), // 1-bit LUT6 output
       .I0(A[16]), // 1-bit LUT input
       .I1(A[17]), // 1-bit LUT input
       .I2(A[18]), // 1-bit LUT input
       .I3(A[19]), // 1-bit LUT input
       .I4(A[20]), // 1-bit LUT input
       .I5(O_2) // 1-bit LUT input
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_2 (
       .O(O_4), // 1-bit LUT6 output
       .I0(A[21]), // 1-bit LUT input
       .I1(A[22]), // 1-bit LUT input
       .I2(A[23]), // 1-bit LUT input
       .I3(A[24]), // 1-bit LUT input
       .I4(A[25]), // 1-bit LUT input
       .I5(O_3) // 1-bit LUT input
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_3 (
       .O(O_5), // 1-bit LUT6 output
       .I0(A[26]), // 1-bit LUT input
       .I1(A[27]), // 1-bit LUT input
       .I2(A[28]), // 1-bit LUT input
       .I3(A[29]), // 1-bit LUT input
       .I4(A[30]), // 1-bit LUT input
       .I5(O_4) // 1-bit LUT input
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_4 (
       .O(O_6), // 1-bit LUT6 output
       .I0(A[31]), // 1-bit LUT input
       .I1(B[1]), // 1-bit LUT input
       .I2(B[2]), // 1-bit LUT input
       .I3(B[3]), // 1-bit LUT input
       .I4(B[4]), // 1-bit LUT input
       .I5(O_5) // 1-bit LUT input
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_5 (
       .O(O_7), // 1-bit LUT6 output
       .I0(B[5]), // 1-bit LUT input
       .I1(B[6]), // 1-bit LUT input
       .I2(B[7]), // 1-bit LUT input
       .I3(B[8]), // 1-bit LUT input
       .I4(B[9]), // 1-bit LUT input
       .I5(O_6) // 1-bit LUT input
    );
    
     LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_6 (
       .O(O_8), // 1-bit LUT6 output
       .I0(B[10]), // 1-bit LUT input
       .I1(B[11]), // 1-bit LUT input
       .I2(B[12]), // 1-bit LUT input
       .I3(B[13]), // 1-bit LUT input
       .I4(B[14]), // 1-bit LUT input
       .I5(O_7) // 1-bit LUT input
    );
    
     LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_7 (
       .O(O_9), // 1-bit LUT6 output
       .I0(B[15]), // 1-bit LUT input
       .I1(B[16]), // 1-bit LUT input
       .I2(B[17]), // 1-bit LUT input
       .I3(B[18]), // 1-bit LUT input
       .I4(B[19]), // 1-bit LUT input
       .I5(O_8) // 1-bit LUT input
    );
    
     LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_8 (
       .O(O_10), // 1-bit LUT6 output
       .I0(B[20]), // 1-bit LUT input
       .I1(B[21]), // 1-bit LUT input
       .I2(B[22]), // 1-bit LUT input
       .I3(B[23]), // 1-bit LUT input
       .I4(B[24]), // 1-bit LUT input
       .I5(O_9) // 1-bit LUT input
    );
    
    LUT6 #(
   .INIT(64'h6996966996696996) // Specify LUT Contents
    ) XOR_last_5_bits_9 (
       .O(O_11), // 1-bit LUT6 output
       .I0(B[25]), // 1-bit LUT input
       .I1(B[26]), // 1-bit LUT input
       .I2(B[27]), // 1-bit LUT input
       .I3(B[28]), // 1-bit LUT input
       .I4(B[29]), // 1-bit LUT input
       .I5(O_10) // 1-bit LUT input
    );
    
     LUT4 #(
   .INIT(64'h6996) // Specify LUT Contents
    ) XOR_last_5_bits_10 (
       .O(Parity), // 1-bit LUT6 output
       .I0(B[30]), // 1-bit LUT input
       .I1(B[31]), // 1-bit LUT input
       .I2(B[0]),
       .I3(O_11) // 1-bit LUT input
    );
    
endmodule
