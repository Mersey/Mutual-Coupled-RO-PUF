// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Jun 26 16:23:02 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Comparator_v2_2_0_0/design_1_Comparator_v2_2_0_0_sim_netlist.v
// Design      : design_1_Comparator_v2_2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Comparator_v2_2_0_0,Comparator_v2_2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Comparator_v2_2,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_Comparator_v2_2_0_0
   (A,
    B,
    A_is_larger);
  input [15:0]A;
  input [15:0]B;
  output A_is_larger;

  wire [15:0]A;
  wire A_is_larger;
  wire [15:0]B;

  design_1_Comparator_v2_2_0_0_Comparator_v2_2 inst
       (.A(A),
        .A_is_larger(A_is_larger),
        .B(B));
endmodule

(* ORIG_REF_NAME = "Comparator_v2_2" *) 
module design_1_Comparator_v2_2_0_0_Comparator_v2_2
   (A_is_larger,
    B,
    A);
  output A_is_larger;
  input [15:0]B;
  input [15:0]A;

  wire [15:0]A;
  wire A_is_larger;
  wire [15:0]B;
  wire O0;
  wire O1;
  wire O2;
  wire O_3;
  wire O_4;
  wire O_5;
  wire O_6;

  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X28Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_5th_2_bits
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[8]),
        .I3(A[9]),
        .I4(O_3),
        .O(O_4));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X28Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_6th_2_bits
       (.I0(B[10]),
        .I1(B[11]),
        .I2(A[10]),
        .I3(A[11]),
        .I4(O_4),
        .O(O_5));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X28Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_7th_2_bits
       (.I0(B[12]),
        .I1(B[13]),
        .I2(A[12]),
        .I3(A[13]),
        .I4(O_5),
        .O(O_6));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "D6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X28Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_9th_2_bits
       (.I0(B[14]),
        .I1(B[15]),
        .I2(A[14]),
        .I3(A[15]),
        .I4(O_6),
        .O(A_is_larger));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "C6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_Third_2_bits
       (.I0(B[4]),
        .I1(B[5]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(O1),
        .O(O2));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "A6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y25" *) 
  LUT4 #(
    .INIT(16'hF731)) 
    Comparator_first_2_bits
       (.I0(B[0]),
        .I1(B[1]),
        .I2(A[0]),
        .I3(A[1]),
        .O(O0));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "D6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_forth_2_bits
       (.I0(B[6]),
        .I1(B[7]),
        .I2(A[6]),
        .I3(A[7]),
        .I4(O2),
        .O(O_3));
  (* ALLOW_COMBINATORIAL_LOOPS = "true" *) 
  (* BEL = "B6LUT" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* LOC = "SLICE_X27Y25" *) 
  LUT5 #(
    .INIT(32'hF7317310)) 
    Comparator_second_2_bits
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[2]),
        .I3(A[3]),
        .I4(O0),
        .O(O1));
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
