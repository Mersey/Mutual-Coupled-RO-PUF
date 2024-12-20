-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Jun 26 16:13:25 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Test_CRO_1_0_0/design_1_Test_CRO_1_0_0_sim_netlist.vhdl
-- Design      : design_1_Test_CRO_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Test_CRO_1_0_0_Test_CRO_1 is
  port (
    Counter_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Challenge_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Fin : in STD_LOGIC;
    Challenge_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Challenge_parity_bit : in STD_LOGIC;
    CE : in STD_LOGIC;
    CLR : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Test_CRO_1_0_0_Test_CRO_1 : entity is "Test_CRO_1";
end design_1_Test_CRO_1_0_0_Test_CRO_1;

architecture STRUCTURE of design_1_Test_CRO_1_0_0_Test_CRO_1 is
  signal A0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A10 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A11 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A12 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A13 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A14 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A15 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A16 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A17 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A18 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A19 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A20 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A21 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A22 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A23 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A24 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A25 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A26 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A27 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A28 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A29 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A30 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A31 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A32 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A33 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A34 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A35 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A36 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A37 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A38 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A39 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A40 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A41 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A42 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A43 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A44 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A45 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A46 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A47 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A48 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A49 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A50 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A51 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A52 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A53 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A54 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A55 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A56 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A57 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A58 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A59 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A60 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A61 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A62 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A63 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A64 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A7 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A8 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal A9 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^counter_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Q_0_1 : STD_LOGIC;
  signal Q_10_1 : STD_LOGIC;
  signal Q_11_1 : STD_LOGIC;
  signal Q_12_1 : STD_LOGIC;
  signal Q_13_1 : STD_LOGIC;
  signal Q_14_1 : STD_LOGIC;
  signal Q_15_1 : STD_LOGIC;
  signal Q_1_1 : STD_LOGIC;
  signal Q_2_1 : STD_LOGIC;
  signal Q_3_1 : STD_LOGIC;
  signal Q_4_1 : STD_LOGIC;
  signal Q_5_1 : STD_LOGIC;
  signal Q_6_1 : STD_LOGIC;
  signal Q_7_1 : STD_LOGIC;
  signal Q_8_1 : STD_LOGIC;
  signal Q_9_1 : STD_LOGIC;
  signal to_counter : STD_LOGIC;
  attribute ALLOW_COMBINATORIAL_LOOPS : string;
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_0 : label is "true";
  attribute BEL : string;
  attribute BEL of DFF_0 : label is "CFF";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DFF_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of DFF_0 : label is std.standard.true;
  attribute LOC : string;
  attribute LOC of DFF_0 : label is "SLICE_X32Y72";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_1 : label is "true";
  attribute BEL of DFF_1 : label is "CFF";
  attribute BOX_TYPE of DFF_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_1 : label is std.standard.true;
  attribute LOC of DFF_1 : label is "SLICE_X32Y71";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_10 : label is "true";
  attribute BEL of DFF_10 : label is "CFF";
  attribute BOX_TYPE of DFF_10 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_10 : label is std.standard.true;
  attribute LOC of DFF_10 : label is "SLICE_X32Y62";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_11 : label is "true";
  attribute BEL of DFF_11 : label is "CFF";
  attribute BOX_TYPE of DFF_11 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_11 : label is std.standard.true;
  attribute LOC of DFF_11 : label is "SLICE_X32Y61";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_12 : label is "true";
  attribute BEL of DFF_12 : label is "CFF";
  attribute BOX_TYPE of DFF_12 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_12 : label is std.standard.true;
  attribute LOC of DFF_12 : label is "SLICE_X32Y60";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_13 : label is "true";
  attribute BEL of DFF_13 : label is "CFF";
  attribute BOX_TYPE of DFF_13 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_13 : label is std.standard.true;
  attribute LOC of DFF_13 : label is "SLICE_X32Y59";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_14 : label is "true";
  attribute BEL of DFF_14 : label is "CFF";
  attribute BOX_TYPE of DFF_14 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_14 : label is std.standard.true;
  attribute LOC of DFF_14 : label is "SLICE_X32Y58";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_15 : label is "true";
  attribute BEL of DFF_15 : label is "CFF";
  attribute BOX_TYPE of DFF_15 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_15 : label is std.standard.true;
  attribute LOC of DFF_15 : label is "SLICE_X32Y57";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_2 : label is "true";
  attribute BEL of DFF_2 : label is "CFF";
  attribute BOX_TYPE of DFF_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_2 : label is std.standard.true;
  attribute LOC of DFF_2 : label is "SLICE_X32Y70";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_3 : label is "true";
  attribute BEL of DFF_3 : label is "CFF";
  attribute BOX_TYPE of DFF_3 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_3 : label is std.standard.true;
  attribute LOC of DFF_3 : label is "SLICE_X32Y69";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_4 : label is "true";
  attribute BEL of DFF_4 : label is "CFF";
  attribute BOX_TYPE of DFF_4 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_4 : label is std.standard.true;
  attribute LOC of DFF_4 : label is "SLICE_X32Y68";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_5 : label is "true";
  attribute BEL of DFF_5 : label is "CFF";
  attribute BOX_TYPE of DFF_5 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_5 : label is std.standard.true;
  attribute LOC of DFF_5 : label is "SLICE_X32Y67";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_6 : label is "true";
  attribute BEL of DFF_6 : label is "CFF";
  attribute BOX_TYPE of DFF_6 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_6 : label is std.standard.true;
  attribute LOC of DFF_6 : label is "SLICE_X32Y66";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_7 : label is "true";
  attribute BEL of DFF_7 : label is "CFF";
  attribute BOX_TYPE of DFF_7 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_7 : label is std.standard.true;
  attribute LOC of DFF_7 : label is "SLICE_X32Y65";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_8 : label is "true";
  attribute BEL of DFF_8 : label is "CFF";
  attribute BOX_TYPE of DFF_8 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_8 : label is std.standard.true;
  attribute LOC of DFF_8 : label is "SLICE_X32Y64";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_9 : label is "true";
  attribute BEL of DFF_9 : label is "CFF";
  attribute BOX_TYPE of DFF_9 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_9 : label is std.standard.true;
  attribute LOC of DFF_9 : label is "SLICE_X32Y63";
  attribute ALLOW_COMBINATORIAL_LOOPS of Delay_line_MUX : label is "true";
  attribute BEL of Delay_line_MUX : label is "B6LUT";
  attribute BOX_TYPE of Delay_line_MUX : label is "PRIMITIVE";
  attribute DONT_TOUCH of Delay_line_MUX : label is std.standard.true;
  attribute LOC of Delay_line_MUX : label is "SLICE_X32Y72";
  attribute ALLOW_COMBINATORIAL_LOOPS of Enable_A : label is "true";
  attribute BEL of Enable_A : label is "A6LUT";
  attribute BOX_TYPE of Enable_A : label is "PRIMITIVE";
  attribute DONT_TOUCH of Enable_A : label is std.standard.true;
  attribute LOC of Enable_A : label is "SLICE_X31Y72";
  attribute ALLOW_COMBINATORIAL_LOOPS of Enable_B : label is "true";
  attribute BEL of Enable_B : label is "B6LUT";
  attribute BOX_TYPE of Enable_B : label is "PRIMITIVE";
  attribute DONT_TOUCH of Enable_B : label is std.standard.true;
  attribute LOC of Enable_B : label is "SLICE_X31Y72";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_0_inver : label is "true";
  attribute BEL of FF_0_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_0_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_0_inver : label is std.standard.true;
  attribute LOC of FF_0_inver : label is "SLICE_X32Y72";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_10_inver : label is "true";
  attribute BEL of FF_10_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_10_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_10_inver : label is std.standard.true;
  attribute LOC of FF_10_inver : label is "SLICE_X32Y62";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_11_inver : label is "true";
  attribute BEL of FF_11_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_11_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_11_inver : label is std.standard.true;
  attribute LOC of FF_11_inver : label is "SLICE_X32Y61";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_12_inver : label is "true";
  attribute BEL of FF_12_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_12_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_12_inver : label is std.standard.true;
  attribute LOC of FF_12_inver : label is "SLICE_X32Y60";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_13_inver : label is "true";
  attribute BEL of FF_13_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_13_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_13_inver : label is std.standard.true;
  attribute LOC of FF_13_inver : label is "SLICE_X32Y59";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_14_inver : label is "true";
  attribute BEL of FF_14_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_14_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_14_inver : label is std.standard.true;
  attribute LOC of FF_14_inver : label is "SLICE_X32Y58";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_15_inver : label is "true";
  attribute BEL of FF_15_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_15_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_15_inver : label is std.standard.true;
  attribute LOC of FF_15_inver : label is "SLICE_X32Y57";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_1_inver : label is "true";
  attribute BEL of FF_1_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_1_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_1_inver : label is std.standard.true;
  attribute LOC of FF_1_inver : label is "SLICE_X32Y71";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_2_inver : label is "true";
  attribute BEL of FF_2_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_2_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_2_inver : label is std.standard.true;
  attribute LOC of FF_2_inver : label is "SLICE_X32Y70";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_3_inver : label is "true";
  attribute BEL of FF_3_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_3_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_3_inver : label is std.standard.true;
  attribute LOC of FF_3_inver : label is "SLICE_X32Y69";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_4_inver : label is "true";
  attribute BEL of FF_4_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_4_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_4_inver : label is std.standard.true;
  attribute LOC of FF_4_inver : label is "SLICE_X32Y68";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_5_inver : label is "true";
  attribute BEL of FF_5_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_5_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_5_inver : label is std.standard.true;
  attribute LOC of FF_5_inver : label is "SLICE_X32Y67";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_6_inver : label is "true";
  attribute BEL of FF_6_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_6_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_6_inver : label is std.standard.true;
  attribute LOC of FF_6_inver : label is "SLICE_X32Y66";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_7_inver : label is "true";
  attribute BEL of FF_7_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_7_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_7_inver : label is std.standard.true;
  attribute LOC of FF_7_inver : label is "SLICE_X32Y65";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_8_inver : label is "true";
  attribute BEL of FF_8_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_8_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_8_inver : label is std.standard.true;
  attribute LOC of FF_8_inver : label is "SLICE_X32Y64";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_9_inver : label is "true";
  attribute BEL of FF_9_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_9_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_9_inver : label is std.standard.true;
  attribute LOC of FF_9_inver : label is "SLICE_X32Y63";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A1 : label is "true";
  attribute BEL of MUX_A1 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A1 : label is std.standard.true;
  attribute LOC of MUX_A1 : label is "SLICE_X31Y71";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A10 : label is "true";
  attribute BEL of MUX_A10 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A10 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A10 : label is std.standard.true;
  attribute LOC of MUX_A10 : label is "SLICE_X31Y62";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A11 : label is "true";
  attribute BEL of MUX_A11 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A11 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A11 : label is std.standard.true;
  attribute LOC of MUX_A11 : label is "SLICE_X31Y61";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A12 : label is "true";
  attribute BEL of MUX_A12 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A12 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A12 : label is std.standard.true;
  attribute LOC of MUX_A12 : label is "SLICE_X31Y60";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A13 : label is "true";
  attribute BEL of MUX_A13 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A13 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A13 : label is std.standard.true;
  attribute LOC of MUX_A13 : label is "SLICE_X31Y59";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A14 : label is "true";
  attribute BEL of MUX_A14 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A14 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A14 : label is std.standard.true;
  attribute LOC of MUX_A14 : label is "SLICE_X31Y58";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A15 : label is "true";
  attribute BEL of MUX_A15 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A15 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A15 : label is std.standard.true;
  attribute LOC of MUX_A15 : label is "SLICE_X31Y57";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A16 : label is "true";
  attribute BEL of MUX_A16 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A16 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A16 : label is std.standard.true;
  attribute LOC of MUX_A16 : label is "SLICE_X31Y56";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A17 : label is "true";
  attribute BEL of MUX_A17 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A17 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A17 : label is std.standard.true;
  attribute LOC of MUX_A17 : label is "SLICE_X31Y55";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A18 : label is "true";
  attribute BEL of MUX_A18 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A18 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A18 : label is std.standard.true;
  attribute LOC of MUX_A18 : label is "SLICE_X31Y54";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A19 : label is "true";
  attribute BEL of MUX_A19 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A19 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A19 : label is std.standard.true;
  attribute LOC of MUX_A19 : label is "SLICE_X31Y53";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A2 : label is "true";
  attribute BEL of MUX_A2 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A2 : label is std.standard.true;
  attribute LOC of MUX_A2 : label is "SLICE_X31Y70";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A20 : label is "true";
  attribute BEL of MUX_A20 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A20 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A20 : label is std.standard.true;
  attribute LOC of MUX_A20 : label is "SLICE_X31Y52";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A21 : label is "true";
  attribute BEL of MUX_A21 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A21 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A21 : label is std.standard.true;
  attribute LOC of MUX_A21 : label is "SLICE_X31Y51";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A22 : label is "true";
  attribute BEL of MUX_A22 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A22 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A22 : label is std.standard.true;
  attribute LOC of MUX_A22 : label is "SLICE_X31Y50";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A23 : label is "true";
  attribute BEL of MUX_A23 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A23 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A23 : label is std.standard.true;
  attribute LOC of MUX_A23 : label is "SLICE_X31Y49";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A24 : label is "true";
  attribute BEL of MUX_A24 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A24 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A24 : label is std.standard.true;
  attribute LOC of MUX_A24 : label is "SLICE_X31Y48";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A25 : label is "true";
  attribute BEL of MUX_A25 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A25 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A25 : label is std.standard.true;
  attribute LOC of MUX_A25 : label is "SLICE_X31Y47";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A26 : label is "true";
  attribute BEL of MUX_A26 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A26 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A26 : label is std.standard.true;
  attribute LOC of MUX_A26 : label is "SLICE_X31Y46";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A27 : label is "true";
  attribute BEL of MUX_A27 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A27 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A27 : label is std.standard.true;
  attribute LOC of MUX_A27 : label is "SLICE_X31Y45";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A28 : label is "true";
  attribute BEL of MUX_A28 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A28 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A28 : label is std.standard.true;
  attribute LOC of MUX_A28 : label is "SLICE_X31Y44";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A29 : label is "true";
  attribute BEL of MUX_A29 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A29 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A29 : label is std.standard.true;
  attribute LOC of MUX_A29 : label is "SLICE_X31Y43";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A3 : label is "true";
  attribute BEL of MUX_A3 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A3 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A3 : label is std.standard.true;
  attribute LOC of MUX_A3 : label is "SLICE_X31Y69";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A30 : label is "true";
  attribute BEL of MUX_A30 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A30 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A30 : label is std.standard.true;
  attribute LOC of MUX_A30 : label is "SLICE_X31Y42";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A31 : label is "true";
  attribute BEL of MUX_A31 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A31 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A31 : label is std.standard.true;
  attribute LOC of MUX_A31 : label is "SLICE_X31Y41";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A32 : label is "true";
  attribute BEL of MUX_A32 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A32 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A32 : label is std.standard.true;
  attribute LOC of MUX_A32 : label is "SLICE_X31Y40";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A33 : label is "true";
  attribute BEL of MUX_A33 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A33 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A33 : label is std.standard.true;
  attribute LOC of MUX_A33 : label is "SLICE_X31Y39";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A34 : label is "true";
  attribute BEL of MUX_A34 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A34 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A34 : label is std.standard.true;
  attribute LOC of MUX_A34 : label is "SLICE_X31Y38";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A35 : label is "true";
  attribute BEL of MUX_A35 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A35 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A35 : label is std.standard.true;
  attribute LOC of MUX_A35 : label is "SLICE_X31Y37";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A36 : label is "true";
  attribute BEL of MUX_A36 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A36 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A36 : label is std.standard.true;
  attribute LOC of MUX_A36 : label is "SLICE_X31Y36";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A37 : label is "true";
  attribute BEL of MUX_A37 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A37 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A37 : label is std.standard.true;
  attribute LOC of MUX_A37 : label is "SLICE_X31Y35";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A38 : label is "true";
  attribute BEL of MUX_A38 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A38 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A38 : label is std.standard.true;
  attribute LOC of MUX_A38 : label is "SLICE_X31Y34";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A39 : label is "true";
  attribute BEL of MUX_A39 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A39 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A39 : label is std.standard.true;
  attribute LOC of MUX_A39 : label is "SLICE_X31Y33";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A4 : label is "true";
  attribute BEL of MUX_A4 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A4 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A4 : label is std.standard.true;
  attribute LOC of MUX_A4 : label is "SLICE_X31Y68";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A40 : label is "true";
  attribute BEL of MUX_A40 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A40 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A40 : label is std.standard.true;
  attribute LOC of MUX_A40 : label is "SLICE_X31Y32";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A41 : label is "true";
  attribute BEL of MUX_A41 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A41 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A41 : label is std.standard.true;
  attribute LOC of MUX_A41 : label is "SLICE_X31Y31";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A42 : label is "true";
  attribute BEL of MUX_A42 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A42 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A42 : label is std.standard.true;
  attribute LOC of MUX_A42 : label is "SLICE_X31Y30";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A43 : label is "true";
  attribute BEL of MUX_A43 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A43 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A43 : label is std.standard.true;
  attribute LOC of MUX_A43 : label is "SLICE_X31Y29";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A44 : label is "true";
  attribute BEL of MUX_A44 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A44 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A44 : label is std.standard.true;
  attribute LOC of MUX_A44 : label is "SLICE_X31Y28";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A45 : label is "true";
  attribute BEL of MUX_A45 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A45 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A45 : label is std.standard.true;
  attribute LOC of MUX_A45 : label is "SLICE_X31Y27";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A46 : label is "true";
  attribute BEL of MUX_A46 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A46 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A46 : label is std.standard.true;
  attribute LOC of MUX_A46 : label is "SLICE_X31Y26";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A47 : label is "true";
  attribute BEL of MUX_A47 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A47 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A47 : label is std.standard.true;
  attribute LOC of MUX_A47 : label is "SLICE_X31Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A48 : label is "true";
  attribute BEL of MUX_A48 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A48 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A48 : label is std.standard.true;
  attribute LOC of MUX_A48 : label is "SLICE_X31Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A49 : label is "true";
  attribute BEL of MUX_A49 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A49 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A49 : label is std.standard.true;
  attribute LOC of MUX_A49 : label is "SLICE_X31Y23";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A5 : label is "true";
  attribute BEL of MUX_A5 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A5 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A5 : label is std.standard.true;
  attribute LOC of MUX_A5 : label is "SLICE_X31Y67";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A50 : label is "true";
  attribute BEL of MUX_A50 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A50 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A50 : label is std.standard.true;
  attribute LOC of MUX_A50 : label is "SLICE_X31Y22";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A51 : label is "true";
  attribute BEL of MUX_A51 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A51 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A51 : label is std.standard.true;
  attribute LOC of MUX_A51 : label is "SLICE_X31Y21";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A52 : label is "true";
  attribute BEL of MUX_A52 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A52 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A52 : label is std.standard.true;
  attribute LOC of MUX_A52 : label is "SLICE_X31Y20";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A53 : label is "true";
  attribute BEL of MUX_A53 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A53 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A53 : label is std.standard.true;
  attribute LOC of MUX_A53 : label is "SLICE_X31Y19";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A54 : label is "true";
  attribute BEL of MUX_A54 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A54 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A54 : label is std.standard.true;
  attribute LOC of MUX_A54 : label is "SLICE_X31Y18";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A55 : label is "true";
  attribute BEL of MUX_A55 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A55 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A55 : label is std.standard.true;
  attribute LOC of MUX_A55 : label is "SLICE_X31Y17";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A56 : label is "true";
  attribute BEL of MUX_A56 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A56 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A56 : label is std.standard.true;
  attribute LOC of MUX_A56 : label is "SLICE_X31Y16";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A57 : label is "true";
  attribute BEL of MUX_A57 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A57 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A57 : label is std.standard.true;
  attribute LOC of MUX_A57 : label is "SLICE_X31Y15";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A58 : label is "true";
  attribute BEL of MUX_A58 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A58 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A58 : label is std.standard.true;
  attribute LOC of MUX_A58 : label is "SLICE_X31Y14";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A59 : label is "true";
  attribute BEL of MUX_A59 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A59 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A59 : label is std.standard.true;
  attribute LOC of MUX_A59 : label is "SLICE_X31Y13";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A6 : label is "true";
  attribute BEL of MUX_A6 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A6 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A6 : label is std.standard.true;
  attribute LOC of MUX_A6 : label is "SLICE_X31Y66";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A60 : label is "true";
  attribute BEL of MUX_A60 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A60 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A60 : label is std.standard.true;
  attribute LOC of MUX_A60 : label is "SLICE_X31Y12";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A61 : label is "true";
  attribute BEL of MUX_A61 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A61 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A61 : label is std.standard.true;
  attribute LOC of MUX_A61 : label is "SLICE_X31Y11";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A62 : label is "true";
  attribute BEL of MUX_A62 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A62 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A62 : label is std.standard.true;
  attribute LOC of MUX_A62 : label is "SLICE_X31Y10";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A63 : label is "true";
  attribute BEL of MUX_A63 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A63 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A63 : label is std.standard.true;
  attribute LOC of MUX_A63 : label is "SLICE_X31Y9";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A64 : label is "true";
  attribute BEL of MUX_A64 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A64 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A64 : label is std.standard.true;
  attribute LOC of MUX_A64 : label is "SLICE_X31Y8";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A7 : label is "true";
  attribute BEL of MUX_A7 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A7 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A7 : label is std.standard.true;
  attribute LOC of MUX_A7 : label is "SLICE_X31Y65";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A8 : label is "true";
  attribute BEL of MUX_A8 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A8 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A8 : label is std.standard.true;
  attribute LOC of MUX_A8 : label is "SLICE_X31Y64";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_A9 : label is "true";
  attribute BEL of MUX_A9 : label is "A6LUT";
  attribute BOX_TYPE of MUX_A9 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_A9 : label is std.standard.true;
  attribute LOC of MUX_A9 : label is "SLICE_X31Y63";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B1 : label is "true";
  attribute BEL of MUX_B1 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B1 : label is std.standard.true;
  attribute LOC of MUX_B1 : label is "SLICE_X31Y71";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B10 : label is "true";
  attribute BEL of MUX_B10 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B10 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B10 : label is std.standard.true;
  attribute LOC of MUX_B10 : label is "SLICE_X31Y62";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B11 : label is "true";
  attribute BEL of MUX_B11 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B11 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B11 : label is std.standard.true;
  attribute LOC of MUX_B11 : label is "SLICE_X31Y61";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B12 : label is "true";
  attribute BEL of MUX_B12 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B12 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B12 : label is std.standard.true;
  attribute LOC of MUX_B12 : label is "SLICE_X31Y60";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B13 : label is "true";
  attribute BEL of MUX_B13 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B13 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B13 : label is std.standard.true;
  attribute LOC of MUX_B13 : label is "SLICE_X31Y59";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B14 : label is "true";
  attribute BEL of MUX_B14 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B14 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B14 : label is std.standard.true;
  attribute LOC of MUX_B14 : label is "SLICE_X31Y58";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B15 : label is "true";
  attribute BEL of MUX_B15 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B15 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B15 : label is std.standard.true;
  attribute LOC of MUX_B15 : label is "SLICE_X31Y57";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B16 : label is "true";
  attribute BEL of MUX_B16 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B16 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B16 : label is std.standard.true;
  attribute LOC of MUX_B16 : label is "SLICE_X31Y56";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B17 : label is "true";
  attribute BEL of MUX_B17 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B17 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B17 : label is std.standard.true;
  attribute LOC of MUX_B17 : label is "SLICE_X31Y55";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B18 : label is "true";
  attribute BEL of MUX_B18 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B18 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B18 : label is std.standard.true;
  attribute LOC of MUX_B18 : label is "SLICE_X31Y54";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B19 : label is "true";
  attribute BEL of MUX_B19 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B19 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B19 : label is std.standard.true;
  attribute LOC of MUX_B19 : label is "SLICE_X31Y53";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B2 : label is "true";
  attribute BEL of MUX_B2 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B2 : label is std.standard.true;
  attribute LOC of MUX_B2 : label is "SLICE_X31Y70";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B20 : label is "true";
  attribute BEL of MUX_B20 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B20 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B20 : label is std.standard.true;
  attribute LOC of MUX_B20 : label is "SLICE_X31Y52";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B21 : label is "true";
  attribute BEL of MUX_B21 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B21 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B21 : label is std.standard.true;
  attribute LOC of MUX_B21 : label is "SLICE_X31Y51";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B22 : label is "true";
  attribute BEL of MUX_B22 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B22 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B22 : label is std.standard.true;
  attribute LOC of MUX_B22 : label is "SLICE_X31Y50";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B23 : label is "true";
  attribute BEL of MUX_B23 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B23 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B23 : label is std.standard.true;
  attribute LOC of MUX_B23 : label is "SLICE_X31Y49";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B24 : label is "true";
  attribute BEL of MUX_B24 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B24 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B24 : label is std.standard.true;
  attribute LOC of MUX_B24 : label is "SLICE_X31Y48";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B25 : label is "true";
  attribute BEL of MUX_B25 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B25 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B25 : label is std.standard.true;
  attribute LOC of MUX_B25 : label is "SLICE_X31Y47";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B26 : label is "true";
  attribute BEL of MUX_B26 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B26 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B26 : label is std.standard.true;
  attribute LOC of MUX_B26 : label is "SLICE_X31Y46";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B27 : label is "true";
  attribute BEL of MUX_B27 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B27 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B27 : label is std.standard.true;
  attribute LOC of MUX_B27 : label is "SLICE_X31Y45";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B28 : label is "true";
  attribute BEL of MUX_B28 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B28 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B28 : label is std.standard.true;
  attribute LOC of MUX_B28 : label is "SLICE_X31Y44";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B29 : label is "true";
  attribute BEL of MUX_B29 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B29 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B29 : label is std.standard.true;
  attribute LOC of MUX_B29 : label is "SLICE_X31Y43";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B3 : label is "true";
  attribute BEL of MUX_B3 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B3 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B3 : label is std.standard.true;
  attribute LOC of MUX_B3 : label is "SLICE_X31Y69";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B30 : label is "true";
  attribute BEL of MUX_B30 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B30 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B30 : label is std.standard.true;
  attribute LOC of MUX_B30 : label is "SLICE_X31Y42";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B31 : label is "true";
  attribute BEL of MUX_B31 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B31 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B31 : label is std.standard.true;
  attribute LOC of MUX_B31 : label is "SLICE_X31Y41";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B32 : label is "true";
  attribute BEL of MUX_B32 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B32 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B32 : label is std.standard.true;
  attribute LOC of MUX_B32 : label is "SLICE_X31Y40";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B33 : label is "true";
  attribute BEL of MUX_B33 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B33 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B33 : label is std.standard.true;
  attribute LOC of MUX_B33 : label is "SLICE_X31Y39";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B34 : label is "true";
  attribute BEL of MUX_B34 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B34 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B34 : label is std.standard.true;
  attribute LOC of MUX_B34 : label is "SLICE_X31Y38";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B35 : label is "true";
  attribute BEL of MUX_B35 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B35 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B35 : label is std.standard.true;
  attribute LOC of MUX_B35 : label is "SLICE_X31Y37";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B36 : label is "true";
  attribute BEL of MUX_B36 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B36 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B36 : label is std.standard.true;
  attribute LOC of MUX_B36 : label is "SLICE_X31Y36";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B37 : label is "true";
  attribute BEL of MUX_B37 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B37 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B37 : label is std.standard.true;
  attribute LOC of MUX_B37 : label is "SLICE_X31Y35";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B38 : label is "true";
  attribute BEL of MUX_B38 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B38 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B38 : label is std.standard.true;
  attribute LOC of MUX_B38 : label is "SLICE_X31Y34";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B39 : label is "true";
  attribute BEL of MUX_B39 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B39 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B39 : label is std.standard.true;
  attribute LOC of MUX_B39 : label is "SLICE_X31Y33";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B4 : label is "true";
  attribute BEL of MUX_B4 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B4 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B4 : label is std.standard.true;
  attribute LOC of MUX_B4 : label is "SLICE_X31Y68";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B40 : label is "true";
  attribute BEL of MUX_B40 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B40 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B40 : label is std.standard.true;
  attribute LOC of MUX_B40 : label is "SLICE_X31Y32";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B41 : label is "true";
  attribute BEL of MUX_B41 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B41 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B41 : label is std.standard.true;
  attribute LOC of MUX_B41 : label is "SLICE_X31Y31";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B42 : label is "true";
  attribute BEL of MUX_B42 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B42 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B42 : label is std.standard.true;
  attribute LOC of MUX_B42 : label is "SLICE_X31Y30";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B43 : label is "true";
  attribute BEL of MUX_B43 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B43 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B43 : label is std.standard.true;
  attribute LOC of MUX_B43 : label is "SLICE_X31Y29";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B44 : label is "true";
  attribute BEL of MUX_B44 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B44 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B44 : label is std.standard.true;
  attribute LOC of MUX_B44 : label is "SLICE_X31Y28";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B45 : label is "true";
  attribute BEL of MUX_B45 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B45 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B45 : label is std.standard.true;
  attribute LOC of MUX_B45 : label is "SLICE_X31Y27";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B46 : label is "true";
  attribute BEL of MUX_B46 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B46 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B46 : label is std.standard.true;
  attribute LOC of MUX_B46 : label is "SLICE_X31Y26";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B47 : label is "true";
  attribute BEL of MUX_B47 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B47 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B47 : label is std.standard.true;
  attribute LOC of MUX_B47 : label is "SLICE_X31Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B48 : label is "true";
  attribute BEL of MUX_B48 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B48 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B48 : label is std.standard.true;
  attribute LOC of MUX_B48 : label is "SLICE_X31Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B49 : label is "true";
  attribute BEL of MUX_B49 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B49 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B49 : label is std.standard.true;
  attribute LOC of MUX_B49 : label is "SLICE_X31Y23";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B5 : label is "true";
  attribute BEL of MUX_B5 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B5 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B5 : label is std.standard.true;
  attribute LOC of MUX_B5 : label is "SLICE_X31Y67";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B50 : label is "true";
  attribute BEL of MUX_B50 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B50 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B50 : label is std.standard.true;
  attribute LOC of MUX_B50 : label is "SLICE_X31Y22";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B51 : label is "true";
  attribute BEL of MUX_B51 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B51 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B51 : label is std.standard.true;
  attribute LOC of MUX_B51 : label is "SLICE_X31Y21";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B52 : label is "true";
  attribute BEL of MUX_B52 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B52 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B52 : label is std.standard.true;
  attribute LOC of MUX_B52 : label is "SLICE_X31Y20";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B53 : label is "true";
  attribute BEL of MUX_B53 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B53 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B53 : label is std.standard.true;
  attribute LOC of MUX_B53 : label is "SLICE_X31Y19";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B54 : label is "true";
  attribute BEL of MUX_B54 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B54 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B54 : label is std.standard.true;
  attribute LOC of MUX_B54 : label is "SLICE_X31Y18";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B55 : label is "true";
  attribute BEL of MUX_B55 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B55 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B55 : label is std.standard.true;
  attribute LOC of MUX_B55 : label is "SLICE_X31Y17";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B56 : label is "true";
  attribute BEL of MUX_B56 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B56 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B56 : label is std.standard.true;
  attribute LOC of MUX_B56 : label is "SLICE_X31Y16";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B57 : label is "true";
  attribute BEL of MUX_B57 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B57 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B57 : label is std.standard.true;
  attribute LOC of MUX_B57 : label is "SLICE_X31Y15";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B58 : label is "true";
  attribute BEL of MUX_B58 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B58 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B58 : label is std.standard.true;
  attribute LOC of MUX_B58 : label is "SLICE_X31Y14";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B59 : label is "true";
  attribute BEL of MUX_B59 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B59 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B59 : label is std.standard.true;
  attribute LOC of MUX_B59 : label is "SLICE_X31Y13";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B6 : label is "true";
  attribute BEL of MUX_B6 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B6 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B6 : label is std.standard.true;
  attribute LOC of MUX_B6 : label is "SLICE_X31Y66";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B60 : label is "true";
  attribute BEL of MUX_B60 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B60 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B60 : label is std.standard.true;
  attribute LOC of MUX_B60 : label is "SLICE_X31Y12";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B61 : label is "true";
  attribute BEL of MUX_B61 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B61 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B61 : label is std.standard.true;
  attribute LOC of MUX_B61 : label is "SLICE_X31Y11";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B62 : label is "true";
  attribute BEL of MUX_B62 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B62 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B62 : label is std.standard.true;
  attribute LOC of MUX_B62 : label is "SLICE_X31Y10";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B63 : label is "true";
  attribute BEL of MUX_B63 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B63 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B63 : label is std.standard.true;
  attribute LOC of MUX_B63 : label is "SLICE_X31Y9";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B64 : label is "true";
  attribute BEL of MUX_B64 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B64 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B64 : label is std.standard.true;
  attribute LOC of MUX_B64 : label is "SLICE_X31Y8";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B7 : label is "true";
  attribute BEL of MUX_B7 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B7 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B7 : label is std.standard.true;
  attribute LOC of MUX_B7 : label is "SLICE_X31Y65";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B8 : label is "true";
  attribute BEL of MUX_B8 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B8 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B8 : label is std.standard.true;
  attribute LOC of MUX_B8 : label is "SLICE_X31Y64";
  attribute ALLOW_COMBINATORIAL_LOOPS of MUX_B9 : label is "true";
  attribute BEL of MUX_B9 : label is "B6LUT";
  attribute BOX_TYPE of MUX_B9 : label is "PRIMITIVE";
  attribute DONT_TOUCH of MUX_B9 : label is std.standard.true;
  attribute LOC of MUX_B9 : label is "SLICE_X31Y63";
begin
  Counter_0(15 downto 0) <= \^counter_0\(15 downto 0);
DFF_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => to_counter,
      CE => CE,
      CLR => CLR,
      D => Q_0_1,
      Q => \^counter_0\(0)
    );
DFF_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_0_1,
      CE => CE,
      CLR => CLR,
      D => Q_1_1,
      Q => \^counter_0\(1)
    );
DFF_10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_9_1,
      CE => CE,
      CLR => CLR,
      D => Q_10_1,
      Q => \^counter_0\(10)
    );
DFF_11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_10_1,
      CE => CE,
      CLR => CLR,
      D => Q_11_1,
      Q => \^counter_0\(11)
    );
DFF_12: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_11_1,
      CE => CE,
      CLR => CLR,
      D => Q_12_1,
      Q => \^counter_0\(12)
    );
DFF_13: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_12_1,
      CE => CE,
      CLR => CLR,
      D => Q_13_1,
      Q => \^counter_0\(13)
    );
DFF_14: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_13_1,
      CE => CE,
      CLR => CLR,
      D => Q_14_1,
      Q => \^counter_0\(14)
    );
DFF_15: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_14_1,
      CE => CE,
      CLR => CLR,
      D => Q_15_1,
      Q => \^counter_0\(15)
    );
DFF_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_1_1,
      CE => CE,
      CLR => CLR,
      D => Q_2_1,
      Q => \^counter_0\(2)
    );
DFF_3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_2_1,
      CE => CE,
      CLR => CLR,
      D => Q_3_1,
      Q => \^counter_0\(3)
    );
DFF_4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_3_1,
      CE => CE,
      CLR => CLR,
      D => Q_4_1,
      Q => \^counter_0\(4)
    );
DFF_5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_4_1,
      CE => CE,
      CLR => CLR,
      D => Q_5_1,
      Q => \^counter_0\(5)
    );
DFF_6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_5_1,
      CE => CE,
      CLR => CLR,
      D => Q_6_1,
      Q => \^counter_0\(6)
    );
DFF_7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_6_1,
      CE => CE,
      CLR => CLR,
      D => Q_7_1,
      Q => \^counter_0\(7)
    );
DFF_8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_7_1,
      CE => CE,
      CLR => CLR,
      D => Q_8_1,
      Q => \^counter_0\(8)
    );
DFF_9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Q_8_1,
      CE => CE,
      CLR => CLR,
      D => Q_9_1,
      Q => \^counter_0\(9)
    );
Delay_line_MUX: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => A0(0),
      I1 => A0(1),
      I2 => EN(0),
      I3 => EN(1),
      O => to_counter
    );
Enable_A: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003500"
    )
        port map (
      I0 => A64(0),
      I1 => A64(1),
      I2 => Challenge_0(0),
      I3 => EN(0),
      I4 => Fin,
      O => A0(0)
    );
Enable_B: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003500"
    )
        port map (
      I0 => A64(1),
      I1 => A64(0),
      I2 => Challenge_0(0),
      I3 => EN(1),
      I4 => Fin,
      O => A0(1)
    );
FF_0_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(0),
      O => Q_0_1
    );
FF_10_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(10),
      O => Q_10_1
    );
FF_11_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(11),
      O => Q_11_1
    );
FF_12_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(12),
      O => Q_12_1
    );
FF_13_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(13),
      O => Q_13_1
    );
FF_14_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(14),
      O => Q_14_1
    );
FF_15_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(15),
      O => Q_15_1
    );
FF_1_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(1),
      O => Q_1_1
    );
FF_2_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(2),
      O => Q_2_1
    );
FF_3_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(3),
      O => Q_3_1
    );
FF_4_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(4),
      O => Q_4_1
    );
FF_5_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(5),
      O => Q_5_1
    );
FF_6_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(6),
      O => Q_6_1
    );
FF_7_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(7),
      O => Q_7_1
    );
FF_8_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(8),
      O => Q_8_1
    );
FF_9_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_0\(9),
      O => Q_9_1
    );
MUX_A1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A0(0),
      I1 => A0(1),
      I2 => Challenge_0(1),
      I3 => A0(1),
      O => A1(0)
    );
MUX_A10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A9(0),
      I1 => A9(1),
      I2 => Challenge_0(10),
      I3 => A9(1),
      O => A10(0)
    );
MUX_A11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A10(0),
      I1 => A10(1),
      I2 => Challenge_0(11),
      I3 => A10(1),
      O => A11(0)
    );
MUX_A12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A11(0),
      I1 => A11(1),
      I2 => Challenge_0(12),
      I3 => A11(1),
      O => A12(0)
    );
MUX_A13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A12(0),
      I1 => A12(1),
      I2 => Challenge_0(13),
      I3 => A12(1),
      O => A13(0)
    );
MUX_A14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A13(0),
      I1 => A13(1),
      I2 => Challenge_0(14),
      I3 => A13(1),
      O => A14(0)
    );
MUX_A15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A14(0),
      I1 => A14(1),
      I2 => Challenge_0(15),
      I3 => A14(1),
      O => A15(0)
    );
MUX_A16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A15(0),
      I1 => A15(1),
      I2 => Challenge_0(16),
      I3 => A15(1),
      O => A16(0)
    );
MUX_A17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A16(0),
      I1 => A16(1),
      I2 => Challenge_0(17),
      I3 => A16(1),
      O => A17(0)
    );
MUX_A18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A17(0),
      I1 => A17(1),
      I2 => Challenge_0(18),
      I3 => A17(1),
      O => A18(0)
    );
MUX_A19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A18(0),
      I1 => A18(1),
      I2 => Challenge_0(19),
      I3 => A18(1),
      O => A19(0)
    );
MUX_A2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A1(0),
      I1 => A1(1),
      I2 => Challenge_0(2),
      I3 => A1(1),
      O => A2(0)
    );
MUX_A20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A19(0),
      I1 => A19(1),
      I2 => Challenge_0(20),
      I3 => A19(1),
      O => A20(0)
    );
MUX_A21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A20(0),
      I1 => A20(1),
      I2 => Challenge_0(21),
      I3 => A20(1),
      O => A21(0)
    );
MUX_A22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A21(0),
      I1 => A21(1),
      I2 => Challenge_0(22),
      I3 => A21(1),
      O => A22(0)
    );
MUX_A23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A22(0),
      I1 => A22(1),
      I2 => Challenge_0(23),
      I3 => A22(1),
      O => A23(0)
    );
MUX_A24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A23(0),
      I1 => A23(1),
      I2 => Challenge_0(24),
      I3 => A23(1),
      O => A24(0)
    );
MUX_A25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A24(0),
      I1 => A24(1),
      I2 => Challenge_0(25),
      I3 => A24(1),
      O => A25(0)
    );
MUX_A26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A25(0),
      I1 => A25(1),
      I2 => Challenge_0(26),
      I3 => A25(1),
      O => A26(0)
    );
MUX_A27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A26(0),
      I1 => A26(1),
      I2 => Challenge_0(27),
      I3 => A26(1),
      O => A27(0)
    );
MUX_A28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A27(0),
      I1 => A27(1),
      I2 => Challenge_0(28),
      I3 => A27(1),
      O => A28(0)
    );
MUX_A29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A28(0),
      I1 => A28(1),
      I2 => Challenge_0(29),
      I3 => A28(1),
      O => A29(0)
    );
MUX_A3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A2(0),
      I1 => A2(1),
      I2 => Challenge_0(3),
      I3 => A2(1),
      O => A3(0)
    );
MUX_A30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A29(0),
      I1 => A29(1),
      I2 => Challenge_0(30),
      I3 => A29(1),
      O => A30(0)
    );
MUX_A31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A30(0),
      I1 => A30(1),
      I2 => Challenge_0(31),
      I3 => A30(1),
      O => A31(0)
    );
MUX_A32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A31(0),
      I1 => A31(1),
      I2 => Challenge_1(0),
      I3 => A31(1),
      O => A32(0)
    );
MUX_A33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A32(0),
      I1 => A32(1),
      I2 => Challenge_1(1),
      I3 => A32(1),
      O => A33(0)
    );
MUX_A34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A33(0),
      I1 => A33(1),
      I2 => Challenge_1(2),
      I3 => A33(1),
      O => A34(0)
    );
MUX_A35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A34(0),
      I1 => A34(1),
      I2 => Challenge_1(3),
      I3 => A34(1),
      O => A35(0)
    );
MUX_A36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A35(0),
      I1 => A35(1),
      I2 => Challenge_1(4),
      I3 => A35(1),
      O => A36(0)
    );
MUX_A37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A36(0),
      I1 => A36(1),
      I2 => Challenge_1(5),
      I3 => A36(1),
      O => A37(0)
    );
MUX_A38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A37(0),
      I1 => A37(1),
      I2 => Challenge_1(6),
      I3 => A37(1),
      O => A38(0)
    );
MUX_A39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A38(0),
      I1 => A38(1),
      I2 => Challenge_1(7),
      I3 => A38(1),
      O => A39(0)
    );
MUX_A4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A3(0),
      I1 => A3(1),
      I2 => Challenge_0(4),
      I3 => A3(1),
      O => A4(0)
    );
MUX_A40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A39(0),
      I1 => A39(1),
      I2 => Challenge_1(8),
      I3 => A39(1),
      O => A40(0)
    );
MUX_A41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A40(0),
      I1 => A40(1),
      I2 => Challenge_1(9),
      I3 => A40(1),
      O => A41(0)
    );
MUX_A42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A41(0),
      I1 => A41(1),
      I2 => Challenge_1(10),
      I3 => A41(1),
      O => A42(0)
    );
MUX_A43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A42(0),
      I1 => A42(1),
      I2 => Challenge_1(11),
      I3 => A42(1),
      O => A43(0)
    );
MUX_A44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A43(0),
      I1 => A43(1),
      I2 => Challenge_1(12),
      I3 => A43(1),
      O => A44(0)
    );
MUX_A45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A44(0),
      I1 => A44(1),
      I2 => Challenge_1(13),
      I3 => A44(1),
      O => A45(0)
    );
MUX_A46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A45(0),
      I1 => A45(1),
      I2 => Challenge_1(14),
      I3 => A45(1),
      O => A46(0)
    );
MUX_A47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A46(0),
      I1 => A46(1),
      I2 => Challenge_1(15),
      I3 => A46(1),
      O => A47(0)
    );
MUX_A48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A47(0),
      I1 => A47(1),
      I2 => Challenge_1(16),
      I3 => A47(1),
      O => A48(0)
    );
MUX_A49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A48(0),
      I1 => A48(1),
      I2 => Challenge_1(17),
      I3 => A48(1),
      O => A49(0)
    );
MUX_A5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A4(0),
      I1 => A4(1),
      I2 => Challenge_0(5),
      I3 => A4(1),
      O => A5(0)
    );
MUX_A50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A49(0),
      I1 => A49(1),
      I2 => Challenge_1(18),
      I3 => A49(1),
      O => A50(0)
    );
MUX_A51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A50(0),
      I1 => A50(1),
      I2 => Challenge_1(19),
      I3 => A50(1),
      O => A51(0)
    );
MUX_A52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A51(0),
      I1 => A51(1),
      I2 => Challenge_1(20),
      I3 => A51(1),
      O => A52(0)
    );
MUX_A53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A52(0),
      I1 => A52(1),
      I2 => Challenge_1(21),
      I3 => A52(1),
      O => A53(0)
    );
MUX_A54: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A53(0),
      I1 => A53(1),
      I2 => Challenge_1(22),
      I3 => A53(1),
      O => A54(0)
    );
MUX_A55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A54(0),
      I1 => A54(1),
      I2 => Challenge_1(23),
      I3 => A54(1),
      O => A55(0)
    );
MUX_A56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A55(0),
      I1 => A55(1),
      I2 => Challenge_1(24),
      I3 => A55(1),
      O => A56(0)
    );
MUX_A57: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A56(0),
      I1 => A56(1),
      I2 => Challenge_1(25),
      I3 => A56(1),
      O => A57(0)
    );
MUX_A58: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A57(0),
      I1 => A57(1),
      I2 => Challenge_1(26),
      I3 => A57(1),
      O => A58(0)
    );
MUX_A59: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A58(0),
      I1 => A58(1),
      I2 => Challenge_1(27),
      I3 => A58(1),
      O => A59(0)
    );
MUX_A6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A5(0),
      I1 => A5(1),
      I2 => Challenge_0(6),
      I3 => A5(1),
      O => A6(0)
    );
MUX_A60: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A59(0),
      I1 => A59(1),
      I2 => Challenge_1(28),
      I3 => A59(1),
      O => A60(0)
    );
MUX_A61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A60(0),
      I1 => A60(1),
      I2 => Challenge_1(29),
      I3 => A60(1),
      O => A61(0)
    );
MUX_A62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A61(0),
      I1 => A61(1),
      I2 => Challenge_1(30),
      I3 => A61(1),
      O => A62(0)
    );
MUX_A63: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A62(0),
      I1 => A62(1),
      I2 => Challenge_1(31),
      I3 => A62(1),
      O => A63(0)
    );
MUX_A64: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A63(0),
      I1 => A63(1),
      I2 => Challenge_parity_bit,
      I3 => A63(1),
      O => A64(0)
    );
MUX_A7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A6(0),
      I1 => A6(1),
      I2 => Challenge_0(7),
      I3 => A6(1),
      O => A7(0)
    );
MUX_A8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A7(0),
      I1 => A7(1),
      I2 => Challenge_0(8),
      I3 => A7(1),
      O => A8(0)
    );
MUX_A9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A8(0),
      I1 => A8(1),
      I2 => Challenge_0(9),
      I3 => A8(1),
      O => A9(0)
    );
MUX_B1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A0(1),
      I1 => A0(0),
      I2 => Challenge_0(1),
      I3 => A0(0),
      O => A1(1)
    );
MUX_B10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A9(1),
      I1 => A9(0),
      I2 => Challenge_0(10),
      I3 => A9(0),
      O => A10(1)
    );
MUX_B11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A10(1),
      I1 => A10(0),
      I2 => Challenge_0(11),
      I3 => A10(0),
      O => A11(1)
    );
MUX_B12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A11(1),
      I1 => A11(0),
      I2 => Challenge_0(12),
      I3 => A11(0),
      O => A12(1)
    );
MUX_B13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A12(1),
      I1 => A12(0),
      I2 => Challenge_0(13),
      I3 => A12(0),
      O => A13(1)
    );
MUX_B14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A13(1),
      I1 => A13(0),
      I2 => Challenge_0(14),
      I3 => A13(0),
      O => A14(1)
    );
MUX_B15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A14(1),
      I1 => A14(0),
      I2 => Challenge_0(15),
      I3 => A14(0),
      O => A15(1)
    );
MUX_B16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A15(1),
      I1 => A15(0),
      I2 => Challenge_0(16),
      I3 => A15(0),
      O => A16(1)
    );
MUX_B17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A16(1),
      I1 => A16(0),
      I2 => Challenge_0(17),
      I3 => A16(0),
      O => A17(1)
    );
MUX_B18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A17(1),
      I1 => A17(0),
      I2 => Challenge_0(18),
      I3 => A17(0),
      O => A18(1)
    );
MUX_B19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A18(1),
      I1 => A18(0),
      I2 => Challenge_0(19),
      I3 => A18(0),
      O => A19(1)
    );
MUX_B2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A1(1),
      I1 => A1(0),
      I2 => Challenge_0(2),
      I3 => A1(0),
      O => A2(1)
    );
MUX_B20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A19(1),
      I1 => A19(0),
      I2 => Challenge_0(20),
      I3 => A19(0),
      O => A20(1)
    );
MUX_B21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A20(1),
      I1 => A20(0),
      I2 => Challenge_0(21),
      I3 => A20(0),
      O => A21(1)
    );
MUX_B22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A21(1),
      I1 => A21(0),
      I2 => Challenge_0(22),
      I3 => A21(0),
      O => A22(1)
    );
MUX_B23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A22(1),
      I1 => A22(0),
      I2 => Challenge_0(23),
      I3 => A22(0),
      O => A23(1)
    );
MUX_B24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A23(1),
      I1 => A23(0),
      I2 => Challenge_0(24),
      I3 => A23(0),
      O => A24(1)
    );
MUX_B25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A24(1),
      I1 => A24(0),
      I2 => Challenge_0(25),
      I3 => A24(0),
      O => A25(1)
    );
MUX_B26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A25(1),
      I1 => A25(0),
      I2 => Challenge_0(26),
      I3 => A25(0),
      O => A26(1)
    );
MUX_B27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A26(1),
      I1 => A26(0),
      I2 => Challenge_0(27),
      I3 => A26(0),
      O => A27(1)
    );
MUX_B28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A27(1),
      I1 => A27(0),
      I2 => Challenge_0(28),
      I3 => A27(0),
      O => A28(1)
    );
MUX_B29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A28(1),
      I1 => A28(0),
      I2 => Challenge_0(29),
      I3 => A28(0),
      O => A29(1)
    );
MUX_B3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A2(1),
      I1 => A2(0),
      I2 => Challenge_0(3),
      I3 => A2(0),
      O => A3(1)
    );
MUX_B30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A29(1),
      I1 => A29(0),
      I2 => Challenge_0(30),
      I3 => A29(0),
      O => A30(1)
    );
MUX_B31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A30(1),
      I1 => A30(0),
      I2 => Challenge_0(31),
      I3 => A30(0),
      O => A31(1)
    );
MUX_B32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A31(1),
      I1 => A31(0),
      I2 => Challenge_1(0),
      I3 => A31(0),
      O => A32(1)
    );
MUX_B33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A32(1),
      I1 => A32(0),
      I2 => Challenge_1(1),
      I3 => A32(0),
      O => A33(1)
    );
MUX_B34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A33(1),
      I1 => A33(0),
      I2 => Challenge_1(2),
      I3 => A33(0),
      O => A34(1)
    );
MUX_B35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A34(1),
      I1 => A34(0),
      I2 => Challenge_1(3),
      I3 => A34(0),
      O => A35(1)
    );
MUX_B36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A35(1),
      I1 => A35(0),
      I2 => Challenge_1(4),
      I3 => A35(0),
      O => A36(1)
    );
MUX_B37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A36(1),
      I1 => A36(0),
      I2 => Challenge_1(5),
      I3 => A36(0),
      O => A37(1)
    );
MUX_B38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A37(1),
      I1 => A37(0),
      I2 => Challenge_1(6),
      I3 => A37(0),
      O => A38(1)
    );
MUX_B39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A38(1),
      I1 => A38(0),
      I2 => Challenge_1(7),
      I3 => A38(0),
      O => A39(1)
    );
MUX_B4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A3(1),
      I1 => A3(0),
      I2 => Challenge_0(4),
      I3 => A3(0),
      O => A4(1)
    );
MUX_B40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A39(1),
      I1 => A39(0),
      I2 => Challenge_1(8),
      I3 => A39(0),
      O => A40(1)
    );
MUX_B41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A40(1),
      I1 => A40(0),
      I2 => Challenge_1(9),
      I3 => A40(0),
      O => A41(1)
    );
MUX_B42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A41(1),
      I1 => A41(0),
      I2 => Challenge_1(10),
      I3 => A41(0),
      O => A42(1)
    );
MUX_B43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A42(1),
      I1 => A42(0),
      I2 => Challenge_1(11),
      I3 => A42(0),
      O => A43(1)
    );
MUX_B44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A43(1),
      I1 => A43(0),
      I2 => Challenge_1(12),
      I3 => A43(0),
      O => A44(1)
    );
MUX_B45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A44(1),
      I1 => A44(0),
      I2 => Challenge_1(13),
      I3 => A44(0),
      O => A45(1)
    );
MUX_B46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A45(1),
      I1 => A45(0),
      I2 => Challenge_1(14),
      I3 => A45(0),
      O => A46(1)
    );
MUX_B47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A46(1),
      I1 => A46(0),
      I2 => Challenge_1(15),
      I3 => A46(0),
      O => A47(1)
    );
MUX_B48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A47(1),
      I1 => A47(0),
      I2 => Challenge_1(16),
      I3 => A47(0),
      O => A48(1)
    );
MUX_B49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A48(1),
      I1 => A48(0),
      I2 => Challenge_1(17),
      I3 => A48(0),
      O => A49(1)
    );
MUX_B5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A4(1),
      I1 => A4(0),
      I2 => Challenge_0(5),
      I3 => A4(0),
      O => A5(1)
    );
MUX_B50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A49(1),
      I1 => A49(0),
      I2 => Challenge_1(18),
      I3 => A49(0),
      O => A50(1)
    );
MUX_B51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A50(1),
      I1 => A50(0),
      I2 => Challenge_1(19),
      I3 => A50(0),
      O => A51(1)
    );
MUX_B52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A51(1),
      I1 => A51(0),
      I2 => Challenge_1(20),
      I3 => A51(0),
      O => A52(1)
    );
MUX_B53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A52(1),
      I1 => A52(0),
      I2 => Challenge_1(21),
      I3 => A52(0),
      O => A53(1)
    );
MUX_B54: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A53(1),
      I1 => A53(0),
      I2 => Challenge_1(22),
      I3 => A53(0),
      O => A54(1)
    );
MUX_B55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A54(1),
      I1 => A54(0),
      I2 => Challenge_1(23),
      I3 => A54(0),
      O => A55(1)
    );
MUX_B56: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A55(1),
      I1 => A55(0),
      I2 => Challenge_1(24),
      I3 => A55(0),
      O => A56(1)
    );
MUX_B57: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A56(1),
      I1 => A56(0),
      I2 => Challenge_1(25),
      I3 => A56(0),
      O => A57(1)
    );
MUX_B58: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A57(1),
      I1 => A57(0),
      I2 => Challenge_1(26),
      I3 => A57(0),
      O => A58(1)
    );
MUX_B59: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A58(1),
      I1 => A58(0),
      I2 => Challenge_1(27),
      I3 => A58(0),
      O => A59(1)
    );
MUX_B6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A5(1),
      I1 => A5(0),
      I2 => Challenge_0(6),
      I3 => A5(0),
      O => A6(1)
    );
MUX_B60: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A59(1),
      I1 => A59(0),
      I2 => Challenge_1(28),
      I3 => A59(0),
      O => A60(1)
    );
MUX_B61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A60(1),
      I1 => A60(0),
      I2 => Challenge_1(29),
      I3 => A60(0),
      O => A61(1)
    );
MUX_B62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A61(1),
      I1 => A61(0),
      I2 => Challenge_1(30),
      I3 => A61(0),
      O => A62(1)
    );
MUX_B63: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A62(1),
      I1 => A62(0),
      I2 => Challenge_1(31),
      I3 => A62(0),
      O => A63(1)
    );
MUX_B64: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A63(1),
      I1 => A63(0),
      I2 => Challenge_parity_bit,
      I3 => A63(0),
      O => A64(1)
    );
MUX_B7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A6(1),
      I1 => A6(0),
      I2 => Challenge_0(7),
      I3 => A6(0),
      O => A7(1)
    );
MUX_B8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A7(1),
      I1 => A7(0),
      I2 => Challenge_0(8),
      I3 => A7(0),
      O => A8(1)
    );
MUX_B9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CACA"
    )
        port map (
      I0 => A8(1),
      I1 => A8(0),
      I2 => Challenge_0(9),
      I3 => A8(0),
      O => A9(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Test_CRO_1_0_0 is
  port (
    Challenge_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Challenge_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLR : in STD_LOGIC;
    CE : in STD_LOGIC;
    Fin : in STD_LOGIC;
    Counter_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Challenge_parity_bit : in STD_LOGIC;
    finished : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Test_CRO_1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Test_CRO_1_0_0 : entity is "design_1_Test_CRO_1_0_0,Test_CRO_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Test_CRO_1_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Test_CRO_1_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Test_CRO_1_0_0 : entity is "Test_CRO_1,Vivado 2023.1";
end design_1_Test_CRO_1_0_0;

architecture STRUCTURE of design_1_Test_CRO_1_0_0 is
  signal \^counter_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^finished\ : STD_LOGIC;
begin
  Counter_0(15 downto 13) <= \^counter_0\(15 downto 13);
  Counter_0(12) <= \^finished\;
  Counter_0(11 downto 0) <= \^counter_0\(11 downto 0);
  finished <= \^finished\;
inst: entity work.design_1_Test_CRO_1_0_0_Test_CRO_1
     port map (
      CE => CE,
      CLR => CLR,
      Challenge_0(31 downto 0) => Challenge_0(31 downto 0),
      Challenge_1(31 downto 0) => Challenge_1(31 downto 0),
      Challenge_parity_bit => Challenge_parity_bit,
      Counter_0(15 downto 13) => \^counter_0\(15 downto 13),
      Counter_0(12) => \^finished\,
      Counter_0(11 downto 0) => \^counter_0\(11 downto 0),
      EN(1 downto 0) => EN(1 downto 0),
      Fin => Fin
    );
end STRUCTURE;
