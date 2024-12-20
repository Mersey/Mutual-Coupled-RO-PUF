// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jun 26 16:13:25 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Test_CRO_1_0_0/design_1_Test_CRO_1_0_0_stub.v
// Design      : design_1_Test_CRO_1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Test_CRO_1,Vivado 2023.1" *)
module design_1_Test_CRO_1_0_0(Challenge_0, Challenge_1, EN, CLR, CE, Fin, 
  Counter_0, Challenge_parity_bit, finished)
/* synthesis syn_black_box black_box_pad_pin="Challenge_0[31:0],Challenge_1[31:0],EN[1:0],CLR,CE,Fin,Counter_0[15:0],Challenge_parity_bit,finished" */;
  input [31:0]Challenge_0;
  input [31:0]Challenge_1;
  input [1:0]EN;
  input CLR;
  input CE;
  input Fin;
  output [15:0]Counter_0;
  input Challenge_parity_bit;
  output finished;
endmodule
