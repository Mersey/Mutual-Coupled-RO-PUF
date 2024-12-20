// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
// Date        : Fri Dec 20 22:44:32 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/40227910/Desktop/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Counter_latch_0_0/design_1_Counter_latch_0_0_stub.v
// Design      : design_1_Counter_latch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Counter_latch,Vivado 2023.1.1" *)
module design_1_Counter_latch_0_0(A, CLK, EN, Finished, CLR_M, O_0, O_1, O_2)
/* synthesis syn_black_box black_box_pad_pin="A,EN[1:0],Finished,CLR_M,O_0,O_1,O_2" */
/* synthesis syn_force_seq_prim="CLK" */;
  input A;
  input CLK /* synthesis syn_isclock = 1 */;
  input [1:0]EN;
  input Finished;
  input CLR_M;
  output O_0;
  output O_1;
  output O_2;
endmodule
