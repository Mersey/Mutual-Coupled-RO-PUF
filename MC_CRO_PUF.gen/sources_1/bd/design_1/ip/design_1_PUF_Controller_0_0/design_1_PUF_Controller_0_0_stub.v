// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Jun 28 11:44:21 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_PUF_Controller_0_0/design_1_PUF_Controller_0_0_stub.v
// Design      : design_1_PUF_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PUF_Controller,Vivado 2023.1" *)
module design_1_PUF_Controller_0_0(EN_master, CLK, Response, finished, EN, CLR, CE, 
  Finished_master, Response_master)
/* synthesis syn_black_box black_box_pad_pin="EN_master,Response,finished,EN[1:0],CLR,CE,Finished_master,Response_master" */
/* synthesis syn_force_seq_prim="CLK" */;
  input EN_master;
  input CLK /* synthesis syn_isclock = 1 */;
  input Response;
  input finished;
  output [1:0]EN;
  output CLR;
  output CE;
  output Finished_master;
  output Response_master;
endmodule
