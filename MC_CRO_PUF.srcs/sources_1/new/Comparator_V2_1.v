`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2024 16:13:03
// Design Name: 
// Module Name: Comparator
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


module Comparator_v2_1(
    input [15:0] A,
    input [15:0] B,
    output A_is_larger
);

(* BEL = "A6LUT" *)(* LOC = "SLICE_X28Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hF731) // Specify LUT Contents
) Comparator_first_2_bits (
   .O(O0), // 1-bit LUT6 output
   .I0(B[0]), // 1-bit LUT input
   .I1(B[1]), // 1-bit LUT input
   .I2(A[0]), // 1-bit LUT input
   .I3(A[1]) // 1-bit LUT input
   
 
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X28Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_second_2_bits (
   .O(O1), // 1-bit LUT6 output
   .I0(B[2]), // 1-bit LUT input
   .I1(B[3]), // 1-bit LUT input
   .I2(A[2]), // 1-bit LUT input
   .I3(A[3]), // 1-bit LUT input
   .I4(O0)
);

 (* BEL = "C6LUT" *)(* LOC = "SLICE_X28Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_Third_2_bits (
   .O(O2), // 1-bit LUT6 output
   .I0(B[4]), // 1-bit LUT input
   .I1(B[5]), // 1-bit LUT input
   .I2(A[4]), // 1-bit LUT input
   .I3(A[5]), // 1-bit LUT input
   .I4(O1)
 
);

 (* BEL = "D6LUT" *)(* LOC = "SLICE_X28Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_forth_2_bits (
   .O(O_3), // 1-bit LUT6 output
   .I0(B[6]), // 1-bit LUT input
   .I1(B[7]), // 1-bit LUT input
   .I2(A[6]), // 1-bit LUT input
   .I3(A[7]), // 1-bit LUT input
   .I4(O2)
   
);

(* BEL = "A6LUT" *)(* LOC = "SLICE_X29Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_5th_2_bits (
   .O(O_4), // 1-bit LUT6 output
   .I0(B[8]), // 1-bit LUT input
   .I1(B[9]), // 1-bit LUT input
   .I2(A[8]), // 1-bit LUT input
   .I3(A[9]), // 1-bit LUT input
   .I4(O_3)
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X29Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_6th_2_bits (
   .O(O_5), // 1-bit LUT6 output
   .I0(B[10]), // 1-bit LUT input
   .I1(B[11]), // 1-bit LUT input
   .I2(A[10]), // 1-bit LUT input
   .I3(A[11]), // 1-bit LUT input
   .I4(O_4)
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X29Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_7th_2_bits (
   .O(O_6), // 1-bit LUT6 output
   .I0(B[12]), // 1-bit LUT input
   .I1(B[13]), // 1-bit LUT input
   .I2(A[12]), // 1-bit LUT input
   .I3(A[13]), // 1-bit LUT input
   .I4(O_5)
);

(* BEL = "D6LUT" *)(* LOC = "SLICE_X29Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'hF7317310) // Specify LUT Contents
) Comparator_9th_2_bits (
   .O(A_is_larger), // 1-bit LUT6 output
   .I0(B[14]), // 1-bit LUT input
   .I1(B[15]), // 1-bit LUT input
   .I2(A[14]), // 1-bit LUT input
   .I3(A[15]), // 1-bit LUT input
   .I4(O_6)
);
    
endmodule
    