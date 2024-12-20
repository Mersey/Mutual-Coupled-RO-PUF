// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
// Date        : Fri Dec 20 22:44:32 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/40227910/Desktop/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Counter_latch_0_0/design_1_Counter_latch_0_0_sim_netlist.v
// Design      : design_1_Counter_latch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Counter_latch_0_0,Counter_latch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Counter_latch,Vivado 2023.1.1" *) 
(* NotValidForBitStream *)
module design_1_Counter_latch_0_0
   (A,
    CLK,
    EN,
    Finished,
    CLR_M,
    O_0,
    O_1,
    O_2);
  input A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input [1:0]EN;
  input Finished;
  input CLR_M;
  output O_0;
  output O_1;
  output O_2;

  wire A;
  wire CLK;
  wire CLR_M;
  wire [1:0]EN;
  wire Finished;
  wire O_0;
  wire O_1;
  wire O_2;

  design_1_Counter_latch_0_0_Counter_latch inst
       (.A(A),
        .CLK(CLK),
        .CLR_M(CLR_M),
        .EN(EN),
        .Finished(Finished),
        .O_0(O_0),
        .O_1(O_1),
        .O_2(O_2));
endmodule

(* ORIG_REF_NAME = "Counter_latch" *) 
module design_1_Counter_latch_0_0_Counter_latch
   (O_0,
    O_1,
    O_2,
    EN,
    Finished,
    A,
    CLK,
    CLR_M);
  output O_0;
  output O_1;
  output O_2;
  input [1:0]EN;
  input Finished;
  input A;
  input CLK;
  input CLR_M;

  wire A;
  wire CE_0;
  wire CE_1;
  wire CE_2;
  wire CLK;
  wire CLR_M;
  wire [1:0]EN;
  wire Finished;
  wire O_0;
  wire O_1;
  wire O_2;

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
        .D(A),
        .Q(O_0));
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
        .D(A),
        .Q(O_1));
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
        .D(A),
        .Q(O_2));
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
