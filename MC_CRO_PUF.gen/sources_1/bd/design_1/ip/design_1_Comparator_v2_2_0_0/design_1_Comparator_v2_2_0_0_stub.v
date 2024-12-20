// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
// Date        : Fri Dec 20 22:53:12 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/40227910/Desktop/MC_CRO_PUF/MC_CRO_PUF.gen/sources_1/bd/design_1/ip/design_1_Comparator_v2_2_0_0/design_1_Comparator_v2_2_0_0_stub.v
// Design      : design_1_Comparator_v2_2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Comparator_v2_2,Vivado 2023.1.1" *)
module design_1_Comparator_v2_2_0_0(A, B, A_is_larger)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[15:0],A_is_larger" */;
  input [15:0]A;
  input [15:0]B;
  output A_is_larger;
endmodule
