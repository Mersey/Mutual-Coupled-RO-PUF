-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Jun 24 11:37:08 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_Counter_latch_0_0 -prefix
--               design_1_Counter_latch_0_0_ design_1_Counter_latch_0_0_sim_netlist.vhdl
-- Design      : design_1_Counter_latch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_latch_0_0_Counter_latch is
  port (
    O_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_2 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    O_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Finished : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    CLR_M : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_1_Counter_latch_0_0_Counter_latch;

architecture STRUCTURE of design_1_Counter_latch_0_0_Counter_latch is
  signal CE_0 : STD_LOGIC;
  signal CE_1 : STD_LOGIC;
  signal CE_2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of CE_0_decode : label is "PRIMITIVE";
  attribute BOX_TYPE of CE_1_decode : label is "PRIMITIVE";
  attribute BOX_TYPE of CE_2_decode : label is "PRIMITIVE";
  attribute BEL : string;
  attribute BEL of FF_0 : label is "AFF";
  attribute BOX_TYPE of FF_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of FF_0 : label is std.standard.true;
  attribute LOC : string;
  attribute LOC of FF_0 : label is "SLICE_X26Y7";
  attribute BEL of FF_0_1 : label is "AFF";
  attribute BOX_TYPE of FF_0_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_0_1 : label is std.standard.true;
  attribute LOC of FF_0_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_0_2 : label is "AFF";
  attribute BOX_TYPE of FF_0_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_0_2 : label is std.standard.true;
  attribute LOC of FF_0_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_1 : label is "A5FF";
  attribute BOX_TYPE of FF_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_1 : label is std.standard.true;
  attribute LOC of FF_1 : label is "SLICE_X26Y7";
  attribute BEL of FF_10 : label is "BFF";
  attribute BOX_TYPE of FF_10 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_10 : label is std.standard.true;
  attribute LOC of FF_10 : label is "SLICE_X27Y7";
  attribute BEL of FF_10_1 : label is "BFF";
  attribute BOX_TYPE of FF_10_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_10_1 : label is std.standard.true;
  attribute LOC of FF_10_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_10_2 : label is "BFF";
  attribute BOX_TYPE of FF_10_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_10_2 : label is std.standard.true;
  attribute LOC of FF_10_2 : label is "SLICE_X27Y5";
  attribute BEL of FF_11 : label is "B5FF";
  attribute BOX_TYPE of FF_11 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_11 : label is std.standard.true;
  attribute LOC of FF_11 : label is "SLICE_X27Y7";
  attribute BEL of FF_11_1 : label is "B5FF";
  attribute BOX_TYPE of FF_11_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_11_1 : label is std.standard.true;
  attribute LOC of FF_11_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_11_2 : label is "B5FF";
  attribute BOX_TYPE of FF_11_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_11_2 : label is std.standard.true;
  attribute LOC of FF_11_2 : label is "SLICE_X27Y5";
  attribute BEL of FF_12 : label is "CFF";
  attribute BOX_TYPE of FF_12 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_12 : label is std.standard.true;
  attribute LOC of FF_12 : label is "SLICE_X27Y7";
  attribute BEL of FF_12_1 : label is "CFF";
  attribute BOX_TYPE of FF_12_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_12_1 : label is std.standard.true;
  attribute LOC of FF_12_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_12_2 : label is "CFF";
  attribute BOX_TYPE of FF_12_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_12_2 : label is std.standard.true;
  attribute LOC of FF_12_2 : label is "SLICE_X27Y5";
  attribute BEL of FF_13 : label is "C5FF";
  attribute BOX_TYPE of FF_13 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_13 : label is std.standard.true;
  attribute LOC of FF_13 : label is "SLICE_X27Y7";
  attribute BEL of FF_13_1 : label is "C5FF";
  attribute BOX_TYPE of FF_13_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_13_1 : label is std.standard.true;
  attribute LOC of FF_13_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_13_2 : label is "C5FF";
  attribute BOX_TYPE of FF_13_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_13_2 : label is std.standard.true;
  attribute LOC of FF_13_2 : label is "SLICE_X27Y5";
  attribute BEL of FF_14 : label is "DFF";
  attribute BOX_TYPE of FF_14 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_14 : label is std.standard.true;
  attribute LOC of FF_14 : label is "SLICE_X27Y7";
  attribute BEL of FF_14_1 : label is "DFF";
  attribute BOX_TYPE of FF_14_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_14_1 : label is std.standard.true;
  attribute LOC of FF_14_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_14_2 : label is "DFF";
  attribute BOX_TYPE of FF_14_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_14_2 : label is std.standard.true;
  attribute LOC of FF_14_2 : label is "SLICE_X27Y5";
  attribute BEL of FF_15 : label is "D5FF";
  attribute BOX_TYPE of FF_15 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_15 : label is std.standard.true;
  attribute LOC of FF_15 : label is "SLICE_X27Y7";
  attribute BEL of FF_15_1 : label is "D5FF";
  attribute BOX_TYPE of FF_15_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_15_1 : label is std.standard.true;
  attribute LOC of FF_15_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_1_1 : label is "A5FF";
  attribute BOX_TYPE of FF_1_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_1_1 : label is std.standard.true;
  attribute LOC of FF_1_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_1_2 : label is "A5FF";
  attribute BOX_TYPE of FF_1_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_1_2 : label is std.standard.true;
  attribute LOC of FF_1_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_2 : label is "BFF";
  attribute BOX_TYPE of FF_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_2 : label is std.standard.true;
  attribute LOC of FF_2 : label is "SLICE_X26Y7";
  attribute BEL of FF_2_1 : label is "BFF";
  attribute BOX_TYPE of FF_2_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_2_1 : label is std.standard.true;
  attribute LOC of FF_2_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_2_2 : label is "BFF";
  attribute BOX_TYPE of FF_2_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_2_2 : label is std.standard.true;
  attribute LOC of FF_2_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_3 : label is "B5FF";
  attribute BOX_TYPE of FF_3 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_3 : label is std.standard.true;
  attribute LOC of FF_3 : label is "SLICE_X26Y7";
  attribute BEL of FF_3_1 : label is "B5FF";
  attribute BOX_TYPE of FF_3_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_3_1 : label is std.standard.true;
  attribute LOC of FF_3_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_3_2 : label is "B5FF";
  attribute BOX_TYPE of FF_3_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_3_2 : label is std.standard.true;
  attribute LOC of FF_3_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_4 : label is "CFF";
  attribute BOX_TYPE of FF_4 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_4 : label is std.standard.true;
  attribute LOC of FF_4 : label is "SLICE_X26Y7";
  attribute BEL of FF_4_1 : label is "CFF";
  attribute BOX_TYPE of FF_4_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_4_1 : label is std.standard.true;
  attribute LOC of FF_4_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_4_2 : label is "CFF";
  attribute BOX_TYPE of FF_4_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_4_2 : label is std.standard.true;
  attribute LOC of FF_4_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_5 : label is "C5FF";
  attribute BOX_TYPE of FF_5 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_5 : label is std.standard.true;
  attribute LOC of FF_5 : label is "SLICE_X26Y7";
  attribute BEL of FF_5_1 : label is "C5FF";
  attribute BOX_TYPE of FF_5_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_5_1 : label is std.standard.true;
  attribute LOC of FF_5_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_5_2 : label is "C5FF";
  attribute BOX_TYPE of FF_5_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_5_2 : label is std.standard.true;
  attribute LOC of FF_5_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_6 : label is "DFF";
  attribute BOX_TYPE of FF_6 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_6 : label is std.standard.true;
  attribute LOC of FF_6 : label is "SLICE_X26Y7";
  attribute BEL of FF_6_1 : label is "DFF";
  attribute BOX_TYPE of FF_6_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_6_1 : label is std.standard.true;
  attribute LOC of FF_6_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_6_2 : label is "DFF";
  attribute BOX_TYPE of FF_6_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_6_2 : label is std.standard.true;
  attribute LOC of FF_6_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_7 : label is "D5FF";
  attribute BOX_TYPE of FF_7 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_7 : label is std.standard.true;
  attribute LOC of FF_7 : label is "SLICE_X26Y7";
  attribute BEL of FF_7_1 : label is "D5FF";
  attribute BOX_TYPE of FF_7_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_7_1 : label is std.standard.true;
  attribute LOC of FF_7_1 : label is "SLICE_X26Y6";
  attribute BEL of FF_7_2 : label is "D5FF";
  attribute BOX_TYPE of FF_7_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_7_2 : label is std.standard.true;
  attribute LOC of FF_7_2 : label is "SLICE_X26Y5";
  attribute BEL of FF_8 : label is "AFF";
  attribute BOX_TYPE of FF_8 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_8 : label is std.standard.true;
  attribute LOC of FF_8 : label is "SLICE_X27Y7";
  attribute BEL of FF_8_1 : label is "AFF";
  attribute BOX_TYPE of FF_8_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_8_1 : label is std.standard.true;
  attribute LOC of FF_8_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_8_2 : label is "AFF";
  attribute BOX_TYPE of FF_8_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_8_2 : label is std.standard.true;
  attribute LOC of FF_8_2 : label is "SLICE_X27Y5";
  attribute BEL of FF_9 : label is "A5FF";
  attribute BOX_TYPE of FF_9 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_9 : label is std.standard.true;
  attribute LOC of FF_9 : label is "SLICE_X27Y7";
  attribute BEL of FF_9_1 : label is "A5FF";
  attribute BOX_TYPE of FF_9_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_9_1 : label is std.standard.true;
  attribute LOC of FF_9_1 : label is "SLICE_X27Y6";
  attribute BEL of FF_9_2 : label is "A5FF";
  attribute BOX_TYPE of FF_9_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_9_2 : label is std.standard.true;
  attribute LOC of FF_9_2 : label is "SLICE_X27Y5";
  attribute BEL of \FF_B__0\ : label is "AFF";
  attribute BOX_TYPE of \FF_B__0\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__0\ : label is std.standard.true;
  attribute LOC of \FF_B__0\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__0_1\ : label is "AFF";
  attribute BOX_TYPE of \FF_B__0_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__0_1\ : label is std.standard.true;
  attribute LOC of \FF_B__0_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__0_2\ : label is "AFF";
  attribute BOX_TYPE of \FF_B__0_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__0_2\ : label is std.standard.true;
  attribute LOC of \FF_B__0_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__1\ : label is "A5FF";
  attribute BOX_TYPE of \FF_B__1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__1\ : label is std.standard.true;
  attribute LOC of \FF_B__1\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__10\ : label is "BFF";
  attribute BOX_TYPE of \FF_B__10\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__10\ : label is std.standard.true;
  attribute LOC of \FF_B__10\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__10_1\ : label is "BFF";
  attribute BOX_TYPE of \FF_B__10_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__10_1\ : label is std.standard.true;
  attribute LOC of \FF_B__10_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__10_2\ : label is "BFF";
  attribute BOX_TYPE of \FF_B__10_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__10_2\ : label is std.standard.true;
  attribute LOC of \FF_B__10_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__11\ : label is "B5FF";
  attribute BOX_TYPE of \FF_B__11\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__11\ : label is std.standard.true;
  attribute LOC of \FF_B__11\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__11_1\ : label is "B5FF";
  attribute BOX_TYPE of \FF_B__11_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__11_1\ : label is std.standard.true;
  attribute LOC of \FF_B__11_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__11_2\ : label is "B5FF";
  attribute BOX_TYPE of \FF_B__11_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__11_2\ : label is std.standard.true;
  attribute LOC of \FF_B__11_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__12\ : label is "CFF";
  attribute BOX_TYPE of \FF_B__12\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__12\ : label is std.standard.true;
  attribute LOC of \FF_B__12\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__12_1\ : label is "CFF";
  attribute BOX_TYPE of \FF_B__12_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__12_1\ : label is std.standard.true;
  attribute LOC of \FF_B__12_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__12_2\ : label is "CFF";
  attribute BOX_TYPE of \FF_B__12_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__12_2\ : label is std.standard.true;
  attribute LOC of \FF_B__12_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__13\ : label is "C5FF";
  attribute BOX_TYPE of \FF_B__13\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__13\ : label is std.standard.true;
  attribute LOC of \FF_B__13\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__13_1\ : label is "C5FF";
  attribute BOX_TYPE of \FF_B__13_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__13_1\ : label is std.standard.true;
  attribute LOC of \FF_B__13_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__13_2\ : label is "C5FF";
  attribute BOX_TYPE of \FF_B__13_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__13_2\ : label is std.standard.true;
  attribute LOC of \FF_B__13_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__14\ : label is "DFF";
  attribute BOX_TYPE of \FF_B__14\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__14\ : label is std.standard.true;
  attribute LOC of \FF_B__14\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__14_1\ : label is "DFF";
  attribute BOX_TYPE of \FF_B__14_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__14_1\ : label is std.standard.true;
  attribute LOC of \FF_B__14_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__14_2\ : label is "DFF";
  attribute BOX_TYPE of \FF_B__14_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__14_2\ : label is std.standard.true;
  attribute LOC of \FF_B__14_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__15\ : label is "D5FF";
  attribute BOX_TYPE of \FF_B__15\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__15\ : label is std.standard.true;
  attribute LOC of \FF_B__15\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__15_1\ : label is "D5FF";
  attribute BOX_TYPE of \FF_B__15_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__15_1\ : label is std.standard.true;
  attribute LOC of \FF_B__15_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__15_2\ : label is "D5FF";
  attribute BOX_TYPE of \FF_B__15_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__15_2\ : label is std.standard.true;
  attribute LOC of \FF_B__15_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__1_1\ : label is "A5FF";
  attribute BOX_TYPE of \FF_B__1_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__1_1\ : label is std.standard.true;
  attribute LOC of \FF_B__1_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__1_2\ : label is "A5FF";
  attribute BOX_TYPE of \FF_B__1_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__1_2\ : label is std.standard.true;
  attribute LOC of \FF_B__1_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__2\ : label is "BFF";
  attribute BOX_TYPE of \FF_B__2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__2\ : label is std.standard.true;
  attribute LOC of \FF_B__2\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__2_1\ : label is "BFF";
  attribute BOX_TYPE of \FF_B__2_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__2_1\ : label is std.standard.true;
  attribute LOC of \FF_B__2_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__2_2\ : label is "BFF";
  attribute BOX_TYPE of \FF_B__2_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__2_2\ : label is std.standard.true;
  attribute LOC of \FF_B__2_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__3\ : label is "B5FF";
  attribute BOX_TYPE of \FF_B__3\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__3\ : label is std.standard.true;
  attribute LOC of \FF_B__3\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__3_1\ : label is "B5FF";
  attribute BOX_TYPE of \FF_B__3_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__3_1\ : label is std.standard.true;
  attribute LOC of \FF_B__3_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__3_2\ : label is "B5FF";
  attribute BOX_TYPE of \FF_B__3_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__3_2\ : label is std.standard.true;
  attribute LOC of \FF_B__3_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__4\ : label is "CFF";
  attribute BOX_TYPE of \FF_B__4\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__4\ : label is std.standard.true;
  attribute LOC of \FF_B__4\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__4_1\ : label is "CFF";
  attribute BOX_TYPE of \FF_B__4_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__4_1\ : label is std.standard.true;
  attribute LOC of \FF_B__4_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__4_2\ : label is "CFF";
  attribute BOX_TYPE of \FF_B__4_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__4_2\ : label is std.standard.true;
  attribute LOC of \FF_B__4_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__5\ : label is "C5FF";
  attribute BOX_TYPE of \FF_B__5\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__5\ : label is std.standard.true;
  attribute LOC of \FF_B__5\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__5_1\ : label is "C5FF";
  attribute BOX_TYPE of \FF_B__5_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__5_1\ : label is std.standard.true;
  attribute LOC of \FF_B__5_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__5_2\ : label is "C5FF";
  attribute BOX_TYPE of \FF_B__5_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__5_2\ : label is std.standard.true;
  attribute LOC of \FF_B__5_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__6\ : label is "DFF";
  attribute BOX_TYPE of \FF_B__6\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__6\ : label is std.standard.true;
  attribute LOC of \FF_B__6\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__6_1\ : label is "DFF";
  attribute BOX_TYPE of \FF_B__6_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__6_1\ : label is std.standard.true;
  attribute LOC of \FF_B__6_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__6_2\ : label is "DFF";
  attribute BOX_TYPE of \FF_B__6_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__6_2\ : label is std.standard.true;
  attribute LOC of \FF_B__6_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__7\ : label is "D5FF";
  attribute BOX_TYPE of \FF_B__7\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__7\ : label is std.standard.true;
  attribute LOC of \FF_B__7\ : label is "SLICE_X32Y7";
  attribute BEL of \FF_B__7_1\ : label is "D5FF";
  attribute BOX_TYPE of \FF_B__7_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__7_1\ : label is std.standard.true;
  attribute LOC of \FF_B__7_1\ : label is "SLICE_X32Y6";
  attribute BEL of \FF_B__7_2\ : label is "D5FF";
  attribute BOX_TYPE of \FF_B__7_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__7_2\ : label is std.standard.true;
  attribute LOC of \FF_B__7_2\ : label is "SLICE_X32Y5";
  attribute BEL of \FF_B__8\ : label is "AFF";
  attribute BOX_TYPE of \FF_B__8\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__8\ : label is std.standard.true;
  attribute LOC of \FF_B__8\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__8_1\ : label is "AFF";
  attribute BOX_TYPE of \FF_B__8_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__8_1\ : label is std.standard.true;
  attribute LOC of \FF_B__8_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__8_2\ : label is "AFF";
  attribute BOX_TYPE of \FF_B__8_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__8_2\ : label is std.standard.true;
  attribute LOC of \FF_B__8_2\ : label is "SLICE_X33Y5";
  attribute BEL of \FF_B__9\ : label is "A5FF";
  attribute BOX_TYPE of \FF_B__9\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__9\ : label is std.standard.true;
  attribute LOC of \FF_B__9\ : label is "SLICE_X33Y7";
  attribute BEL of \FF_B__9_1\ : label is "A5FF";
  attribute BOX_TYPE of \FF_B__9_1\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__9_1\ : label is std.standard.true;
  attribute LOC of \FF_B__9_1\ : label is "SLICE_X33Y6";
  attribute BEL of \FF_B__9_2\ : label is "A5FF";
  attribute BOX_TYPE of \FF_B__9_2\ : label is "PRIMITIVE";
  attribute DONT_TOUCH of \FF_B__9_2\ : label is std.standard.true;
  attribute LOC of \FF_B__9_2\ : label is "SLICE_X33Y5";
begin
CE_0_decode: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => EN(0),
      I1 => EN(1),
      I2 => Finished,
      O => CE_0
    );
CE_1_decode: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => EN(0),
      I1 => EN(1),
      I2 => Finished,
      O => CE_1
    );
CE_2_decode: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => EN(0),
      I1 => EN(1),
      I2 => Finished,
      O => CE_2
    );
FF_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(0),
      Q => O_0(0)
    );
FF_0_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(0),
      Q => O_1(0)
    );
FF_0_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(0),
      Q => O_2(0)
    );
FF_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(1),
      Q => O_0(1)
    );
FF_10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(10),
      Q => O_0(10)
    );
FF_10_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(10),
      Q => O_1(10)
    );
FF_10_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(10),
      Q => O_2(10)
    );
FF_11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(11),
      Q => O_0(11)
    );
FF_11_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(11),
      Q => O_1(11)
    );
FF_11_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(11),
      Q => O_2(11)
    );
FF_12: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(12),
      Q => O_0(12)
    );
FF_12_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(12),
      Q => O_1(12)
    );
FF_12_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(12),
      Q => O_2(12)
    );
FF_13: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(13),
      Q => O_0(13)
    );
FF_13_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(13),
      Q => O_1(13)
    );
FF_13_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(13),
      Q => O_2(13)
    );
FF_14: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(14),
      Q => O_0(14)
    );
FF_14_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(14),
      Q => O_1(14)
    );
FF_14_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(14),
      Q => O_2(14)
    );
FF_15: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(15),
      Q => O_0(15)
    );
FF_15_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(15),
      Q => O_1(15)
    );
FF_1_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(1),
      Q => O_1(1)
    );
FF_1_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(1),
      Q => O_2(1)
    );
FF_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(2),
      Q => O_0(2)
    );
FF_2_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(2),
      Q => O_1(2)
    );
FF_2_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(2),
      Q => O_2(2)
    );
FF_3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(3),
      Q => O_0(3)
    );
FF_3_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(3),
      Q => O_1(3)
    );
FF_3_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(3),
      Q => O_2(3)
    );
FF_4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(4),
      Q => O_0(4)
    );
FF_4_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(4),
      Q => O_1(4)
    );
FF_4_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(4),
      Q => O_2(4)
    );
FF_5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(5),
      Q => O_0(5)
    );
FF_5_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(5),
      Q => O_1(5)
    );
FF_5_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(5),
      Q => O_2(5)
    );
FF_6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(6),
      Q => O_0(6)
    );
FF_6_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(6),
      Q => O_1(6)
    );
FF_6_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(6),
      Q => O_2(6)
    );
FF_7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(7),
      Q => O_0(7)
    );
FF_7_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(7),
      Q => O_1(7)
    );
FF_7_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(7),
      Q => O_2(7)
    );
FF_8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(8),
      Q => O_0(8)
    );
FF_8_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(8),
      Q => O_1(8)
    );
FF_8_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(8),
      Q => O_2(8)
    );
FF_9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => A(9),
      Q => O_0(9)
    );
FF_9_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => A(9),
      Q => O_1(9)
    );
FF_9_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => A(9),
      Q => O_2(9)
    );
\FF_B__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(0),
      Q => O_3(0)
    );
\FF_B__0_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(0),
      Q => O_4(0)
    );
\FF_B__0_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(0),
      Q => O_5(0)
    );
\FF_B__1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(1),
      Q => O_3(1)
    );
\FF_B__10\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(10),
      Q => O_3(10)
    );
\FF_B__10_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(10),
      Q => O_4(10)
    );
\FF_B__10_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(10),
      Q => O_5(10)
    );
\FF_B__11\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(11),
      Q => O_3(11)
    );
\FF_B__11_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(11),
      Q => O_4(11)
    );
\FF_B__11_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(11),
      Q => O_5(11)
    );
\FF_B__12\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(12),
      Q => O_3(12)
    );
\FF_B__12_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(12),
      Q => O_4(12)
    );
\FF_B__12_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(12),
      Q => O_5(12)
    );
\FF_B__13\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(13),
      Q => O_3(13)
    );
\FF_B__13_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(13),
      Q => O_4(13)
    );
\FF_B__13_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(13),
      Q => O_5(13)
    );
\FF_B__14\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(14),
      Q => O_3(14)
    );
\FF_B__14_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(14),
      Q => O_4(14)
    );
\FF_B__14_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(14),
      Q => O_5(14)
    );
\FF_B__15\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(15),
      Q => O_3(15)
    );
\FF_B__15_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(15),
      Q => O_4(15)
    );
\FF_B__15_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(15),
      Q => O_5(15)
    );
\FF_B__1_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(1),
      Q => O_4(1)
    );
\FF_B__1_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(1),
      Q => O_5(1)
    );
\FF_B__2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(2),
      Q => O_3(2)
    );
\FF_B__2_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(2),
      Q => O_4(2)
    );
\FF_B__2_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(2),
      Q => O_5(2)
    );
\FF_B__3\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(3),
      Q => O_3(3)
    );
\FF_B__3_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(3),
      Q => O_4(3)
    );
\FF_B__3_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(3),
      Q => O_5(3)
    );
\FF_B__4\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(4),
      Q => O_3(4)
    );
\FF_B__4_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(4),
      Q => O_4(4)
    );
\FF_B__4_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(4),
      Q => O_5(4)
    );
\FF_B__5\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(5),
      Q => O_3(5)
    );
\FF_B__5_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(5),
      Q => O_4(5)
    );
\FF_B__5_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(5),
      Q => O_5(5)
    );
\FF_B__6\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(6),
      Q => O_3(6)
    );
\FF_B__6_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(6),
      Q => O_4(6)
    );
\FF_B__6_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(6),
      Q => O_5(6)
    );
\FF_B__7\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(7),
      Q => O_3(7)
    );
\FF_B__7_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(7),
      Q => O_4(7)
    );
\FF_B__7_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(7),
      Q => O_5(7)
    );
\FF_B__8\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(8),
      Q => O_3(8)
    );
\FF_B__8_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(8),
      Q => O_4(8)
    );
\FF_B__8_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(8),
      Q => O_5(8)
    );
\FF_B__9\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_0,
      CLR => CLR_M,
      D => B(9),
      Q => O_3(9)
    );
\FF_B__9_1\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_1,
      CLR => CLR_M,
      D => B(9),
      Q => O_4(9)
    );
\FF_B__9_2\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_2,
      CLR => CLR_M,
      D => B(9),
      Q => O_5(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_latch_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Finished : in STD_LOGIC;
    CLR_M : in STD_LOGIC;
    O_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O_5 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Counter_latch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Counter_latch_0_0 : entity is "design_1_Counter_latch_0_0,Counter_latch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Counter_latch_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Counter_latch_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Counter_latch_0_0 : entity is "Counter_latch,Vivado 2023.1";
end design_1_Counter_latch_0_0;

architecture STRUCTURE of design_1_Counter_latch_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_2\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  O_2(15) <= \<const0>\;
  O_2(14 downto 0) <= \^o_2\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_Counter_latch_0_0_Counter_latch
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CLK => CLK,
      CLR_M => CLR_M,
      EN(1 downto 0) => EN(1 downto 0),
      Finished => Finished,
      O_0(15 downto 0) => O_0(15 downto 0),
      O_1(15 downto 0) => O_1(15 downto 0),
      O_2(14 downto 0) => \^o_2\(14 downto 0),
      O_3(15 downto 0) => O_3(15 downto 0),
      O_4(15 downto 0) => O_4(15 downto 0),
      O_5(15 downto 0) => O_5(15 downto 0)
    );
end STRUCTURE;
