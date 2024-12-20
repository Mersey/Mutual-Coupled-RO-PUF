-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
-- Date        : Fri Dec 20 22:44:32 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/40227910/Desktop/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Counter_latch_0_0/design_1_Counter_latch_0_0_sim_netlist.vhdl
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
    O_0 : out STD_LOGIC;
    O_1 : out STD_LOGIC;
    O_2 : out STD_LOGIC;
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Finished : in STD_LOGIC;
    A : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CLR_M : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Counter_latch_0_0_Counter_latch : entity is "Counter_latch";
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
      D => A,
      Q => O_0
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
      D => A,
      Q => O_1
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
      D => A,
      Q => O_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_latch_0_0 is
  port (
    A : in STD_LOGIC;
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Finished : in STD_LOGIC;
    CLR_M : in STD_LOGIC;
    O_0 : out STD_LOGIC;
    O_1 : out STD_LOGIC;
    O_2 : out STD_LOGIC
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
  attribute X_CORE_INFO of design_1_Counter_latch_0_0 : entity is "Counter_latch,Vivado 2023.1.1";
end design_1_Counter_latch_0_0;

architecture STRUCTURE of design_1_Counter_latch_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_Counter_latch_0_0_Counter_latch
     port map (
      A => A,
      CLK => CLK,
      CLR_M => CLR_M,
      EN(1 downto 0) => EN(1 downto 0),
      Finished => Finished,
      O_0 => O_0,
      O_1 => O_1,
      O_2 => O_2
    );
end STRUCTURE;
