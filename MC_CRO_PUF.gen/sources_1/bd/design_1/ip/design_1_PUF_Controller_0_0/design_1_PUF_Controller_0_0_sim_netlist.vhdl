-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Jun 28 11:44:21 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_PUF_Controller_0_0/design_1_PUF_Controller_0_0_sim_netlist.vhdl
-- Design      : design_1_PUF_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PUF_Controller_0_0_PUF_Controller is
  port (
    CE : out STD_LOGIC;
    CLR : out STD_LOGIC;
    Finished_master : out STD_LOGIC;
    EN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Response_master : out STD_LOGIC;
    EN_master : in STD_LOGIC;
    CLK : in STD_LOGIC;
    finished : in STD_LOGIC;
    Response : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_PUF_Controller_0_0_PUF_Controller : entity is "PUF_Controller";
end design_1_PUF_Controller_0_0_PUF_Controller;

architecture STRUCTURE of design_1_PUF_Controller_0_0_PUF_Controller is
  signal \^ce\ : STD_LOGIC;
  signal CE_flag : STD_LOGIC;
  signal CE_flag_1 : STD_LOGIC;
  signal CE_reponse_reg_0 : STD_LOGIC;
  signal CE_reponse_reg_1 : STD_LOGIC;
  signal CE_reponse_reg_2 : STD_LOGIC;
  signal \^clr\ : STD_LOGIC;
  signal CLR_Counter : STD_LOGIC;
  signal CLR_Flag_1 : STD_LOGIC;
  signal CLR_master : STD_LOGIC;
  signal CLR_reg : STD_LOGIC;
  signal Cycle_counter_bit_0 : STD_LOGIC;
  signal Cycle_counter_bit_0_1 : STD_LOGIC;
  signal Cycle_counter_bit_1 : STD_LOGIC;
  signal Cycle_counter_bit_1_1 : STD_LOGIC;
  signal Cycle_finish_flag : STD_LOGIC;
  signal \^en\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal EN_Flag : STD_LOGIC;
  signal EN_latch : STD_LOGIC;
  signal Finished_delayed_1CLK : STD_LOGIC;
  signal Finished_delayed_2CLK : STD_LOGIC;
  signal \^finished_master\ : STD_LOGIC;
  signal Master_CLR_Flag : STD_LOGIC;
  signal Master_CLR_Flag_1 : STD_LOGIC;
  signal Master_CLR_Flag_2 : STD_LOGIC;
  signal Master_finish_flag_AND : STD_LOGIC;
  signal Pass_Complete : STD_LOGIC;
  signal Pass_Complete_1 : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal Q_0_1 : STD_LOGIC;
  signal Q_1 : STD_LOGIC;
  signal Q_1_1 : STD_LOGIC;
  signal Ready_flag : STD_LOGIC;
  signal finished_1 : STD_LOGIC;
  signal response_0 : STD_LOGIC;
  signal response_1 : STD_LOGIC;
  signal response_2 : STD_LOGIC;
  attribute BEL : string;
  attribute BEL of AND_finish_master : label is "C6LUT";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of AND_finish_master : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of AND_finish_master : label is std.standard.true;
  attribute LOC : string;
  attribute LOC of AND_finish_master : label is "SLICE_X15Y19";
  attribute BEL of Average_response : label is "D6LUT";
  attribute BOX_TYPE of Average_response : label is "PRIMITIVE";
  attribute DONT_TOUCH of Average_response : label is std.standard.true;
  attribute LOC of Average_response : label is "SLICE_X15Y20";
  attribute BEL of CE_Flag_latch : label is "BFF";
  attribute BOX_TYPE of CE_Flag_latch : label is "PRIMITIVE";
  attribute DONT_TOUCH of CE_Flag_latch : label is std.standard.true;
  attribute LOC of CE_Flag_latch : label is "SLICE_X16Y24";
  attribute BEL of CE_Flag_latch_1 : label is "DFF";
  attribute BOX_TYPE of CE_Flag_latch_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of CE_Flag_latch_1 : label is std.standard.true;
  attribute LOC of CE_Flag_latch_1 : label is "SLICE_X16Y24";
  attribute BEL of CE_reponse_reg1 : label is "A6LUT";
  attribute BOX_TYPE of CE_reponse_reg1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of CE_reponse_reg1 : label is std.standard.true;
  attribute LOC of CE_reponse_reg1 : label is "SLICE_X15Y20";
  attribute BEL of CE_reponse_reg2 : label is "B6LUT";
  attribute BOX_TYPE of CE_reponse_reg2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of CE_reponse_reg2 : label is std.standard.true;
  attribute LOC of CE_reponse_reg2 : label is "SLICE_X15Y20";
  attribute BEL of CE_reponse_reg3 : label is "C6LUT";
  attribute BOX_TYPE of CE_reponse_reg3 : label is "PRIMITIVE";
  attribute DONT_TOUCH of CE_reponse_reg3 : label is std.standard.true;
  attribute LOC of CE_reponse_reg3 : label is "SLICE_X15Y20";
  attribute BEL of CLR_Flag_latch_1 : label is "AFF";
  attribute BOX_TYPE of CLR_Flag_latch_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of CLR_Flag_latch_1 : label is std.standard.true;
  attribute LOC of CLR_Flag_latch_1 : label is "SLICE_X16Y24";
  attribute BEL of CLR_if_EN_lost : label is "D6LUT";
  attribute BOX_TYPE of CLR_if_EN_lost : label is "PRIMITIVE";
  attribute DONT_TOUCH of CLR_if_EN_lost : label is std.standard.true;
  attribute LOC of CLR_if_EN_lost : label is "SLICE_X15Y19";
  attribute BEL of CLR_master_second : label is "A6LUT";
  attribute BOX_TYPE of CLR_master_second : label is "PRIMITIVE";
  attribute DONT_TOUCH of CLR_master_second : label is std.standard.true;
  attribute LOC of CLR_master_second : label is "SLICE_X15Y19";
  attribute BEL of Cycle_finish : label is "A6LUT";
  attribute BOX_TYPE of Cycle_finish : label is "PRIMITIVE";
  attribute DONT_TOUCH of Cycle_finish : label is std.standard.true;
  attribute LOC of Cycle_finish : label is "SLICE_X14Y20";
  attribute ALLOW_COMBINATORIAL_LOOPS : string;
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_0 : label is "true";
  attribute BEL of DFF_0 : label is "CFF";
  attribute BOX_TYPE of DFF_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_0 : label is std.standard.true;
  attribute LOC of DFF_0 : label is "SLICE_X14Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of DFF_1 : label is "true";
  attribute BEL of DFF_1 : label is "CFF";
  attribute BOX_TYPE of DFF_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of DFF_1 : label is std.standard.true;
  attribute LOC of DFF_1 : label is "SLICE_X14Y23";
  attribute BEL of EN_Flag_latch_1 : label is "CFF";
  attribute BOX_TYPE of EN_Flag_latch_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of EN_Flag_latch_1 : label is std.standard.true;
  attribute LOC of EN_Flag_latch_1 : label is "SLICE_X16Y24";
  attribute BEL of Enable_0 : label is "A6LUT";
  attribute BOX_TYPE of Enable_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Enable_0 : label is std.standard.true;
  attribute LOC of Enable_0 : label is "SLICE_X15Y24";
  attribute BEL of Enable_1 : label is "B6LUT";
  attribute BOX_TYPE of Enable_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Enable_1 : label is std.standard.true;
  attribute LOC of Enable_1 : label is "SLICE_X15Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_0_inver : label is "true";
  attribute BEL of FF_0_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_0_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_0_inver : label is std.standard.true;
  attribute LOC of FF_0_inver : label is "SLICE_X14Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_1_inver : label is "true";
  attribute BEL of FF_1_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_1_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_1_inver : label is std.standard.true;
  attribute LOC of FF_1_inver : label is "SLICE_X14Y23";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_cycle_counter_0 : label is "true";
  attribute BEL of FF_cycle_counter_0 : label is "CFF";
  attribute BOX_TYPE of FF_cycle_counter_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_cycle_counter_0 : label is std.standard.true;
  attribute LOC of FF_cycle_counter_0 : label is "SLICE_X14Y20";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_cycle_counter_0_inver : label is "true";
  attribute BEL of FF_cycle_counter_0_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_cycle_counter_0_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_cycle_counter_0_inver : label is std.standard.true;
  attribute LOC of FF_cycle_counter_0_inver : label is "SLICE_X14Y20";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_cycle_counter_1 : label is "true";
  attribute BEL of FF_cycle_counter_1 : label is "CFF";
  attribute BOX_TYPE of FF_cycle_counter_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_cycle_counter_1 : label is std.standard.true;
  attribute LOC of FF_cycle_counter_1 : label is "SLICE_X14Y19";
  attribute ALLOW_COMBINATORIAL_LOOPS of FF_cycle_counter_1_inver : label is "true";
  attribute BEL of FF_cycle_counter_1_inver : label is "C6LUT";
  attribute BOX_TYPE of FF_cycle_counter_1_inver : label is "PRIMITIVE";
  attribute DONT_TOUCH of FF_cycle_counter_1_inver : label is std.standard.true;
  attribute LOC of FF_cycle_counter_1_inver : label is "SLICE_X14Y19";
  attribute BEL of Finished_cycle_flag : label is "B6LUT";
  attribute BOX_TYPE of Finished_cycle_flag : label is "PRIMITIVE";
  attribute DONT_TOUCH of Finished_cycle_flag : label is std.standard.true;
  attribute LOC of Finished_cycle_flag : label is "SLICE_X15Y19";
  attribute BEL of Finished_delay_latch_0 : label is "DFF";
  attribute BOX_TYPE of Finished_delay_latch_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Finished_delay_latch_0 : label is std.standard.true;
  attribute LOC of Finished_delay_latch_0 : label is "SLICE_X15Y24";
  attribute BEL of Finished_delay_latch_1 : label is "CFF";
  attribute BOX_TYPE of Finished_delay_latch_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Finished_delay_latch_1 : label is std.standard.true;
  attribute LOC of Finished_delay_latch_1 : label is "SLICE_X15Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of Master_CLR_latch : label is "true";
  attribute BEL of Master_CLR_latch : label is "CFF";
  attribute BOX_TYPE of Master_CLR_latch : label is "PRIMITIVE";
  attribute DONT_TOUCH of Master_CLR_latch : label is std.standard.true;
  attribute LOC of Master_CLR_latch : label is "SLICE_X17Y24";
  attribute BEL of Master_Cycle_finish_Flag_latch : label is "BFF";
  attribute BOX_TYPE of Master_Cycle_finish_Flag_latch : label is "PRIMITIVE";
  attribute DONT_TOUCH of Master_Cycle_finish_Flag_latch : label is std.standard.true;
  attribute LOC of Master_Cycle_finish_Flag_latch : label is "SLICE_X15Y19";
  attribute BEL of Master_EN_latch : label is "AFF";
  attribute BOX_TYPE of Master_EN_latch : label is "PRIMITIVE";
  attribute DONT_TOUCH of Master_EN_latch : label is std.standard.true;
  attribute LOC of Master_EN_latch : label is "SLICE_X16Y25";
  attribute BEL of Master_finish_Flag_latch : label is "DFF";
  attribute BOX_TYPE of Master_finish_Flag_latch : label is "PRIMITIVE";
  attribute DONT_TOUCH of Master_finish_Flag_latch : label is std.standard.true;
  attribute LOC of Master_finish_Flag_latch : label is "SLICE_X15Y21";
  attribute BEL of Response_register_bit_0 : label is "AFF";
  attribute BOX_TYPE of Response_register_bit_0 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Response_register_bit_0 : label is std.standard.true;
  attribute LOC of Response_register_bit_0 : label is "SLICE_X15Y16";
  attribute BEL of Response_register_bit_1 : label is "BFF";
  attribute BOX_TYPE of Response_register_bit_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Response_register_bit_1 : label is std.standard.true;
  attribute LOC of Response_register_bit_1 : label is "SLICE_X15Y18";
  attribute BEL of Response_register_bit_2 : label is "CFF";
  attribute BOX_TYPE of Response_register_bit_2 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Response_register_bit_2 : label is std.standard.true;
  attribute LOC of Response_register_bit_2 : label is "SLICE_X15Y17";
  attribute BEL of Set_CE_flag : label is "B6LUT";
  attribute BOX_TYPE of Set_CE_flag : label is "PRIMITIVE";
  attribute DONT_TOUCH of Set_CE_flag : label is std.standard.true;
  attribute LOC of Set_CE_flag : label is "SLICE_X16Y24";
  attribute BEL of Set_CLR_flag_1 : label is "A6LUT";
  attribute BOX_TYPE of Set_CLR_flag_1 : label is "PRIMITIVE";
  attribute DONT_TOUCH of Set_CLR_flag_1 : label is std.standard.true;
  attribute LOC of Set_CLR_flag_1 : label is "SLICE_X16Y24";
  attribute BEL of Set_EN_flag : label is "C6LUT";
  attribute BOX_TYPE of Set_EN_flag : label is "PRIMITIVE";
  attribute DONT_TOUCH of Set_EN_flag : label is std.standard.true;
  attribute LOC of Set_EN_flag : label is "SLICE_X16Y24";
  attribute BEL of Set_Master_CLR : label is "C6LUT";
  attribute BOX_TYPE of Set_Master_CLR : label is "PRIMITIVE";
  attribute DONT_TOUCH of Set_Master_CLR : label is std.standard.true;
  attribute LOC of Set_Master_CLR : label is "SLICE_X17Y24";
  attribute BEL of Set_Master_CLR_OR : label is "D6LUT";
  attribute BOX_TYPE of Set_Master_CLR_OR : label is "PRIMITIVE";
  attribute DONT_TOUCH of Set_Master_CLR_OR : label is std.standard.true;
  attribute LOC of Set_Master_CLR_OR : label is "SLICE_X17Y24";
  attribute ALLOW_COMBINATORIAL_LOOPS of finished_latch : label is "true";
  attribute BEL of finished_latch : label is "AFF";
  attribute BOX_TYPE of finished_latch : label is "PRIMITIVE";
  attribute DONT_TOUCH of finished_latch : label is std.standard.true;
  attribute LOC of finished_latch : label is "SLICE_X17Y24";
begin
  CE <= \^ce\;
  CLR <= \^clr\;
  EN(1 downto 0) <= \^en\(1 downto 0);
  Finished_master <= \^finished_master\;
  CLR_reg <= 'Z';
AND_finish_master: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Cycle_counter_bit_0,
      I1 => Cycle_counter_bit_1,
      O => Master_finish_flag_AND
    );
Average_response: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => response_0,
      I1 => response_1,
      I2 => response_2,
      O => Response_master
    );
CE_Flag_latch: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => CE_flag,
      Q => CE_flag_1
    );
CE_Flag_latch_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => CE_flag_1,
      Q => \^ce\
    );
CE_reponse_reg1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Cycle_counter_bit_0,
      I1 => Cycle_counter_bit_1,
      I2 => finished,
      O => CE_reponse_reg_0
    );
CE_reponse_reg2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Cycle_counter_bit_0,
      I1 => Cycle_counter_bit_1,
      I2 => finished,
      O => CE_reponse_reg_1
    );
CE_reponse_reg3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Cycle_counter_bit_0,
      I1 => Cycle_counter_bit_1,
      I2 => finished,
      O => CE_reponse_reg_2
    );
CLR_Flag_latch_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => CLR_Flag_1,
      Q => \^clr\
    );
CLR_if_EN_lost: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => EN_master,
      O => CLR_Counter
    );
CLR_master_second: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0028"
    )
        port map (
      I0 => Pass_Complete_1,
      I1 => Cycle_counter_bit_0,
      I2 => Cycle_counter_bit_1,
      I3 => \^clr\,
      O => Master_CLR_Flag_2
    );
Cycle_finish: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^en\(0),
      I1 => \^en\(1),
      I2 => finished,
      O => Cycle_finish_flag
    );
DFF_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Finished_delayed_2CLK,
      CE => '1',
      CLR => CLR_master,
      D => Q_0_1,
      Q => Q_0
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
      CE => '1',
      CLR => CLR_master,
      D => Q_1_1,
      Q => Q_1
    );
EN_Flag_latch_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => EN_Flag,
      Q => Ready_flag
    );
Enable_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2200"
    )
        port map (
      I0 => EN_master,
      I1 => Q_0,
      I2 => Q_1,
      I3 => Ready_flag,
      O => \^en\(0)
    );
Enable_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2800"
    )
        port map (
      I0 => EN_master,
      I1 => Q_0,
      I2 => Q_1,
      I3 => Ready_flag,
      O => \^en\(1)
    );
FF_0_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q_0,
      O => Q_0_1
    );
FF_1_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q_1,
      O => Q_1_1
    );
FF_cycle_counter_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Cycle_finish_flag,
      CE => '1',
      CLR => CLR_Counter,
      D => Cycle_counter_bit_0_1,
      Q => Cycle_counter_bit_0
    );
FF_cycle_counter_0_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cycle_counter_bit_0,
      O => Cycle_counter_bit_0_1
    );
FF_cycle_counter_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => Cycle_counter_bit_0_1,
      CE => '1',
      CLR => CLR_Counter,
      D => Cycle_counter_bit_1_1,
      Q => Cycle_counter_bit_1
    );
FF_cycle_counter_1_inver: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cycle_counter_bit_1,
      O => Cycle_counter_bit_1_1
    );
Finished_cycle_flag: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q_0,
      I1 => Q_1,
      I2 => \^clr\,
      O => Pass_Complete
    );
Finished_delay_latch_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => finished_1,
      Q => Finished_delayed_1CLK
    );
Finished_delay_latch_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => Finished_delayed_1CLK,
      Q => Finished_delayed_2CLK
    );
Master_CLR_latch: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => Master_CLR_Flag,
      Q => CLR_master
    );
Master_Cycle_finish_Flag_latch: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => Pass_Complete,
      Q => Pass_Complete_1
    );
Master_EN_latch: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => EN_master,
      Q => EN_latch
    );
Master_finish_Flag_latch: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => Master_finish_flag_AND,
      Q => \^finished_master\
    );
Response_register_bit_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_reponse_reg_0,
      CLR => CLR_reg,
      D => Response,
      Q => response_0
    );
Response_register_bit_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_reponse_reg_1,
      CLR => CLR_reg,
      D => Response,
      Q => response_1
    );
Response_register_bit_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => CE_reponse_reg_2,
      CLR => CLR_reg,
      D => Response,
      Q => response_2
    );
Set_CE_flag: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000C"
    )
        port map (
      I0 => EN_master,
      I1 => EN_latch,
      I2 => finished,
      I3 => \^clr\,
      O => CE_flag
    );
Set_CLR_flag_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => EN_master,
      I1 => EN_latch,
      I2 => finished,
      I3 => \^ce\,
      O => CLR_Flag_1
    );
Set_EN_flag: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C0"
    )
        port map (
      I0 => EN_master,
      I1 => EN_latch,
      I2 => \^ce\,
      I3 => \^finished_master\,
      O => EN_Flag
    );
Set_Master_CLR: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q_0,
      I1 => Q_1,
      I2 => \^ce\,
      I3 => EN_master,
      O => Master_CLR_Flag_1
    );
Set_Master_CLR_OR: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Master_CLR_Flag_1,
      I1 => Master_CLR_Flag_2,
      O => Master_CLR_Flag
    );
finished_latch: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => finished,
      Q => finished_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_PUF_Controller_0_0 is
  port (
    EN_master : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Response : in STD_LOGIC;
    finished : in STD_LOGIC;
    EN : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLR : out STD_LOGIC;
    CE : out STD_LOGIC;
    Finished_master : out STD_LOGIC;
    Response_master : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_PUF_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_PUF_Controller_0_0 : entity is "design_1_PUF_Controller_0_0,PUF_Controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_PUF_Controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_PUF_Controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_PUF_Controller_0_0 : entity is "PUF_Controller,Vivado 2023.1";
end design_1_PUF_Controller_0_0;

architecture STRUCTURE of design_1_PUF_Controller_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_PUF_Controller_0_0_PUF_Controller
     port map (
      CE => CE,
      CLK => CLK,
      CLR => CLR,
      EN(1 downto 0) => EN(1 downto 0),
      EN_master => EN_master,
      Finished_master => Finished_master,
      Response => Response,
      Response_master => Response_master,
      finished => finished
    );
end STRUCTURE;
