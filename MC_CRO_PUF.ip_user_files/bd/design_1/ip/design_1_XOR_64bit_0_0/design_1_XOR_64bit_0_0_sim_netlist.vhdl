-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Jun 26 17:11:12 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_XOR_64bit_0_0/design_1_XOR_64bit_0_0_sim_netlist.vhdl
-- Design      : design_1_XOR_64bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_XOR_64bit_0_0_XOR_64bit is
  port (
    Parity : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_XOR_64bit_0_0_XOR_64bit : entity is "XOR_64bit";
end design_1_XOR_64bit_0_0_XOR_64bit;

architecture STRUCTURE of design_1_XOR_64bit_0_0_XOR_64bit is
  signal O_0 : STD_LOGIC;
  signal O_1 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XOR_first_6_bits : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_middle_5_bits : label is "PRIMITIVE";
begin
XOR_first_6_bits: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      I2 => A(2),
      I3 => A(3),
      I4 => A(4),
      I5 => A(5),
      O => O_0
    );
XOR_last_5_bits: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(11),
      I1 => A(12),
      I2 => A(13),
      I3 => A(14),
      I4 => A(15),
      I5 => O_1,
      O => Parity
    );
XOR_middle_5_bits: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(6),
      I1 => A(7),
      I2 => A(8),
      I3 => A(9),
      I4 => A(10),
      I5 => O_0,
      O => O_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_XOR_64bit_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Parity : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_XOR_64bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_XOR_64bit_0_0 : entity is "design_1_XOR_64bit_0_0,XOR_64bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_XOR_64bit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_XOR_64bit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_XOR_64bit_0_0 : entity is "XOR_64bit,Vivado 2023.1";
end design_1_XOR_64bit_0_0;

architecture STRUCTURE of design_1_XOR_64bit_0_0 is
begin
inst: entity work.design_1_XOR_64bit_0_0_XOR_64bit
     port map (
      A(15 downto 0) => A(15 downto 0),
      Parity => Parity
    );
end STRUCTURE;
