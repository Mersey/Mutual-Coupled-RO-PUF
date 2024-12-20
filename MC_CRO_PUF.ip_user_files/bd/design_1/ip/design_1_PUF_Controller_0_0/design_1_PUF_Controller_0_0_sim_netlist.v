// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jun 26 01:56:24 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_PUF_Controller_0_0/design_1_PUF_Controller_0_0_sim_netlist.v
// Design      : design_1_PUF_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PUF_Controller_0_0,PUF_Controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "PUF_Controller,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_PUF_Controller_0_0
   (EN_master,
    CLK,
    Response,
    finished,
    EN,
    CLR,
    CE,
    Finished_master,
    Response_master);
  input EN_master;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input Response;
  input finished;
  output [1:0]EN;
  output CLR;
  output CE;
  output Finished_master;
  output Response_master;

  wire CE;
  wire CLK;
  wire CLR;
  wire [1:0]EN;
  wire EN_master;
  wire Finished_master;
  wire Response;
  wire Response_master;
  wire finished;

  design_1_PUF_Controller_0_0_PUF_Controller inst
       (.CE(CE),
        .CLK(CLK),
        .CLR(CLR),
        .EN(EN),
        .EN_master(EN_master),
        .Finished_master(Finished_master),
        .Response(Response),
        .Response_master(Response_master),
        .finished(finished));
endmodule

(* ORIG_REF_NAME = "PUF_Controller" *) 
module design_1_PUF_Controller_0_0_PUF_Controller
   (CE,
    CLR,
    Finished_master,
    EN,
    Response_master,
    EN_master,
    CLK,
    finished,
    Response);
  output CE;
  output CLR;
  output Finished_master;
  output [1:0]EN;
  output Response_master;
  input EN_master;
  input CLK;
  input finished;
  input Response;

  wire CE;
  wire CE_flag;
  wire CE_flag_1;
  wire CE_reponse_reg_0;
  wire CLK;
  wire CLR;
  wire CLR_Counter;
  wire CLR_Flag_1;
  wire CLR_master;
  wire CLR_reg;
  wire Cycle_counter_bit_0;
  wire Cycle_counter_bit_0_1;
  wire Cycle_counter_bit_1;
  wire Cycle_counter_bit_1_1;
  wire Cycle_finish_flag;
  wire [1:0]EN;
  wire EN_Flag;
  wire EN_latch;
  wire EN_master;
  wire Finished_delayed_1CLK;
  wire Finished_delayed_2CLK;
  wire Finished_master;
  wire Master_CLR_Flag;
  wire Master_CLR_Flag_1;
  wire Master_CLR_Flag_2;
  wire Master_finish_flag_AND;
  wire Pass_Complete;
  wire Pass_Complete_1;
  wire Q_0;
  wire Q_0_1;
  wire Q_1;
  wire Q_1_1;
  wire Ready_flag;
  wire Response;
  wire Response_master;
  wire finished;
  wire finished_1;
  wire response_0;
  wire response_1;
  wire response_2;
  wire NLW_CE_reponse_reg2_O_UNCONNECTED;
  wire NLW_CE_reponse_reg3_O_UNCONNECTED;

  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    AND_finish_master
       (.I0(Cycle_counter_bit_0),
        .I1(Cycle_counter_bit_1),
        .O(Master_finish_flag_AND));
  (* BEL = "D6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Average_response
       (.I0(response_0),
        .I1(response_1),
        .I2(response_2),
        .O(Response_master));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    CE_Flag_latch
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(CE_flag),
        .Q(CE_flag_1));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    CE_Flag_latch_1
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(CE_flag_1),
        .Q(CE));
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y20" *) 
  LUT3 #(
    .INIT(8'h20)) 
    CE_reponse_reg1
       (.I0(Cycle_counter_bit_0),
        .I1(Cycle_counter_bit_1),
        .I2(finished),
        .O(CE_reponse_reg_0));
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    CE_reponse_reg2
       (.I0(Cycle_counter_bit_0),
        .I1(Cycle_counter_bit_1),
        .I2(finished),
        .O(NLW_CE_reponse_reg2_O_UNCONNECTED));
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    CE_reponse_reg3
       (.I0(Cycle_counter_bit_0),
        .I1(Cycle_counter_bit_1),
        .I2(finished),
        .O(NLW_CE_reponse_reg3_O_UNCONNECTED));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    CLR_Flag_latch_1
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(CLR_Flag_1),
        .Q(CLR));
  (* BEL = "D6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    CLR_if_EN_lost
       (.I0(EN_master),
        .O(CLR_Counter));
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y19" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    CLR_master_second
       (.I0(Pass_Complete_1),
        .I1(Cycle_counter_bit_0),
        .I2(Cycle_counter_bit_1),
        .I3(CLR),
        .O(Master_CLR_Flag_2));
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    Cycle_finish
       (.I0(EN[0]),
        .I1(EN[1]),
        .I2(finished),
        .O(Cycle_finish_flag));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_0
       (.C(Finished_delayed_2CLK),
        .CE(1'b1),
        .CLR(CLR_master),
        .D(Q_0_1),
        .Q(Q_0));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y23" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    DFF_1
       (.C(Q_0_1),
        .CE(1'b1),
        .CLR(CLR_master),
        .D(Q_1_1),
        .Q(Q_1));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    EN_Flag_latch_1
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(EN_Flag),
        .Q(Ready_flag));
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y24" *) 
  LUT4 #(
    .INIT(16'h2200)) 
    Enable_0
       (.I0(EN_master),
        .I1(Q_0),
        .I2(Q_1),
        .I3(Ready_flag),
        .O(EN[0]));
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y24" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    Enable_1
       (.I0(EN_master),
        .I1(Q_0),
        .I2(Q_1),
        .I3(Ready_flag),
        .O(EN[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_0_inver
       (.I0(Q_0),
        .O(Q_0_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_1_inver
       (.I0(Q_1),
        .O(Q_1_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y20" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_cycle_counter_0
       (.C(Cycle_finish_flag),
        .CE(1'b1),
        .CLR(CLR_Counter),
        .D(Cycle_counter_bit_0_1),
        .Q(Cycle_counter_bit_0));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_cycle_counter_0_inver
       (.I0(Cycle_counter_bit_0),
        .O(Cycle_counter_bit_0_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y19" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    FF_cycle_counter_1
       (.C(Cycle_counter_bit_0_1),
        .CE(1'b1),
        .CLR(CLR_Counter),
        .D(Cycle_counter_bit_1_1),
        .Q(Cycle_counter_bit_1));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X14Y19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FF_cycle_counter_1_inver
       (.I0(Cycle_counter_bit_1),
        .O(Cycle_counter_bit_1_1));
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y19" *) 
  LUT3 #(
    .INIT(8'h08)) 
    Finished_cycle_flag
       (.I0(Q_0),
        .I1(Q_1),
        .I2(CLR),
        .O(Pass_Complete));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Finished_delay_latch_0
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(finished_1),
        .Q(Finished_delayed_1CLK));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Finished_delay_latch_1
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(Finished_delayed_1CLK),
        .Q(Finished_delayed_2CLK));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X17Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Master_CLR_latch
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(Master_CLR_Flag),
        .Q(CLR_master));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y19" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Master_Cycle_finish_Flag_latch
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(Pass_Complete),
        .Q(Pass_Complete_1));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y25" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Master_EN_latch
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(EN_master),
        .Q(EN_latch));
  (* BEL = "DFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y21" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Master_finish_Flag_latch
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(Master_finish_flag_AND),
        .Q(Finished_master));
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y16" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Response_register_bit_0
       (.C(CLK),
        .CE(CE_reponse_reg_0),
        .CLR(CLR_reg),
        .D(Response),
        .Q(response_0));
  (* BEL = "BFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y18" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Response_register_bit_1
       (.C(CLK),
        .CE(CE_reponse_reg_0),
        .CLR(CLR_reg),
        .D(Response),
        .Q(response_1));
  (* BEL = "CFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X15Y17" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    Response_register_bit_2
       (.C(CLK),
        .CE(CE_reponse_reg_0),
        .CLR(CLR_reg),
        .D(Response),
        .Q(response_2));
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  LUT4 #(
    .INIT(16'h000C)) 
    Set_CE_flag
       (.I0(EN_master),
        .I1(EN_latch),
        .I2(finished),
        .I3(CLR),
        .O(CE_flag));
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    Set_CLR_flag_1
       (.I0(EN_master),
        .I1(EN_latch),
        .I2(finished),
        .I3(CE),
        .O(CLR_Flag_1));
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X16Y24" *) 
  LUT4 #(
    .INIT(16'h00C0)) 
    Set_EN_flag
       (.I0(EN_master),
        .I1(EN_latch),
        .I2(CE),
        .I3(Finished_master),
        .O(EN_Flag));
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X17Y24" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    Set_Master_CLR
       (.I0(Q_0),
        .I1(Q_1),
        .I2(CE),
        .I3(EN_master),
        .O(Master_CLR_Flag_1));
  (* BEL = "D6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X17Y24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Set_Master_CLR_OR
       (.I0(Master_CLR_Flag_1),
        .I1(Master_CLR_Flag_2),
        .O(Master_CLR_Flag));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "AFF" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X17Y24" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    finished_latch
       (.C(CLK),
        .CE(1'b1),
        .CLR(1'b0),
        .D(finished),
        .Q(finished_1));
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
