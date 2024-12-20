`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSIT
// Engineer: James Moore
// 
// Create Date: 31.05.2024 22:54:58
// Design Name: 
// Module Name: CRO_PUF_AND_COUNTER_3
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


module Test_CRO_1(
    input [31:0] Challenge_0,
    input [31:0] Challenge_1,
    input [1:0] EN,
    input CLR,
    input CE,
    input Fin,
    output [15:0] Counter_0,
    //output [15:0] Counter_1,
    input Challenge_parity_bit,
    output finished
    //output loop_0
    //output loop_1
    );
    
wire [63:0] Challenge;    
    
assign Challenge[0] = Challenge_0[0];
assign Challenge[1] = Challenge_0[1];
assign Challenge[2] = Challenge_0[2];
assign Challenge[3] = Challenge_0[3];
assign Challenge[4] = Challenge_0[4];
assign Challenge[5] = Challenge_0[5];
assign Challenge[6] = Challenge_0[6];
assign Challenge[7] = Challenge_0[7];
assign Challenge[8] = Challenge_0[8];
assign Challenge[9] = Challenge_0[9];
assign Challenge[10] = Challenge_0[10];
assign Challenge[11] = Challenge_0[11];
assign Challenge[12] = Challenge_0[12];
assign Challenge[13] = Challenge_0[13];
assign Challenge[14] = Challenge_0[14];
assign Challenge[15] = Challenge_0[15];
assign Challenge[16] = Challenge_0[16];
assign Challenge[17] = Challenge_0[17];
assign Challenge[18] = Challenge_0[18];
assign Challenge[19] = Challenge_0[19];
assign Challenge[20] = Challenge_0[20];
assign Challenge[21] = Challenge_0[21];
assign Challenge[22] = Challenge_0[22];
assign Challenge[23] = Challenge_0[23];
assign Challenge[24] = Challenge_0[24];
assign Challenge[25] = Challenge_0[25];
assign Challenge[26] = Challenge_0[26];
assign Challenge[27] = Challenge_0[27];
assign Challenge[28] = Challenge_0[28];
assign Challenge[29] = Challenge_0[29];
assign Challenge[30] = Challenge_0[30];
assign Challenge[31] = Challenge_0[31];
assign Challenge[32] = Challenge_1[0];
assign Challenge[33] = Challenge_1[1];
assign Challenge[34] = Challenge_1[2];
assign Challenge[35] = Challenge_1[3];
assign Challenge[36] = Challenge_1[4];
assign Challenge[37] = Challenge_1[5];
assign Challenge[38] = Challenge_1[6];
assign Challenge[39] = Challenge_1[7];
assign Challenge[40] = Challenge_1[8];
assign Challenge[41] = Challenge_1[9];
assign Challenge[42] = Challenge_1[10];
assign Challenge[43] = Challenge_1[11];
assign Challenge[44] = Challenge_1[12];
assign Challenge[45] = Challenge_1[13];
assign Challenge[46] = Challenge_1[14];
assign Challenge[47] = Challenge_1[15];
assign Challenge[48] = Challenge_1[16];
assign Challenge[49] = Challenge_1[17];
assign Challenge[50] = Challenge_1[18];
assign Challenge[51] = Challenge_1[19];
assign Challenge[52] = Challenge_1[20];
assign Challenge[53] = Challenge_1[21];
assign Challenge[54] = Challenge_1[22];
assign Challenge[55] = Challenge_1[23];
assign Challenge[56] = Challenge_1[24];
assign Challenge[57] = Challenge_1[25];
assign Challenge[58] = Challenge_1[26];
assign Challenge[59] = Challenge_1[27];
assign Challenge[60] = Challenge_1[28];
assign Challenge[61] = Challenge_1[29];
assign Challenge[62] = Challenge_1[30];
assign Challenge[63] = Challenge_1[31];  

wire [1:0] A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,A32,A33,A34,A35,A36,A37,A38,A39,A40,A41,A42,A43,A44,A45,A46,A47,A48,A49,A50,A51,A52,A53,A54,A55,A56,A57,A58,A59,A60,A61,A62,A63,A64;


//assign loop_0 = A15[0];
//assign loop_1 = A15[1];

assign EN_0 = EN[0];
assign EN_1 = EN[1];

assign finished = Q_12;

////////////////// ENABLE and stage 0 /////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'h00003500) 
) Enable_A (
   .O(A0[0]), 
   .I0(A64[0]), 
   .I1(A64[1]) ,
   .I2(Challenge[0]),
   .I3(EN_0), 
   .I4(Fin)
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT5 #(
.INIT(64'h00003500) 
) Enable_B (
   .O(A0[1]),
   .I0(A64[1]), 
   .I1(A64[0]) ,
   .I2(Challenge[0]),
   .I3(EN_1), 
   .I4(Fin)
);

////////////////////// Stage 1 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y71" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_A1 (
   .O(A1[0]), 
   .I0(A0[0]),
   .I1(A0[1]),
   .I2(Challenge[1]),
   .I3(A0[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y71" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_B1 (
   .O(A1[1]), 
   .I0(A0[1]),
   .I1(A0[0]),
   .I2(Challenge[1]),
   .I3(A0[0])
);

////////////////////// Stage 2 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y70" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A2 (
   .O(A2[0]), 
   .I0(A1[0]),
   .I1(A1[1]),
   .I2(Challenge[2]),
   .I3(A1[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y70" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B2 (
   .O(A2[1]), 
   .I0(A1[1]),
   .I1(A1[0]),
   .I2(Challenge[2]),
   .I3(A1[0])
);

////////////////////// Stage 3 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y69" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A3 (
   .O(A3[0]), 
   .I0(A2[0]),
   .I1(A2[1]),
   .I2(Challenge[3]),
   .I3(A2[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y69" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B3 (
   .O(A3[1]), 
   .I0(A2[1]),
   .I1(A2[0]),
   .I2(Challenge[3]),
   .I3(A2[0])
);

////////////////////// Stage 4 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y68" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A4 (
   .O(A4[0]), 
   .I0(A3[0]),
   .I1(A3[1]),
   .I2(Challenge[4]),
   .I3(A3[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y68" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B4 (
   .O(A4[1]), 
   .I0(A3[1]),
   .I1(A3[0]),
   .I2(Challenge[4]),
   .I3(A3[0])
);

////////////////////// Stage 5 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y67" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A5 (
   .O(A5[0]), 
   .I0(A4[0]),
   .I1(A4[1]),
   .I2(Challenge[5]),
   .I3(A4[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y67" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B5 (
   .O(A5[1]), 
   .I0(A4[1]),
   .I1(A4[0]),
   .I2(Challenge[5]),
   .I3(A4[0])
);

////////////////////// Stage 6 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y66" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_A6 (
   .O(A6[0]), 
   .I0(A5[0]),
   .I1(A5[1]),
   .I2(Challenge[6]),
   .I3(A5[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y66" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B6 (
   .O(A6[1]), 
   .I0(A5[1]),
   .I1(A5[0]),
   .I2(Challenge[6]),
   .I3(A5[0])
);

////////////////////// Stage 7 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y65" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A7 (
   .O(A7[0]), 
   .I0(A6[0]),
   .I1(A6[1]),
   .I2(Challenge[7]),
   .I3(A6[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y65" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B7 (
   .O(A7[1]), 
   .I0(A6[1]),
   .I1(A6[0]),
   .I2(Challenge[7]),
   .I3(A6[0])
);

////////////////////// Stage 8 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y64" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A8 (
   .O(A8[0]), 
   .I0(A7[0]),
   .I1(A7[1]),
   .I2(Challenge[8]),
   .I3(A7[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y64" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B8 (
   .O(A8[1]), 
   .I0(A7[1]),
   .I1(A7[0]),
   .I2(Challenge[8]),
   .I3(A7[0])
);

////////////////////// Stage 9 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y63" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A9 (
   .O(A9[0]), 
   .I0(A8[0]),
   .I1(A8[1]),
   .I2(Challenge[9]),
   .I3(A8[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y63" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B9 (
   .O(A9[1]), 
   .I0(A8[1]),
   .I1(A8[0]),
   .I2(Challenge[9]),
   .I3(A8[0])
);

////////////////////// Stage 10 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y62" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A10 (
   .O(A10[0]), 
   .I0(A9[0]),
   .I1(A9[1]),
   .I2(Challenge[10]),
   .I3(A9[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y62" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B10 (
   .O(A10[1]), 
   .I0(A9[1]),
   .I1(A9[0]),
   .I2(Challenge[10]),
   .I3(A9[0])
);

////////////////////// Stage 11 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y61" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A11 (
   .O(A11[0]), 
   .I0(A10[0]),
   .I1(A10[1]),
   .I2(Challenge[11]),
   .I3(A10[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y61" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B11 (
   .O(A11[1]), 
   .I0(A10[1]),
   .I1(A10[0]),
   .I2(Challenge[11]),
   .I3(A10[0])
);

////////////////////// Stage 12 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y60" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A12 (
   .O(A12[0]), 
   .I0(A11[0]),
   .I1(A11[1]),
   .I2(Challenge[12]),
   .I3(A11[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y60" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_B12 (
   .O(A12[1]), 
   .I0(A11[1]),
   .I1(A11[0]),
   .I2(Challenge[12]),
   .I3(A11[0])
);

////////////////////// Stage 13 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y59" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A13 (
   .O(A13[0]), 
   .I0(A12[0]),
   .I1(A12[1]),
   .I2(Challenge[13]),
   .I3(A12[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y59" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_B13 (
   .O(A13[1]), 
   .I0(A12[1]),
   .I1(A12[0]),
   .I2(Challenge[13]),
   .I3(A12[0])
);

////////////////////// Stage 14 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y58" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_A14 (
   .O(A14[0]), 
   .I0(A13[0]),
   .I1(A13[1]),
   .I2(Challenge[14]),
   .I3(A13[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y58" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B14 (
   .O(A14[1]), 
   .I0(A13[1]),
   .I1(A13[0]),
   .I2(Challenge[14]),
   .I3(A13[0])
);

////////////////////// Stage 15 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y57" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A15 (
   .O(A15[0]), 
   .I0(A14[0]),
   .I1(A14[1]),
   .I2(Challenge[15]),
   .I3(A14[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y57" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B15 (
   .O(A15[1]), 
   .I0(A14[1]),
   .I1(A14[0]),
   .I2(Challenge[15]),
   .I3(A14[0])
);

////////////////////// Stage 16 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y56" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A16 (
   .O(A16[0]),
   .I0(A15[0]),
   .I1(A15[1]),
   .I2(Challenge[16]),
   .I3(A15[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y56" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B16 (
   .O(A16[1]),
   .I0(A15[1]),
   .I1(A15[0]),
   .I2(Challenge[16]),
   .I3(A15[0])
);

////////////////////// Stage 17 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y55" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A17 (
   .O(A17[0]),
   .I0(A16[0]),
   .I1(A16[1]),
   .I2(Challenge[17]),
   .I3(A16[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y55" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B17 (
   .O(A17[1]),
   .I0(A16[1]),
   .I1(A16[0]),
   .I2(Challenge[17]),
   .I3(A16[0])
);

////////////////////// Stage 18 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y54" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A18 (
   .O(A18[0]),
   .I0(A17[0]),
   .I1(A17[1]),
   .I2(Challenge[18]),
   .I3(A17[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y54" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B18 (
   .O(A18[1]),
   .I0(A17[1]),
   .I1(A17[0]),
   .I2(Challenge[18]),
   .I3(A17[0])
);

////////////////////// Stage 19 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y53" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A19 (
   .O(A19[0]),
   .I0(A18[0]),
   .I1(A18[1]),
   .I2(Challenge[19]),
   .I3(A18[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y53" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B19 (
   .O(A19[1]),
   .I0(A18[1]),
   .I1(A18[0]),
   .I2(Challenge[19]),
   .I3(A18[0])
);

////////////////////// Stage 20 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y52" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A20 (
   .O(A20[0]),
   .I0(A19[0]),
   .I1(A19[1]),
   .I2(Challenge[20]),
   .I3(A19[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y52" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B20 (
   .O(A20[1]),
   .I0(A19[1]),
   .I1(A19[0]),
   .I2(Challenge[20]),
   .I3(A19[0])
);

////////////////////// Stage 21 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y51" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A21 (
   .O(A21[0]),
   .I0(A20[0]),
   .I1(A20[1]),
   .I2(Challenge[21]),
   .I3(A20[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y51" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B21 (
   .O(A21[1]),
   .I0(A20[1]),
   .I1(A20[0]),
   .I2(Challenge[21]),
   .I3(A20[0])
);

////////////////////// Stage 22 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y50" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A22 (
   .O(A22[0]),
   .I0(A21[0]),
   .I1(A21[1]),
   .I2(Challenge[22]),
   .I3(A21[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y50" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B22 (
   .O(A22[1]),
   .I0(A21[1]),
   .I1(A21[0]),
   .I2(Challenge[22]),
   .I3(A21[0])
);

////////////////////// Stage 23 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y49" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A23 (
   .O(A23[0]),
   .I0(A22[0]),
   .I1(A22[1]),
   .I2(Challenge[23]),
   .I3(A22[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y49" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B23 (
   .O(A23[1]),
   .I0(A22[1]),
   .I1(A22[0]),
   .I2(Challenge[23]),
   .I3(A22[0])
);

////////////////////// Stage 24 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y48" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A24 (
   .O(A24[0]),
   .I0(A23[0]),
   .I1(A23[1]),
   .I2(Challenge[24]),
   .I3(A23[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y48" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B24 (
   .O(A24[1]),
   .I0(A23[1]),
   .I1(A23[0]),
   .I2(Challenge[24]),
   .I3(A23[0])
);

////////////////////// Stage 25 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y47" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A25 (
   .O(A25[0]),
   .I0(A24[0]),
   .I1(A24[1]),
   .I2(Challenge[25]),
   .I3(A24[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y47" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B25 (
   .O(A25[1]),
   .I0(A24[1]),
   .I1(A24[0]),
   .I2(Challenge[25]),
   .I3(A24[0])
);

////////////////////// Stage 26 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y46" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A26 (
   .O(A26[0]),
   .I0(A25[0]),
   .I1(A25[1]),
   .I2(Challenge[26]),
   .I3(A25[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y46" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B26 (
   .O(A26[1]),
   .I0(A25[1]),
   .I1(A25[0]),
   .I2(Challenge[26]),
   .I3(A25[0])
);

////////////////////// Stage 27 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y45" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A27 (
   .O(A27[0]),
   .I0(A26[0]),
   .I1(A26[1]),
   .I2(Challenge[27]),
   .I3(A26[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y45" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B27 (
   .O(A27[1]),
   .I0(A26[1]),
   .I1(A26[0]),
   .I2(Challenge[27]),
   .I3(A26[0])
);

////////////////////// Stage 28 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y44" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A28 (
   .O(A28[0]),
   .I0(A27[0]),
   .I1(A27[1]),
   .I2(Challenge[28]),
   .I3(A27[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y44" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B28 (
   .O(A28[1]),
   .I0(A27[1]),
   .I1(A27[0]),
   .I2(Challenge[28]),
   .I3(A27[0])
);

////////////////////// Stage 29 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y43" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A29 (
   .O(A29[0]),
   .I0(A28[0]),
   .I1(A28[1]),
   .I2(Challenge[29]),
   .I3(A28[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y43" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B29 (
   .O(A29[1]),
   .I0(A28[1]),
   .I1(A28[0]),
   .I2(Challenge[29]),
   .I3(A28[0])
);

////////////////////// Stage 30 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A30 (
   .O(A30[0]),
   .I0(A29[0]),
   .I1(A29[1]),
   .I2(Challenge[30]),
   .I3(A29[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B30 (
   .O(A30[1]),
   .I0(A29[1]),
   .I1(A29[0]),
   .I2(Challenge[30]),
   .I3(A29[0])
);

////////////////////// Stage 31 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A31 (
   .O(A31[0]),
   .I0(A30[0]),
   .I1(A30[1]),
   .I2(Challenge[31]),
   .I3(A30[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B31 (
   .O(A31[1]),
   .I0(A30[1]),
   .I1(A30[0]),
   .I2(Challenge[31]),
   .I3(A30[0])
);

////////////////////// Stage 32 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A32 (
   .O(A32[0]),
   .I0(A31[0]),
   .I1(A31[1]),
   .I2(Challenge[32]),
   .I3(A31[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B32 (
   .O(A32[1]),
   .I0(A31[1]),
   .I1(A31[0]),
   .I2(Challenge[32]),
   .I3(A31[0])
);

////////////////////// Stage 33 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A33 (
   .O(A33[0]),
   .I0(A32[0]),
   .I1(A32[1]),
   .I2(Challenge[33]),
   .I3(A32[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B33 (
   .O(A33[1]),
   .I0(A32[1]),
   .I1(A32[0]),
   .I2(Challenge[33]),
   .I3(A32[0])
);

////////////////////// Stage 34 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A34 (
   .O(A34[0]),
   .I0(A33[0]),
   .I1(A33[1]),
   .I2(Challenge[34]),
   .I3(A33[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B34 (
   .O(A34[1]),
   .I0(A33[1]),
   .I1(A33[0]),
   .I2(Challenge[34]),
   .I3(A33[0])
);

////////////////////// Stage 35 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A35 (
   .O(A35[0]),
   .I0(A34[0]),
   .I1(A34[1]),
   .I2(Challenge[35]),
   .I3(A34[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B35 (
   .O(A35[1]),
   .I0(A34[1]),
   .I1(A34[0]),
   .I2(Challenge[35]),
   .I3(A34[0])
);

////////////////////// Stage 36 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A36 (
   .O(A36[0]),
   .I0(A35[0]),
   .I1(A35[1]),
   .I2(Challenge[36]),
   .I3(A35[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B36 (
   .O(A36[1]),
   .I0(A35[1]),
   .I1(A35[0]),
   .I2(Challenge[36]),
   .I3(A35[0])
);

////////////////////// Stage 37 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A37 (
   .O(A37[0]),
   .I0(A36[0]),
   .I1(A36[1]),
   .I2(Challenge[37]),
   .I3(A36[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B37 (
   .O(A37[1]),
   .I0(A36[1]),
   .I1(A36[0]),
   .I2(Challenge[37]),
   .I3(A36[0])
);

////////////////////// Stage 38 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A38 (
   .O(A38[0]),
   .I0(A37[0]),
   .I1(A37[1]),
   .I2(Challenge[38]),
   .I3(A37[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B38 (
   .O(A38[1]),
   .I0(A37[1]),
   .I1(A37[0]),
   .I2(Challenge[38]),
   .I3(A37[0])
);

////////////////////// Stage 39 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A39 (
   .O(A39[0]),
   .I0(A38[0]),
   .I1(A38[1]),
   .I2(Challenge[39]),
   .I3(A38[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B39 (
   .O(A39[1]),
   .I0(A38[1]),
   .I1(A38[0]),
   .I2(Challenge[39]),
   .I3(A38[0])
);

////////////////////// Stage 40 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A40 (
   .O(A40[0]),
   .I0(A39[0]),
   .I1(A39[1]),
   .I2(Challenge[40]),
   .I3(A39[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B40 (
   .O(A40[1]),
   .I0(A39[1]),
   .I1(A39[0]),
   .I2(Challenge[40]),
   .I3(A39[0])
);

////////////////////// Stage 41 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A41 (
   .O(A41[0]),
   .I0(A40[0]),
   .I1(A40[1]),
   .I2(Challenge[41]),
   .I3(A40[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B41 (
   .O(A41[1]),
   .I0(A40[1]),
   .I1(A40[0]),
   .I2(Challenge[41]),
   .I3(A40[0])
);

////////////////////// Stage 42 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A42 (
   .O(A42[0]),
   .I0(A41[0]),
   .I1(A41[1]),
   .I2(Challenge[42]),
   .I3(A41[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B42 (
   .O(A42[1]),
   .I0(A41[1]),
   .I1(A41[0]),
   .I2(Challenge[42]),
   .I3(A41[0])
);

////////////////////// Stage 43 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A43 (
   .O(A43[0]),
   .I0(A42[0]),
   .I1(A42[1]),
   .I2(Challenge[43]),
   .I3(A42[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B43 (
   .O(A43[1]),
   .I0(A42[1]),
   .I1(A42[0]),
   .I2(Challenge[43]),
   .I3(A42[0])
);

////////////////////// Stage 44 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A44 (
   .O(A44[0]),
   .I0(A43[0]),
   .I1(A43[1]),
   .I2(Challenge[44]),
   .I3(A43[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B44 (
   .O(A44[1]),
   .I0(A43[1]),
   .I1(A43[0]),
   .I2(Challenge[44]),
   .I3(A43[0])
);

////////////////////// Stage 45 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A45 (
   .O(A45[0]),
   .I0(A44[0]),
   .I1(A44[1]),
   .I2(Challenge[45]),
   .I3(A44[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B45 (
   .O(A45[1]),
   .I0(A44[1]),
   .I1(A44[0]),
   .I2(Challenge[45]),
   .I3(A44[0])
);

////////////////////// Stage 46 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A46 (
   .O(A46[0]),
   .I0(A45[0]),
   .I1(A45[1]),
   .I2(Challenge[46]),
   .I3(A45[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B46 (
   .O(A46[1]),
   .I0(A45[1]),
   .I1(A45[0]),
   .I2(Challenge[46]),
   .I3(A45[0])
);

////////////////////// Stage 47 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y25" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A47 (
   .O(A47[0]),
   .I0(A46[0]),
   .I1(A46[1]),
   .I2(Challenge[47]),
   .I3(A46[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y25" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B47 (
   .O(A47[1]),
   .I0(A46[1]),
   .I1(A46[0]),
   .I2(Challenge[47]),
   .I3(A46[0])
);

////////////////////// Stage 48 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A48 (
   .O(A48[0]),
   .I0(A47[0]),
   .I1(A47[1]),
   .I2(Challenge[48]),
   .I3(A47[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B48 (
   .O(A48[1]),
   .I0(A47[1]),
   .I1(A47[0]),
   .I2(Challenge[48]),
   .I3(A47[0])
);

////////////////////// Stage 49 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y23" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A49 (
   .O(A49[0]),
   .I0(A48[0]),
   .I1(A48[1]),
   .I2(Challenge[49]),
   .I3(A48[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y23" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B49 (
   .O(A49[1]),
   .I0(A48[1]),
   .I1(A48[0]),
   .I2(Challenge[49]),
   .I3(A48[0])
);

////////////////////// Stage 50 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y22" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A50 (
   .O(A50[0]),
   .I0(A49[0]),
   .I1(A49[1]),
   .I2(Challenge[50]),
   .I3(A49[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y22" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B50 (
   .O(A50[1]),
   .I0(A49[1]),
   .I1(A49[0]),
   .I2(Challenge[50]),
   .I3(A49[0])
);

////////////////////// Stage 51 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y21" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A51 (
   .O(A51[0]),
   .I0(A50[0]),
   .I1(A50[1]),
   .I2(Challenge[51]),
   .I3(A50[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y21" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B51 (
   .O(A51[1]),
   .I0(A50[1]),
   .I1(A50[0]),
   .I2(Challenge[51]),
   .I3(A50[0])
);

////////////////////// Stage 52 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y20" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A52 (
   .O(A52[0]),
   .I0(A51[0]),
   .I1(A51[1]),
   .I2(Challenge[52]),
   .I3(A51[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y20" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B52 (
   .O(A52[1]),
   .I0(A51[1]),
   .I1(A51[0]),
   .I2(Challenge[52]),
   .I3(A51[0])
);

////////////////////// Stage 53 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y19" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A53 (
   .O(A53[0]),
   .I0(A52[0]),
   .I1(A52[1]),
   .I2(Challenge[53]),
   .I3(A52[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y19" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B53 (
   .O(A53[1]),
   .I0(A52[1]),
   .I1(A52[0]),
   .I2(Challenge[53]),
   .I3(A52[0])
);

////////////////////// Stage 54 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y18" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A54 (
   .O(A54[0]),
   .I0(A53[0]),
   .I1(A53[1]),
   .I2(Challenge[54]),
   .I3(A53[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y18" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B54 (
   .O(A54[1]),
   .I0(A53[1]),
   .I1(A53[0]),
   .I2(Challenge[54]),
   .I3(A53[0])
);

////////////////////// Stage 55 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y17" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A55 (
   .O(A55[0]),
   .I0(A54[0]),
   .I1(A54[1]),
   .I2(Challenge[55]),
   .I3(A54[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y17" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B55 (
   .O(A55[1]),
   .I0(A54[1]),
   .I1(A54[0]),
   .I2(Challenge[55]),
   .I3(A54[0])
);

////////////////////// Stage 56 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y16" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A56 (
   .O(A56[0]),
   .I0(A55[0]),
   .I1(A55[1]),
   .I2(Challenge[56]),
   .I3(A55[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y16" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B56 (
   .O(A56[1]),
   .I0(A55[1]),
   .I1(A55[0]),
   .I2(Challenge[56]),
   .I3(A55[0])
);

////////////////////// Stage 57 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y15" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A57 (
   .O(A57[0]),
   .I0(A56[0]),
   .I1(A56[1]),
   .I2(Challenge[57]),
   .I3(A56[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y15" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B57 (
   .O(A57[1]),
   .I0(A56[1]),
   .I1(A56[0]),
   .I2(Challenge[57]),
   .I3(A56[0])
);

////////////////////// Stage 58 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y14" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A58 (
   .O(A58[0]),
   .I0(A57[0]),
   .I1(A57[1]),
   .I2(Challenge[58]),
   .I3(A57[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y14" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B58 (
   .O(A58[1]),
   .I0(A57[1]),
   .I1(A57[0]),
   .I2(Challenge[58]),
   .I3(A57[0])
);

////////////////////// Stage 59 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y13" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A59 (
   .O(A59[0]),
   .I0(A58[0]),
   .I1(A58[1]),
   .I2(Challenge[59]),
   .I3(A58[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y13" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B59 (
   .O(A59[1]),
   .I0(A58[1]),
   .I1(A58[0]),
   .I2(Challenge[59]),
   .I3(A58[0])
);

////////////////////// Stage 60 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y12" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A60 (
   .O(A60[0]),
   .I0(A59[0]),
   .I1(A59[1]),
   .I2(Challenge[60]),
   .I3(A59[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y12" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B60 (
   .O(A60[1]),
   .I0(A59[1]),
   .I1(A59[0]),
   .I2(Challenge[60]),
   .I3(A59[0])
);

////////////////////// Stage 61 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y11" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A61 (
   .O(A61[0]),
   .I0(A60[0]),
   .I1(A60[1]),
   .I2(Challenge[61]),
   .I3(A60[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y11" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B61 (
   .O(A61[1]),
   .I0(A60[1]),
   .I1(A60[0]),
   .I2(Challenge[61]),
   .I3(A60[0])
);

////////////////////// Stage 62 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y10" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A62 (
   .O(A62[0]),
   .I0(A61[0]),
   .I1(A61[1]),
   .I2(Challenge[62]),
   .I3(A61[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y10" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B62 (
   .O(A62[1]),
   .I0(A61[1]),
   .I1(A61[0]),
   .I2(Challenge[62]),
   .I3(A61[0])
);

////////////////////// Stage 63 //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y9" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
LUT4 #(
.INIT(64'hCACA)
) MUX_A63 (
   .O(A63[0]),
   .I0(A62[0]),
   .I1(A62[1]),
   .I2(Challenge[63]),
   .I3(A62[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y9" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_B63 (
   .O(A63[1]),
   .I0(A62[1]),
   .I1(A62[0]),
   .I2(Challenge[63]),
   .I3(A62[0])
);

////////////////////// Stage Parity //////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "A6LUT" *)(* LOC = "SLICE_X31Y8" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA)
) MUX_A64 (
   .O(A64[0]), 
   .I0(A63[0]),
   .I1(A63[1]),
   .I2(Challenge_parity_bit),
   .I3(A63[1])
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X31Y8" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hCACA) 
) MUX_B64 (
   .O(A64[1]), 
   .I0(A63[1]),
   .I1(A63[0]),
   .I2(Challenge_parity_bit),
   .I3(A63[0])
);


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//////////   END OF THE DELAY LINES MAY THESE CURSE ME FOR THE REST OF MY LIFE GETTING THESE BALLANCED!!!!!!!!!!!
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X30Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
//LUT2 #(
//.INIT(64'hE)
//) OR_finish (
//    .O(finished),
//    .I0(Q_15),
//    .I1(Q1_15)
//);  

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//
//////////   Thank you counters for just working <3
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "B6LUT" *)(* LOC = "SLICE_X32Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'hACA0) // Specify LUT Contents
) Delay_line_MUX (
   .O(to_counter), // 1-bit LUT6 output
   .I0(A0[0]),
   .I1(A0[1]),
   .I2(EN[0]),
   .I3(EN[1])
);


/////////////////////////////////////////// COUNTER  0  //////////////////////////////////////////////////////////////////////////////////


(* BEL = "CFF" *)(* LOC = "SLICE_X32Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_0 (
  .Q(Q_0),      // 1-bit Data output
  .C(to_counter),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_0_1)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_0_inver (
   .O(Q_0_1), // 1-bit LUT6 output
   .I0(Q_0)
);

 (* BEL = "CFF" *)(* LOC = "SLICE_X32Y71" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_1 (
  .Q(Q_1),      // 1-bit Data output
  .C(Q_0_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_1_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y71" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_1_inver (
   .O(Q_1_1), // 1-bit LUT6 output
   .I0(Q_1)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y70" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_2 (
  .Q(Q_2),      // 1-bit Data output
  .C(Q_1_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_2_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y70" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_2_inver (
   .O(Q_2_1), // 1-bit LUT6 output
   .I0(Q_2)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y69" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_3 (
  .Q(Q_3),      // 1-bit Data output
  .C(Q_2_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_3_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y69" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_3_inver (
   .O(Q_3_1), // 1-bit LUT6 output
   .I0(Q_3)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y68" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_4 (
  .Q(Q_4),      // 1-bit Data output
  .C(Q_3_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_4_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y68" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_4_inver (
   .O(Q_4_1), // 1-bit LUT6 output
   .I0(Q_4)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y67" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_5 (
  .Q(Q_5),      // 1-bit Data output
  .C(Q_4_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_5_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y67" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_5_inver (
   .O(Q_5_1), // 1-bit LUT6 output
   .I0(Q_5)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y66" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_6 (
  .Q(Q_6),      // 1-bit Data output
  .C(Q_5_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_6_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y66" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_6_inver (
   .O(Q_6_1), // 1-bit LUT6 output
   .I0(Q_6)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y65" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_7 (
  .Q(Q_7),      // 1-bit Data output
  .C(Q_6_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_7_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y65" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_7_inver (
   .O(Q_7_1), // 1-bit LUT6 output
   .I0(Q_7)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y64" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_8 (
  .Q(Q_8),      // 1-bit Data output
  .C(Q_7_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_8_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y64" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_8_inver (
   .O(Q_8_1), // 1-bit LUT6 output
   .I0(Q_8)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y63" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_9 (
  .Q(Q_9),      // 1-bit Data output
  .C(Q_8_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_9_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y63" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_9_inver (
   .O(Q_9_1), // 1-bit LUT6 output
   .I0(Q_9)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y62" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_10 (
  .Q(Q_10),      // 1-bit Data output
  .C(Q_9_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_10_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y62" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_10_inver (
   .O(Q_10_1), // 1-bit LUT6 output
   .I0(Q_10)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y61" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_11 (
  .Q(Q_11),      // 1-bit Data output
  .C(Q_10_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_11_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y61" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_11_inver (
   .O(Q_11_1), // 1-bit LUT6 output
   .I0(Q_11)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y60" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_12 (
  .Q(Q_12),      // 1-bit Data output
  .C(Q_11_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_12_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y60" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_12_inver (
   .O(Q_12_1), // 1-bit LUT6 output
   .I0(Q_12)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y59" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_13 (
  .Q(Q_13),      // 1-bit Data output
  .C(Q_12_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_13_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y59" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_13_inver (
   .O(Q_13_1), // 1-bit LUT6 output
   .I0(Q_13)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y58" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_14 (
  .Q(Q_14),      // 1-bit Data output
  .C(Q_13_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_14_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y58" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_14_inver (
   .O(Q_14_1), // 1-bit LUT6 output
   .I0(Q_14)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X32Y57" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_15 (
  .Q(Q_15),      // 1-bit Data output
  .C(Q_14_1),      // 1-bit Clock input
  .CE(CE),    // 1-bit Clock enable input
  .CLR(CLR),  // 1-bit Asynchronous clear input
  .D(Q_15_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X32Y57" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_15_inver (
   .O(Q_15_1), // 1-bit LUT6 output
   .I0(Q_15)
);
   
      
   
///////////////////////////////////// Counter 1 ///////////////////////////////////////////////////////////////////////////////////////

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_0_1 (
//  .Q(Q1_0),      // 1-bit Data output
//  .C(A[1]),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_0_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y72" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_0_inver_1 (
//   .O(Q1_0_1), // 1-bit LUT6 output
//   .I0(Q1_0)
//);

// (* BEL = "CFF" *)(* LOC = "SLICE_X33Y71" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_1_1 (
//  .Q(Q1_1),      // 1-bit Data output
//  .C(Q1_0_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_1_1)       // 1-bit Data input
//);

//  (* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y71" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_1_inver_1 (
//   .O(Q1_1_1), // 1-bit LUT6 output
//   .I0(Q1_1)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y70" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_2_1 (
//  .Q(Q1_2),      // 1-bit Data output
//  .C(Q1_1_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_2_1)       // 1-bit Data input
//);

//  (* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y70" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_2_inver_1 (
//   .O(Q1_2_1), // 1-bit LUT6 output
//   .I0(Q1_2)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y69" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_3_1 (
//  .Q(Q1_3),      // 1-bit Data output
//  .C(Q1_2_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_3_1)       // 1-bit Data input
//);

//  (* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y69" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_3_inver_1 (
//   .O(Q1_3_1), // 1-bit LUT6 output
//   .I0(Q1_3)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y68" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_4_1 (
//  .Q(Q1_4),      // 1-bit Data output
//  .C(Q1_3_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_4_1)       // 1-bit Data input
//);

//  (* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y68" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_4_inver_1 (
//   .O(Q1_4_1), // 1-bit LUT6 output
//   .I0(Q1_4)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y67" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_5_1 (
//  .Q(Q1_5),      // 1-bit Data output
//  .C(Q1_4_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_5_1)       // 1-bit Data input
//);

//  (* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y67" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_5_inver_1 (
//   .O(Q1_5_1), // 1-bit LUT6 output
//   .I0(Q1_5)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y66" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_6_1 (
//  .Q(Q1_6),      // 1-bit Data output
//  .C(Q1_5_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_6_1)       // 1-bit Data input
//);

//  (* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y66" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_6_inver_1 (
//   .O(Q1_6_1), // 1-bit LUT6 output
//   .I0(Q1_6)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y65" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_7_1 (
//  .Q(Q1_7),      // 1-bit Data output
//  .C(Q1_6_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_7_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y65" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_7_inver_1 (
//   .O(Q1_7_1), // 1-bit LUT6 output
//   .I0(Q1_7)
//);

//    (* BEL = "CFF" *)(* LOC = "SLICE_X33Y64" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_8_1 (
//  .Q(Q1_8),      // 1-bit Data output
//  .C(Q1_7_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_8_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y64" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_8_inver_1 (
//   .O(Q1_8_1), // 1-bit LUT6 output
//   .I0(Q1_8)
//);

//       (* BEL = "CFF" *)(* LOC = "SLICE_X33Y63" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_9_1 (
//  .Q(Q1_9),      // 1-bit Data output
//  .C(Q1_8_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_9_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y63" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_9_inver_1 (
//   .O(Q1_9_1), // 1-bit LUT6 output
//   .I0(Q1_9)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y62" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_10_1 (
//  .Q(Q1_10),      // 1-bit Data output
//  .C(Q1_9_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_10_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y62" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_10_inver_1 (
//   .O(Q1_10_1), // 1-bit LUT6 output
//   .I0(Q1_10)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y61" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_11_1 (
//  .Q(Q1_11),      // 1-bit Data output
//  .C(Q1_10_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_11_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y61" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_11_inver_1 (
//   .O(Q1_11_1), // 1-bit LUT6 output
//   .I0(Q1_11)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y60" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_12_1 (
//  .Q(Q1_12),      // 1-bit Data output
//  .C(Q1_11_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_12_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y60" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_12_inver_1 (
//   .O(Q1_12_1), // 1-bit LUT6 output
//   .I0(Q1_12)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y59" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_13_1 (
//  .Q(Q1_13),      // 1-bit Data output
//  .C(Q1_12_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_13_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y59" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_13_inver_1 (
//   .O(Q1_13_1), // 1-bit LUT6 output
//   .I0(Q1_13)
//);
 
//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y58" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_14_1 (
//  .Q(Q1_14),      // 1-bit Data output
//  .C(Q1_13_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_14_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y58" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_14_inver_1 (
//   .O(Q1_14_1), // 1-bit LUT6 output
//   .I0(Q1_14)
//);

//(* BEL = "CFF" *)(* LOC = "SLICE_X33Y57" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//FDCE #(
//.INIT(1'b0)
//) DFF_15_1 (
//  .Q(Q1_15),      // 1-bit Data output
//  .C(Q1_14_1),      // 1-bit Clock input
//  .CE(CE),    // 1-bit Clock enable input
//  .CLR(CLR),  // 1-bit Asynchronous clear input
//  .D(Q1_15_1)       // 1-bit Data input
//);

//(* BEL = "C6LUT" *)(* LOC = "SLICE_X33Y57" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
//LUT1 #(
//.INIT(64'h1) // Specify LUT Contents
//) FF_15_inver_1 (
//   .O(Q1_15_1), // 1-bit LUT6 output
//   .I0(Q1_15)
//);


assign Counter_0[0] = Q_0;
assign Counter_0[1] = Q_1;
assign Counter_0[2] = Q_2;
assign Counter_0[3] = Q_3;
assign Counter_0[4] = Q_4;
assign Counter_0[5] = Q_5;
assign Counter_0[6] = Q_6;
assign Counter_0[7] = Q_7;
assign Counter_0[8] = Q_8;
assign Counter_0[9] = Q_9;
assign Counter_0[10] = Q_10;
assign Counter_0[11] = Q_11;
assign Counter_0[12] = Q_12;
assign Counter_0[13] = Q_13;
assign Counter_0[14] = Q_14;
assign Counter_0[15] = Q_15;

//assign Counter_1[0] = Q1_0;
//assign Counter_1[1] = Q1_1;
//assign Counter_1[2] = Q1_2;
//assign Counter_1[3] = Q1_3;
//assign Counter_1[4] = Q1_4;
//assign Counter_1[5] = Q1_5;
//assign Counter_1[6] = Q1_6;
//assign Counter_1[7] = Q1_7;
//assign Counter_1[8] = Q1_8;
//assign Counter_1[9] = Q1_9;
//assign Counter_1[10] = Q1_10;
//assign Counter_1[11] = Q1_11;
//assign Counter_1[12] = Q1_12;
//assign Counter_1[13] = Q1_13;
//assign Counter_1[14] = Q1_14;
//assign Counter_1[15] = Q1_15;
   
   
   
endmodule
