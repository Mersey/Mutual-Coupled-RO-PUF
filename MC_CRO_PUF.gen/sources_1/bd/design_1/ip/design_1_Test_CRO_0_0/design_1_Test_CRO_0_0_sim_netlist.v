// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jun 26 16:13:24 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Test_CRO_0_0/design_1_Test_CRO_0_0_sim_netlist.v
// Design      : design_1_Test_CRO_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Test_CRO_0_0,Test_CRO,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Test_CRO,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_Test_CRO_0_0
   (Challenge_0,
    Challenge_1,
    EN,
    CLR,
    CE,
    Fin,
    Counter_0,
    Challenge_parity_bit,
    finished);
  input [31:0]Challenge_0;
  input [31:0]Challenge_1;
  input [1:0]EN;
  input CLR;
  input CE;
  input Fin;
  output [15:0]Counter_0;
  input Challenge_parity_bit;
  output finished;

  wire CE;
  wire CLR;
  wire [31:0]Challenge_0;
  wire [31:0]Challenge_1;
  wire Challenge_parity_bit;
  wire [15:0]\^Counter_0 ;
  wire [1:0]EN;
  wire Fin;
  wire finished;

  assign Counter_0[15:13] = \^Counter_0 [15:13];
  assign Counter_0[12] = finished;
  assign Counter_0[11:0] = \^Counter_0 [11:0];
  design_1_Test_CRO_0_0_Test_CRO inst
       (.CE(CE),
        .CLR(CLR),
        .Challenge_0(Challenge_0),
        .Challenge_1(Challenge_1),
        .Challenge_parity_bit(Challenge_parity_bit),
        .Counter_0({\^Counter_0 [15:13],finished,\^Counter_0 [11:0]}),
        .EN(EN),
        .Fin(Fin));
endmodule

(* ORIG_REF_NAME = "Test_CRO" *) 
module design_1_Test_CRO_0_0_Test_CRO
   (Counter_0,
    Challenge_0,
    EN,
    Fin,
    Challenge_1,
    Challenge_parity_bit,
    CE,
    CLR);
  output [15:0]Counter_0;
  input [31:0]Challenge_0;
  input [1:0]EN;
  input Fin;
  input [31:0]Challenge_1;
  input Challenge_parity_bit;
  input CE;
  input CLR;

  wire [1:0]A0;
  wire [1:0]A1;
  wire [1:0]A10;
  wire [1:0]A11;
  wire [1:0]A12;
  wire [1:0]A13;
  wire [1:0]A14;
  wire [1:0]A15;
  wire [1:0]A16;
  wire [1:0]A17;
  wire [1:0]A18;
  wire [1:0]A19;
  wire [1:0]A2;
  wire [1:0]A20;
  wire [1:0]A21;
  wire [1:0]A22;
  wire [1:0]A23;
  wire [1:0]A24;
  wire [1:0]A25;
  wire [1:0]A26;
  wire [1:0]A27;
  wire [1:0]A28;
  wire [1:0]A29;
  wire [1:0]A3;
  wire [1:0]A30;
  wire [1:0]A31;
  wire [1:0]A32;
  wire [1:0]A33;
  wire [1:0]A34;
  wire [1:0]A35;
  wire [1:0]A36;
  wire [1:0]A37;
  wire [1:0]A38;
  wire [1:0]A39;
  wire [1:0]A4;
  wire [1:0]A40;
  wire [1:0]A41;
  wire [1:0]A42;
  wire [1:0]A43;
  wire [1:0]A44;
  wire [1:0]A45;
  wire [1:0]A46;
  wire [1:0]A47;
  wire [1:0]A48;
  wire [1:0]A49;
  wire [1:0]A5;
  wire [1:0]A50;
  wire [1:0]A51;
  wire [1:0]A52;
  wire [1:0]A53;
  wire [1:0]A54;
  wire [1:0]A55;
  wire [1:0]A56;
  wire [1:0]A57;
  wire [1:0]A58;
  wire [1:0]A59;
  wire [1:0]A6;
  wire [1:0]A60;
  wire [1:0]A61;
  wire [1:0]A62;
  wire [1:0]A63;
  wire [1:0]A64;
  wire [1:0]A7;
  wire [1:0]A8;
  wire [1:0]A9;
  wire CE;
  wire CLR;
  wire [31:0]Challenge_0;
  wire [31:0]Challenge_1;
  wire Challenge_parity_bit;
  wire [15:0]Counter_0;
  wire [1:0]EN;
  wire Fin;
  wire Q_0_1;
  wire Q_10_1;
  wire Q_11_1;
  wire Q_12_1;
  wire Q_13_1;
  wire Q_14_1;
  wire Q_15_1;
  wire Q_1_1;
  wire Q_2_1;
  wire Q_3_1;
  wire Q_4_1;
  wire Q_5_1;
  wire Q_6_1;
  wire Q_7_1;
  wire Q_8_1;
  wire Q_9_1;
  wire to_counter;

  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y72" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_0
       (.C(to_counter),
        .CE(CE),
        .CLR(CLR),
        .D(Q_0_1),
        .Q(Counter_0[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y71" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_1
       (.C(Q_0_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_1_1),
        .Q(Counter_0[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y62" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_10
       (.C(Q_9_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_10_1),
        .Q(Counter_0[10]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y61" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_11
       (.C(Q_10_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_11_1),
        .Q(Counter_0[11]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y60" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_12
       (.C(Q_11_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_12_1),
        .Q(Counter_0[12]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y59" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_13
       (.C(Q_12_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_13_1),
        .Q(Counter_0[13]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y58" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_14
       (.C(Q_13_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_14_1),
        .Q(Counter_0[14]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y57" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_15
       (.C(Q_14_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_15_1),
        .Q(Counter_0[15]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y70" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_2
       (.C(Q_1_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_2_1),
        .Q(Counter_0[2]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y69" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_3
       (.C(Q_2_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_3_1),
        .Q(Counter_0[3]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y68" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_4
       (.C(Q_3_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_4_1),
        .Q(Counter_0[4]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y67" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_5
       (.C(Q_4_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_5_1),
        .Q(Counter_0[5]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y66" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_6
       (.C(Q_5_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_6_1),
        .Q(Counter_0[6]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y65" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_7
       (.C(Q_6_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_7_1),
        .Q(Counter_0[7]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y64" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_8
       (.C(Q_7_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_8_1),
        .Q(Counter_0[8]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y63" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_9
       (.C(Q_8_1),
        .CE(CE),
        .CLR(CLR),
        .D(Q_9_1),
        .Q(Counter_0[9]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y72" *) 
  LUT4 #(
    .INIT(16'hACA0)) 
    Delay_line_MUX
       (.I0(A0[0]),
        .I1(A0[1]),
        .I2(EN[0]),
        .I3(EN[1]),
        .O(to_counter));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y72" *) 
  LUT5 #(
    .INIT(32'h00003500)) 
    Enable_A
       (.I0(A64[0]),
        .I1(A64[1]),
        .I2(Challenge_0[0]),
        .I3(EN[0]),
        .I4(Fin),
        .O(A0[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y72" *) 
  LUT5 #(
    .INIT(32'h00003500)) 
    Enable_B
       (.I0(A64[1]),
        .I1(A64[0]),
        .I2(Challenge_0[0]),
        .I3(EN[1]),
        .I4(Fin),
        .O(A0[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y72" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_0_inver
       (.I0(Counter_0[0]),
        .O(Q_0_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y62" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_10_inver
       (.I0(Counter_0[10]),
        .O(Q_10_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y61" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_11_inver
       (.I0(Counter_0[11]),
        .O(Q_11_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_12_inver
       (.I0(Counter_0[12]),
        .O(Q_12_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_13_inver
       (.I0(Counter_0[13]),
        .O(Q_13_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y58" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_14_inver
       (.I0(Counter_0[14]),
        .O(Q_14_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_15_inver
       (.I0(Counter_0[15]),
        .O(Q_15_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_1_inver
       (.I0(Counter_0[1]),
        .O(Q_1_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y70" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_2_inver
       (.I0(Counter_0[2]),
        .O(Q_2_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y69" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_3_inver
       (.I0(Counter_0[3]),
        .O(Q_3_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y68" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_4_inver
       (.I0(Counter_0[4]),
        .O(Q_4_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y67" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_5_inver
       (.I0(Counter_0[5]),
        .O(Q_5_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y66" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_6_inver
       (.I0(Counter_0[6]),
        .O(Q_6_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_7_inver
       (.I0(Counter_0[7]),
        .O(Q_7_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_8_inver
       (.I0(Counter_0[8]),
        .O(Q_8_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X26Y63" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_9_inver
       (.I0(Counter_0[9]),
        .O(Q_9_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y71" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A1
       (.I0(A0[0]),
        .I1(A0[1]),
        .I2(Challenge_0[1]),
        .I3(A0[1]),
        .O(A1[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y62" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A10
       (.I0(A9[0]),
        .I1(A9[1]),
        .I2(Challenge_0[10]),
        .I3(A9[1]),
        .O(A10[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y61" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A11
       (.I0(A10[0]),
        .I1(A10[1]),
        .I2(Challenge_0[11]),
        .I3(A10[1]),
        .O(A11[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y60" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A12
       (.I0(A11[0]),
        .I1(A11[1]),
        .I2(Challenge_0[12]),
        .I3(A11[1]),
        .O(A12[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y59" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A13
       (.I0(A12[0]),
        .I1(A12[1]),
        .I2(Challenge_0[13]),
        .I3(A12[1]),
        .O(A13[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y58" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A14
       (.I0(A13[0]),
        .I1(A13[1]),
        .I2(Challenge_0[14]),
        .I3(A13[1]),
        .O(A14[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y57" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A15
       (.I0(A14[0]),
        .I1(A14[1]),
        .I2(Challenge_0[15]),
        .I3(A14[1]),
        .O(A15[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y56" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A16
       (.I0(A15[0]),
        .I1(A15[1]),
        .I2(Challenge_0[16]),
        .I3(A15[1]),
        .O(A16[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y55" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A17
       (.I0(A16[0]),
        .I1(A16[1]),
        .I2(Challenge_0[17]),
        .I3(A16[1]),
        .O(A17[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y54" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A18
       (.I0(A17[0]),
        .I1(A17[1]),
        .I2(Challenge_0[18]),
        .I3(A17[1]),
        .O(A18[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y53" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A19
       (.I0(A18[0]),
        .I1(A18[1]),
        .I2(Challenge_0[19]),
        .I3(A18[1]),
        .O(A19[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y70" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A2
       (.I0(A1[0]),
        .I1(A1[1]),
        .I2(Challenge_0[2]),
        .I3(A1[1]),
        .O(A2[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y52" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A20
       (.I0(A19[0]),
        .I1(A19[1]),
        .I2(Challenge_0[20]),
        .I3(A19[1]),
        .O(A20[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y51" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A21
       (.I0(A20[0]),
        .I1(A20[1]),
        .I2(Challenge_0[21]),
        .I3(A20[1]),
        .O(A21[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y50" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A22
       (.I0(A21[0]),
        .I1(A21[1]),
        .I2(Challenge_0[22]),
        .I3(A21[1]),
        .O(A22[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y49" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A23
       (.I0(A22[0]),
        .I1(A22[1]),
        .I2(Challenge_0[23]),
        .I3(A22[1]),
        .O(A23[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y48" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A24
       (.I0(A23[0]),
        .I1(A23[1]),
        .I2(Challenge_0[24]),
        .I3(A23[1]),
        .O(A24[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y47" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A25
       (.I0(A24[0]),
        .I1(A24[1]),
        .I2(Challenge_0[25]),
        .I3(A24[1]),
        .O(A25[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y46" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A26
       (.I0(A25[0]),
        .I1(A25[1]),
        .I2(Challenge_0[26]),
        .I3(A25[1]),
        .O(A26[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y45" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A27
       (.I0(A26[0]),
        .I1(A26[1]),
        .I2(Challenge_0[27]),
        .I3(A26[1]),
        .O(A27[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y44" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A28
       (.I0(A27[0]),
        .I1(A27[1]),
        .I2(Challenge_0[28]),
        .I3(A27[1]),
        .O(A28[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y43" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A29
       (.I0(A28[0]),
        .I1(A28[1]),
        .I2(Challenge_0[29]),
        .I3(A28[1]),
        .O(A29[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y69" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A3
       (.I0(A2[0]),
        .I1(A2[1]),
        .I2(Challenge_0[3]),
        .I3(A2[1]),
        .O(A3[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y42" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A30
       (.I0(A29[0]),
        .I1(A29[1]),
        .I2(Challenge_0[30]),
        .I3(A29[1]),
        .O(A30[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y41" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A31
       (.I0(A30[0]),
        .I1(A30[1]),
        .I2(Challenge_0[31]),
        .I3(A30[1]),
        .O(A31[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y40" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A32
       (.I0(A31[0]),
        .I1(A31[1]),
        .I2(Challenge_1[0]),
        .I3(A31[1]),
        .O(A32[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y39" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A33
       (.I0(A32[0]),
        .I1(A32[1]),
        .I2(Challenge_1[1]),
        .I3(A32[1]),
        .O(A33[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y38" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A34
       (.I0(A33[0]),
        .I1(A33[1]),
        .I2(Challenge_1[2]),
        .I3(A33[1]),
        .O(A34[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y37" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A35
       (.I0(A34[0]),
        .I1(A34[1]),
        .I2(Challenge_1[3]),
        .I3(A34[1]),
        .O(A35[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y36" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A36
       (.I0(A35[0]),
        .I1(A35[1]),
        .I2(Challenge_1[4]),
        .I3(A35[1]),
        .O(A36[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y35" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A37
       (.I0(A36[0]),
        .I1(A36[1]),
        .I2(Challenge_1[5]),
        .I3(A36[1]),
        .O(A37[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y34" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A38
       (.I0(A37[0]),
        .I1(A37[1]),
        .I2(Challenge_1[6]),
        .I3(A37[1]),
        .O(A38[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y33" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A39
       (.I0(A38[0]),
        .I1(A38[1]),
        .I2(Challenge_1[7]),
        .I3(A38[1]),
        .O(A39[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y68" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A4
       (.I0(A3[0]),
        .I1(A3[1]),
        .I2(Challenge_0[4]),
        .I3(A3[1]),
        .O(A4[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y32" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A40
       (.I0(A39[0]),
        .I1(A39[1]),
        .I2(Challenge_1[8]),
        .I3(A39[1]),
        .O(A40[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y31" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A41
       (.I0(A40[0]),
        .I1(A40[1]),
        .I2(Challenge_1[9]),
        .I3(A40[1]),
        .O(A41[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y30" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A42
       (.I0(A41[0]),
        .I1(A41[1]),
        .I2(Challenge_1[10]),
        .I3(A41[1]),
        .O(A42[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y29" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A43
       (.I0(A42[0]),
        .I1(A42[1]),
        .I2(Challenge_1[11]),
        .I3(A42[1]),
        .O(A43[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y28" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A44
       (.I0(A43[0]),
        .I1(A43[1]),
        .I2(Challenge_1[12]),
        .I3(A43[1]),
        .O(A44[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y27" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A45
       (.I0(A44[0]),
        .I1(A44[1]),
        .I2(Challenge_1[13]),
        .I3(A44[1]),
        .O(A45[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y26" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A46
       (.I0(A45[0]),
        .I1(A45[1]),
        .I2(Challenge_1[14]),
        .I3(A45[1]),
        .O(A46[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y25" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A47
       (.I0(A46[0]),
        .I1(A46[1]),
        .I2(Challenge_1[15]),
        .I3(A46[1]),
        .O(A47[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y24" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A48
       (.I0(A47[0]),
        .I1(A47[1]),
        .I2(Challenge_1[16]),
        .I3(A47[1]),
        .O(A48[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y23" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A49
       (.I0(A48[0]),
        .I1(A48[1]),
        .I2(Challenge_1[17]),
        .I3(A48[1]),
        .O(A49[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y67" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A5
       (.I0(A4[0]),
        .I1(A4[1]),
        .I2(Challenge_0[5]),
        .I3(A4[1]),
        .O(A5[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y22" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A50
       (.I0(A49[0]),
        .I1(A49[1]),
        .I2(Challenge_1[18]),
        .I3(A49[1]),
        .O(A50[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y21" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A51
       (.I0(A50[0]),
        .I1(A50[1]),
        .I2(Challenge_1[19]),
        .I3(A50[1]),
        .O(A51[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y20" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A52
       (.I0(A51[0]),
        .I1(A51[1]),
        .I2(Challenge_1[20]),
        .I3(A51[1]),
        .O(A52[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y19" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A53
       (.I0(A52[0]),
        .I1(A52[1]),
        .I2(Challenge_1[21]),
        .I3(A52[1]),
        .O(A53[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y18" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A54
       (.I0(A53[0]),
        .I1(A53[1]),
        .I2(Challenge_1[22]),
        .I3(A53[1]),
        .O(A54[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y17" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A55
       (.I0(A54[0]),
        .I1(A54[1]),
        .I2(Challenge_1[23]),
        .I3(A54[1]),
        .O(A55[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y16" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A56
       (.I0(A55[0]),
        .I1(A55[1]),
        .I2(Challenge_1[24]),
        .I3(A55[1]),
        .O(A56[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y15" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A57
       (.I0(A56[0]),
        .I1(A56[1]),
        .I2(Challenge_1[25]),
        .I3(A56[1]),
        .O(A57[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y14" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A58
       (.I0(A57[0]),
        .I1(A57[1]),
        .I2(Challenge_1[26]),
        .I3(A57[1]),
        .O(A58[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y13" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A59
       (.I0(A58[0]),
        .I1(A58[1]),
        .I2(Challenge_1[27]),
        .I3(A58[1]),
        .O(A59[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y66" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A6
       (.I0(A5[0]),
        .I1(A5[1]),
        .I2(Challenge_0[6]),
        .I3(A5[1]),
        .O(A6[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y12" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A60
       (.I0(A59[0]),
        .I1(A59[1]),
        .I2(Challenge_1[28]),
        .I3(A59[1]),
        .O(A60[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y11" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A61
       (.I0(A60[0]),
        .I1(A60[1]),
        .I2(Challenge_1[29]),
        .I3(A60[1]),
        .O(A61[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y10" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A62
       (.I0(A61[0]),
        .I1(A61[1]),
        .I2(Challenge_1[30]),
        .I3(A61[1]),
        .O(A62[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y9" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A63
       (.I0(A62[0]),
        .I1(A62[1]),
        .I2(Challenge_1[31]),
        .I3(A62[1]),
        .O(A63[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y8" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A64
       (.I0(A63[0]),
        .I1(A63[1]),
        .I2(Challenge_parity_bit),
        .I3(A63[1]),
        .O(A64[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y65" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A7
       (.I0(A6[0]),
        .I1(A6[1]),
        .I2(Challenge_0[7]),
        .I3(A6[1]),
        .O(A7[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y64" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A8
       (.I0(A7[0]),
        .I1(A7[1]),
        .I2(Challenge_0[8]),
        .I3(A7[1]),
        .O(A8[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y63" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_A9
       (.I0(A8[0]),
        .I1(A8[1]),
        .I2(Challenge_0[9]),
        .I3(A8[1]),
        .O(A9[0]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y71" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B1
       (.I0(A0[1]),
        .I1(A0[0]),
        .I2(Challenge_0[1]),
        .I3(A0[0]),
        .O(A1[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y62" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B10
       (.I0(A9[1]),
        .I1(A9[0]),
        .I2(Challenge_0[10]),
        .I3(A9[0]),
        .O(A10[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y61" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B11
       (.I0(A10[1]),
        .I1(A10[0]),
        .I2(Challenge_0[11]),
        .I3(A10[0]),
        .O(A11[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y60" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B12
       (.I0(A11[1]),
        .I1(A11[0]),
        .I2(Challenge_0[12]),
        .I3(A11[0]),
        .O(A12[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y59" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B13
       (.I0(A12[1]),
        .I1(A12[0]),
        .I2(Challenge_0[13]),
        .I3(A12[0]),
        .O(A13[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y58" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B14
       (.I0(A13[1]),
        .I1(A13[0]),
        .I2(Challenge_0[14]),
        .I3(A13[0]),
        .O(A14[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y57" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B15
       (.I0(A14[1]),
        .I1(A14[0]),
        .I2(Challenge_0[15]),
        .I3(A14[0]),
        .O(A15[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y56" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B16
       (.I0(A15[1]),
        .I1(A15[0]),
        .I2(Challenge_0[16]),
        .I3(A15[0]),
        .O(A16[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y55" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B17
       (.I0(A16[1]),
        .I1(A16[0]),
        .I2(Challenge_0[17]),
        .I3(A16[0]),
        .O(A17[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y54" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B18
       (.I0(A17[1]),
        .I1(A17[0]),
        .I2(Challenge_0[18]),
        .I3(A17[0]),
        .O(A18[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y53" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B19
       (.I0(A18[1]),
        .I1(A18[0]),
        .I2(Challenge_0[19]),
        .I3(A18[0]),
        .O(A19[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y70" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B2
       (.I0(A1[1]),
        .I1(A1[0]),
        .I2(Challenge_0[2]),
        .I3(A1[0]),
        .O(A2[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y52" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B20
       (.I0(A19[1]),
        .I1(A19[0]),
        .I2(Challenge_0[20]),
        .I3(A19[0]),
        .O(A20[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y51" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B21
       (.I0(A20[1]),
        .I1(A20[0]),
        .I2(Challenge_0[21]),
        .I3(A20[0]),
        .O(A21[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y50" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B22
       (.I0(A21[1]),
        .I1(A21[0]),
        .I2(Challenge_0[22]),
        .I3(A21[0]),
        .O(A22[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y49" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B23
       (.I0(A22[1]),
        .I1(A22[0]),
        .I2(Challenge_0[23]),
        .I3(A22[0]),
        .O(A23[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y48" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B24
       (.I0(A23[1]),
        .I1(A23[0]),
        .I2(Challenge_0[24]),
        .I3(A23[0]),
        .O(A24[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y47" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B25
       (.I0(A24[1]),
        .I1(A24[0]),
        .I2(Challenge_0[25]),
        .I3(A24[0]),
        .O(A25[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y46" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B26
       (.I0(A25[1]),
        .I1(A25[0]),
        .I2(Challenge_0[26]),
        .I3(A25[0]),
        .O(A26[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y45" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B27
       (.I0(A26[1]),
        .I1(A26[0]),
        .I2(Challenge_0[27]),
        .I3(A26[0]),
        .O(A27[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y44" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B28
       (.I0(A27[1]),
        .I1(A27[0]),
        .I2(Challenge_0[28]),
        .I3(A27[0]),
        .O(A28[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y43" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B29
       (.I0(A28[1]),
        .I1(A28[0]),
        .I2(Challenge_0[29]),
        .I3(A28[0]),
        .O(A29[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y69" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B3
       (.I0(A2[1]),
        .I1(A2[0]),
        .I2(Challenge_0[3]),
        .I3(A2[0]),
        .O(A3[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y42" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B30
       (.I0(A29[1]),
        .I1(A29[0]),
        .I2(Challenge_0[30]),
        .I3(A29[0]),
        .O(A30[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y41" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B31
       (.I0(A30[1]),
        .I1(A30[0]),
        .I2(Challenge_0[31]),
        .I3(A30[0]),
        .O(A31[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y40" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B32
       (.I0(A31[1]),
        .I1(A31[0]),
        .I2(Challenge_1[0]),
        .I3(A31[0]),
        .O(A32[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y39" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B33
       (.I0(A32[1]),
        .I1(A32[0]),
        .I2(Challenge_1[1]),
        .I3(A32[0]),
        .O(A33[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y38" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B34
       (.I0(A33[1]),
        .I1(A33[0]),
        .I2(Challenge_1[2]),
        .I3(A33[0]),
        .O(A34[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y37" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B35
       (.I0(A34[1]),
        .I1(A34[0]),
        .I2(Challenge_1[3]),
        .I3(A34[0]),
        .O(A35[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y36" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B36
       (.I0(A35[1]),
        .I1(A35[0]),
        .I2(Challenge_1[4]),
        .I3(A35[0]),
        .O(A36[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y35" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B37
       (.I0(A36[1]),
        .I1(A36[0]),
        .I2(Challenge_1[5]),
        .I3(A36[0]),
        .O(A37[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y34" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B38
       (.I0(A37[1]),
        .I1(A37[0]),
        .I2(Challenge_1[6]),
        .I3(A37[0]),
        .O(A38[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y33" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B39
       (.I0(A38[1]),
        .I1(A38[0]),
        .I2(Challenge_1[7]),
        .I3(A38[0]),
        .O(A39[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y68" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B4
       (.I0(A3[1]),
        .I1(A3[0]),
        .I2(Challenge_0[4]),
        .I3(A3[0]),
        .O(A4[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y32" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B40
       (.I0(A39[1]),
        .I1(A39[0]),
        .I2(Challenge_1[8]),
        .I3(A39[0]),
        .O(A40[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y31" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B41
       (.I0(A40[1]),
        .I1(A40[0]),
        .I2(Challenge_1[9]),
        .I3(A40[0]),
        .O(A41[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y30" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B42
       (.I0(A41[1]),
        .I1(A41[0]),
        .I2(Challenge_1[10]),
        .I3(A41[0]),
        .O(A42[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y29" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B43
       (.I0(A42[1]),
        .I1(A42[0]),
        .I2(Challenge_1[11]),
        .I3(A42[0]),
        .O(A43[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y28" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B44
       (.I0(A43[1]),
        .I1(A43[0]),
        .I2(Challenge_1[12]),
        .I3(A43[0]),
        .O(A44[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y27" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B45
       (.I0(A44[1]),
        .I1(A44[0]),
        .I2(Challenge_1[13]),
        .I3(A44[0]),
        .O(A45[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y26" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B46
       (.I0(A45[1]),
        .I1(A45[0]),
        .I2(Challenge_1[14]),
        .I3(A45[0]),
        .O(A46[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y25" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B47
       (.I0(A46[1]),
        .I1(A46[0]),
        .I2(Challenge_1[15]),
        .I3(A46[0]),
        .O(A47[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y24" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B48
       (.I0(A47[1]),
        .I1(A47[0]),
        .I2(Challenge_1[16]),
        .I3(A47[0]),
        .O(A48[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y23" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B49
       (.I0(A48[1]),
        .I1(A48[0]),
        .I2(Challenge_1[17]),
        .I3(A48[0]),
        .O(A49[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y67" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B5
       (.I0(A4[1]),
        .I1(A4[0]),
        .I2(Challenge_0[5]),
        .I3(A4[0]),
        .O(A5[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y22" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B50
       (.I0(A49[1]),
        .I1(A49[0]),
        .I2(Challenge_1[18]),
        .I3(A49[0]),
        .O(A50[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y21" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B51
       (.I0(A50[1]),
        .I1(A50[0]),
        .I2(Challenge_1[19]),
        .I3(A50[0]),
        .O(A51[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y20" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B52
       (.I0(A51[1]),
        .I1(A51[0]),
        .I2(Challenge_1[20]),
        .I3(A51[0]),
        .O(A52[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y19" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B53
       (.I0(A52[1]),
        .I1(A52[0]),
        .I2(Challenge_1[21]),
        .I3(A52[0]),
        .O(A53[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y18" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B54
       (.I0(A53[1]),
        .I1(A53[0]),
        .I2(Challenge_1[22]),
        .I3(A53[0]),
        .O(A54[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y17" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B55
       (.I0(A54[1]),
        .I1(A54[0]),
        .I2(Challenge_1[23]),
        .I3(A54[0]),
        .O(A55[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y16" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B56
       (.I0(A55[1]),
        .I1(A55[0]),
        .I2(Challenge_1[24]),
        .I3(A55[0]),
        .O(A56[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y15" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B57
       (.I0(A56[1]),
        .I1(A56[0]),
        .I2(Challenge_1[25]),
        .I3(A56[0]),
        .O(A57[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y14" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B58
       (.I0(A57[1]),
        .I1(A57[0]),
        .I2(Challenge_1[26]),
        .I3(A57[0]),
        .O(A58[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y13" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B59
       (.I0(A58[1]),
        .I1(A58[0]),
        .I2(Challenge_1[27]),
        .I3(A58[0]),
        .O(A59[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y66" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B6
       (.I0(A5[1]),
        .I1(A5[0]),
        .I2(Challenge_0[6]),
        .I3(A5[0]),
        .O(A6[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y12" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B60
       (.I0(A59[1]),
        .I1(A59[0]),
        .I2(Challenge_1[28]),
        .I3(A59[0]),
        .O(A60[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y11" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B61
       (.I0(A60[1]),
        .I1(A60[0]),
        .I2(Challenge_1[29]),
        .I3(A60[0]),
        .O(A61[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y10" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B62
       (.I0(A61[1]),
        .I1(A61[0]),
        .I2(Challenge_1[30]),
        .I3(A61[0]),
        .O(A62[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y9" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B63
       (.I0(A62[1]),
        .I1(A62[0]),
        .I2(Challenge_1[31]),
        .I3(A62[0]),
        .O(A63[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y8" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B64
       (.I0(A63[1]),
        .I1(A63[0]),
        .I2(Challenge_parity_bit),
        .I3(A63[0]),
        .O(A64[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y65" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B7
       (.I0(A6[1]),
        .I1(A6[0]),
        .I2(Challenge_0[7]),
        .I3(A6[0]),
        .O(A7[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y64" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B8
       (.I0(A7[1]),
        .I1(A7[0]),
        .I2(Challenge_0[8]),
        .I3(A7[0]),
        .O(A8[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X25Y63" *) 
  LUT4 #(
    .INIT(16'hCACA)) 
    MUX_B9
       (.I0(A8[1]),
        .I1(A8[0]),
        .I2(Challenge_0[9]),
        .I3(A8[0]),
        .O(A9[1]));
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
