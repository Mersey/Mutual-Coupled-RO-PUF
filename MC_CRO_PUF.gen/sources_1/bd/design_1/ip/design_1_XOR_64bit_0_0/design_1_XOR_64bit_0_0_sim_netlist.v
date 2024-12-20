// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 27 14:19:17 2024
// Host        : ECIT80703 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_XOR_64bit_0_0/design_1_XOR_64bit_0_0_sim_netlist.v
// Design      : design_1_XOR_64bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_XOR_64bit_0_0,XOR_64bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "XOR_64bit,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_XOR_64bit_0_0
   (A,
    B,
    Parity);
  input [31:0]A;
  input [31:0]B;
  output Parity;

  wire [31:0]A;
  wire [31:0]B;
  wire Parity;

  design_1_XOR_64bit_0_0_XOR_64bit inst
       (.A(A),
        .B(B),
        .Parity(Parity));
endmodule

(* ORIG_REF_NAME = "XOR_64bit" *) 
module design_1_XOR_64bit_0_0_XOR_64bit
   (Parity,
    A,
    B);
  output Parity;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire O_0;
  wire O_1;
  wire O_10;
  wire O_11;
  wire O_2;
  wire O_3;
  wire O_4;
  wire O_5;
  wire O_6;
  wire O_7;
  wire O_8;
  wire O_9;
  wire Parity;

  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_first_6_bits
       (.I0(A[0]),
        .I1(A[1]),
        .I2(A[2]),
        .I3(A[3]),
        .I4(A[4]),
        .I5(A[5]),
        .O(O_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits
       (.I0(A[11]),
        .I1(A[12]),
        .I2(A[13]),
        .I3(A[14]),
        .I4(A[15]),
        .I5(O_1),
        .O(O_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_1
       (.I0(A[16]),
        .I1(A[17]),
        .I2(A[18]),
        .I3(A[19]),
        .I4(A[20]),
        .I5(O_2),
        .O(O_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    XOR_last_5_bits_10
       (.I0(B[30]),
        .I1(B[31]),
        .I2(B[0]),
        .I3(O_11),
        .O(Parity));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_2
       (.I0(A[21]),
        .I1(A[22]),
        .I2(A[23]),
        .I3(A[24]),
        .I4(A[25]),
        .I5(O_3),
        .O(O_4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_3
       (.I0(A[26]),
        .I1(A[27]),
        .I2(A[28]),
        .I3(A[29]),
        .I4(A[30]),
        .I5(O_4),
        .O(O_5));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_4
       (.I0(A[31]),
        .I1(B[1]),
        .I2(B[2]),
        .I3(B[3]),
        .I4(B[4]),
        .I5(O_5),
        .O(O_6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_5
       (.I0(B[5]),
        .I1(B[6]),
        .I2(B[7]),
        .I3(B[8]),
        .I4(B[9]),
        .I5(O_6),
        .O(O_7));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_6
       (.I0(B[10]),
        .I1(B[11]),
        .I2(B[12]),
        .I3(B[13]),
        .I4(B[14]),
        .I5(O_7),
        .O(O_8));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_7
       (.I0(B[15]),
        .I1(B[16]),
        .I2(B[17]),
        .I3(B[18]),
        .I4(B[19]),
        .I5(O_8),
        .O(O_9));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_8
       (.I0(B[20]),
        .I1(B[21]),
        .I2(B[22]),
        .I3(B[23]),
        .I4(B[24]),
        .I5(O_9),
        .O(O_10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_last_5_bits_9
       (.I0(B[25]),
        .I1(B[26]),
        .I2(B[27]),
        .I3(B[28]),
        .I4(B[29]),
        .I5(O_10),
        .O(O_11));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    XOR_middle_5_bits
       (.I0(A[6]),
        .I1(A[7]),
        .I2(A[8]),
        .I3(A[9]),
        .I4(A[10]),
        .I5(O_0),
        .O(O_1));
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
