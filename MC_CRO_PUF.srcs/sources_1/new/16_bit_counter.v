`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 13:34:15
// Design Name: 
// Module Name: 16_bit_counter
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


module counter_16_bit(
    input CLK,
    input EN, 
    input CE,
    input CLR,
    output finished,
    output [15:0] A
    );
   
assign finished = A[12];


(* BEL = "A6LUT" *)(* LOC = "SLICE_X20Y8" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'h08) 
) Enable_A (
   .O(B), 
   .I0(CLK), 
   .I1(EN) ,
   .I2(finished)
);
  
    /////////////////////////////////////////// COUNTER  0  //////////////////////////////////////////////////////////////////////////////////


(* BEL = "CFF" *)(* LOC = "SLICE_X20Y8" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_0 (
  .Q(Q_0),      // 1-bit Data output
  .C(B),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_0_1)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y8" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_0_inver (
   .O(Q_0_1), // 1-bit LUT6 output
   .I0(Q_0)
);

 (* BEL = "CFF" *)(* LOC = "SLICE_X20Y10" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_1 (
  .Q(Q_1),      // 1-bit Data output
  .C(Q_0_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_1_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y10" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_1_inver (
   .O(Q_1_1), // 1-bit LUT6 output
   .I0(Q_1)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y11" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_2 (
  .Q(Q_2),      // 1-bit Data output
  .C(Q_1_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_2_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y11" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_2_inver (
   .O(Q_2_1), // 1-bit LUT6 output
   .I0(Q_2)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y12" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_3 (
  .Q(Q_3),      // 1-bit Data output
  .C(Q_2_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_3_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y12" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_3_inver (
   .O(Q_3_1), // 1-bit LUT6 output
   .I0(Q_3)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y13" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_4 (
  .Q(Q_4),      // 1-bit Data output
  .C(Q_3_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_4_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y13" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_4_inver (
   .O(Q_4_1), // 1-bit LUT6 output
   .I0(Q_4)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y14" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_5 (
  .Q(Q_5),      // 1-bit Data output
  .C(Q_4_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_5_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y14" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_5_inver (
   .O(Q_5_1), // 1-bit LUT6 output
   .I0(Q_5)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y15" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_6 (
  .Q(Q_6),      // 1-bit Data output
  .C(Q_5_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_6_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y15" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_6_inver (
   .O(Q_6_1), // 1-bit LUT6 output
   .I0(Q_6)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y16" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_7 (
  .Q(Q_7),      // 1-bit Data output
  .C(Q_6_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_7_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y16" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_7_inver (
   .O(Q_7_1), // 1-bit LUT6 output
   .I0(Q_7)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y17" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_8 (
  .Q(Q_8),      // 1-bit Data output
  .C(Q_7_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_8_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y17" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_8_inver (
   .O(Q_8_1), // 1-bit LUT6 output
   .I0(Q_8)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y18" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_9 (
  .Q(Q_9),      // 1-bit Data output
  .C(Q_8_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_9_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y18" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_9_inver (
   .O(Q_9_1), // 1-bit LUT6 output
   .I0(Q_9)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y19" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_10 (
  .Q(Q_10),      // 1-bit Data output
  .C(Q_9_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_10_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y19" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_10_inver (
   .O(Q_10_1), // 1-bit LUT6 output
   .I0(Q_10)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y20" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_11 (
  .Q(Q_11),      // 1-bit Data output
  .C(Q_10_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_11_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y20" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_11_inver (
   .O(Q_11_1), // 1-bit LUT6 output
   .I0(Q_11)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y21" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_12 (
  .Q(Q_12),      // 1-bit Data output
  .C(Q_11_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_12_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y21" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_12_inver (
   .O(Q_12_1), // 1-bit LUT6 output
   .I0(Q_12)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y22" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_13 (
  .Q(Q_13),      // 1-bit Data output
  .C(Q_12_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_13_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y22" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_13_inver (
   .O(Q_13_1), // 1-bit LUT6 output
   .I0(Q_13)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y23" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_14 (
  .Q(Q_14),      // 1-bit Data output
  .C(Q_13_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_14_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y23" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_14_inver (
   .O(Q_14_1), // 1-bit LUT6 output
   .I0(Q_14)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X20Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_15 (
  .Q(Q_15),      // 1-bit Data output
  .C(Q_14_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_15_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_15_inver (
   .O(Q_15_1), // 1-bit LUT6 output
   .I0(Q_15)
);
   
      


assign A[0] = Q_0;
assign A[1] = Q_1;
assign A[2] = Q_2;
assign A[3] = Q_3;
assign A[4] = Q_4;
assign A[5] = Q_5;
assign A[6] = Q_6;
assign A[7] = Q_7;
assign A[8] = Q_8;
assign A[9] = Q_9;
assign A[10] = Q_10;
assign A[11] = Q_11;
assign A[12] = Q_12;
assign A[13] = Q_13;
assign A[14] = Q_14;
assign A[15] = Q_15;


   
endmodule
