// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Jun 24 11:37:08 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_Counter_latch_0_0 -prefix
//               design_1_Counter_latch_0_0_ design_1_Counter_latch_0_0_sim_netlist.v
// Design      : design_1_Counter_latch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_Counter_latch_0_0_Counter_latch
   (O_0,
    O_1,
    O_2,
    O_3,
    O_4,
    O_5,
    EN,
    Finished,
    A,
    CLK,
    CLR_M,
    B);
  output [15:0]O_0;
  output [15:0]O_1;
  output [14:0]O_2;
  output [15:0]O_3;
  output [15:0]O_4;
  output [15:0]O_5;
  input [1:0]EN;
  input Finished;
  input [15:0]A;
  input CLK;
  input CLR_M;
  input [15:0]B;

  wire [15:0]A;
  wire [15:0]B;
  wire CE_0;
  wire CE_1;
  wire CE_2;
  wire CLK;
  wire CLR_M;
  wire [1:0]EN;
  wire Finished;
  wire [15:0]O_0;
  wire [15:0]O_1;
  wire [14:0]O_2;
  wire [15:0]O_3;
  wire [15:0]O_4;
  wire [15:0]O_5;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h20)) 
    CE_0_decode
       (.I0(EN[0]),
        .I1(EN[1]),
        .I2(Finished),
        .O(CE_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h40)) 
    CE_1_decode
       (.I0(EN[0]),
        .I1(EN[1]),
        .I2(Finished),
        .O(CE_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h80)) 
    CE_2_decode
       (.I0(EN[0]),
        .I1(EN[1]),
        .I2(Finished),
        .O(CE_2));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_0
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[0]),
        .Q(O_0[0]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_0_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[0]),
        .Q(O_1[0]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_0_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[0]),
        .Q(O_2[0]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_1
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[1]),
        .Q(O_0[1]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_10
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[10]),
        .Q(O_0[10]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_10_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[10]),
        .Q(O_1[10]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_10_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[10]),
        .Q(O_2[10]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_11
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[11]),
        .Q(O_0[11]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_11_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[11]),
        .Q(O_1[11]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_11_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[11]),
        .Q(O_2[11]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_12
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[12]),
        .Q(O_0[12]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_12_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[12]),
        .Q(O_1[12]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_12_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[12]),
        .Q(O_2[12]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_13
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[13]),
        .Q(O_0[13]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_13_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[13]),
        .Q(O_1[13]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_13_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[13]),
        .Q(O_2[13]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_14
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[14]),
        .Q(O_0[14]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_14_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[14]),
        .Q(O_1[14]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_14_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[14]),
        .Q(O_2[14]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_15
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[15]),
        .Q(O_0[15]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_15_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[15]),
        .Q(O_1[15]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_1_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[1]),
        .Q(O_1[1]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_1_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[1]),
        .Q(O_2[1]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_2
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[2]),
        .Q(O_0[2]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_2_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[2]),
        .Q(O_1[2]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_2_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[2]),
        .Q(O_2[2]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_3
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[3]),
        .Q(O_0[3]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_3_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[3]),
        .Q(O_1[3]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_3_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[3]),
        .Q(O_2[3]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_4
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[4]),
        .Q(O_0[4]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_4_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[4]),
        .Q(O_1[4]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_4_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[4]),
        .Q(O_2[4]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_5
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[5]),
        .Q(O_0[5]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_5_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[5]),
        .Q(O_1[5]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_5_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[5]),
        .Q(O_2[5]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_6
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[6]),
        .Q(O_0[6]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_6_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[6]),
        .Q(O_1[6]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_6_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[6]),
        .Q(O_2[6]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_7
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[7]),
        .Q(O_0[7]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_7_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[7]),
        .Q(O_1[7]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_7_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[7]),
        .Q(O_2[7]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_8
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[8]),
        .Q(O_0[8]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_8_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[8]),
        .Q(O_1[8]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_8_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[8]),
        .Q(O_2[8]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_9
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(A[9]),
        .Q(O_0[9]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_9_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(A[9]),
        .Q(O_1[9]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_9_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(A[9]),
        .Q(O_2[9]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__0
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[0]),
        .Q(O_3[0]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__0_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[0]),
        .Q(O_4[0]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__0_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[0]),
        .Q(O_5[0]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__1
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[1]),
        .Q(O_3[1]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__10
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[10]),
        .Q(O_3[10]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__10_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[10]),
        .Q(O_4[10]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__10_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[10]),
        .Q(O_5[10]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__11
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[11]),
        .Q(O_3[11]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__11_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[11]),
        .Q(O_4[11]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__11_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[11]),
        .Q(O_5[11]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__12
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[12]),
        .Q(O_3[12]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__12_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[12]),
        .Q(O_4[12]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__12_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[12]),
        .Q(O_5[12]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__13
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[13]),
        .Q(O_3[13]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__13_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[13]),
        .Q(O_4[13]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__13_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[13]),
        .Q(O_5[13]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__14
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[14]),
        .Q(O_3[14]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__14_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[14]),
        .Q(O_4[14]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__14_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[14]),
        .Q(O_5[14]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__15
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[15]),
        .Q(O_3[15]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__15_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[15]),
        .Q(O_4[15]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__15_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[15]),
        .Q(O_5[15]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__1_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[1]),
        .Q(O_4[1]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__1_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[1]),
        .Q(O_5[1]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__2
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[2]),
        .Q(O_3[2]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__2_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[2]),
        .Q(O_4[2]));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__2_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[2]),
        .Q(O_5[2]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__3
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[3]),
        .Q(O_3[3]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__3_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[3]),
        .Q(O_4[3]));
  (* BEL = "B5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__3_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[3]),
        .Q(O_5[3]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__4
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[4]),
        .Q(O_3[4]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__4_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[4]),
        .Q(O_4[4]));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__4_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[4]),
        .Q(O_5[4]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__5
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[5]),
        .Q(O_3[5]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__5_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[5]),
        .Q(O_4[5]));
  (* BEL = "C5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__5_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[5]),
        .Q(O_5[5]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__6
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[6]),
        .Q(O_3[6]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__6_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[6]),
        .Q(O_4[6]));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__6_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[6]),
        .Q(O_5[6]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__7
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[7]),
        .Q(O_3[7]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__7_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[7]),
        .Q(O_4[7]));
  (* BEL = "D5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X32Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__7_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[7]),
        .Q(O_5[7]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__8
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[8]),
        .Q(O_3[8]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__8_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[8]),
        .Q(O_4[8]));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__8_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[8]),
        .Q(O_5[8]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y7" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__9
       (.C(CLK),
        .CE(CE_0),
        .CLR(CLR_M),
        .D(B[9]),
        .Q(O_3[9]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y6" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__9_1
       (.C(CLK),
        .CE(CE_1),
        .CLR(CLR_M),
        .D(B[9]),
        .Q(O_4[9]));
  (* BEL = "A5FF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X33Y5" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_B__9_2
       (.C(CLK),
        .CE(CE_2),
        .CLR(CLR_M),
        .D(B[9]),
        .Q(O_5[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Counter_latch_0_0,Counter_latch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Counter_latch,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_Counter_latch_0_0
   (A,
    B,
    CLK,
    EN,
    Finished,
    CLR_M,
    O_0,
    O_1,
    O_2,
    O_3,
    O_4,
    O_5);
  input [15:0]A;
  input [15:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input [1:0]EN;
  input Finished;
  input CLR_M;
  output [15:0]O_0;
  output [15:0]O_1;
  output [15:0]O_2;
  output [15:0]O_3;
  output [15:0]O_4;
  output [15:0]O_5;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire CLR_M;
  wire [1:0]EN;
  wire Finished;
  wire [15:0]O_0;
  wire [15:0]O_1;
  wire [14:0]\^O_2 ;
  wire [15:0]O_3;
  wire [15:0]O_4;
  wire [15:0]O_5;

  assign O_2[15] = \<const0> ;
  assign O_2[14:0] = \^O_2 [14:0];
  GND GND
       (.G(\<const0> ));
  design_1_Counter_latch_0_0_Counter_latch inst
       (.A(A),
        .B(B),
        .CLK(CLK),
        .CLR_M(CLR_M),
        .EN(EN),
        .Finished(Finished),
        .O_0(O_0),
        .O_1(O_1),
        .O_2(\^O_2 ),
        .O_3(O_3),
        .O_4(O_4),
        .O_5(O_5));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
