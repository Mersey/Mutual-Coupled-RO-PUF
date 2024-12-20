-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun 20 17:05:54 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_XOR_3bit_0_0 -prefix
--               design_1_XOR_3bit_0_0_ design_1_XOR_3bit_0_0_sim_netlist.vhdl
-- Design      : design_1_XOR_3bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_XOR_3bit_0_0_XOR_3bit is
  port (
    O : out STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : in STD_LOGIC
  );
end design_1_XOR_3bit_0_0_XOR_3bit;

architecture STRUCTURE of design_1_XOR_3bit_0_0_XOR_3bit is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of CE_0_decode : label is "PRIMITIVE";
begin
CE_0_decode: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => A,
      I1 => B,
      I2 => C,
      O => O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_XOR_3bit_0_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_XOR_3bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_XOR_3bit_0_0 : entity is "design_1_XOR_3bit_0_0,XOR_3bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_XOR_3bit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_XOR_3bit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_XOR_3bit_0_0 : entity is "XOR_3bit,Vivado 2023.1";
end design_1_XOR_3bit_0_0;

architecture STRUCTURE of design_1_XOR_3bit_0_0 is
begin
inst: entity work.design_1_XOR_3bit_0_0_XOR_3bit
     port map (
      A => A,
      B => B,
      C => C,
      O => O
    );
end STRUCTURE;
