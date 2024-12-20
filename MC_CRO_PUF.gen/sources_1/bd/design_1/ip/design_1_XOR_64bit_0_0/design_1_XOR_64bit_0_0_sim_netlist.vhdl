-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun 27 14:19:17 2024
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
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_XOR_64bit_0_0_XOR_64bit : entity is "XOR_64bit";
end design_1_XOR_64bit_0_0_XOR_64bit;

architecture STRUCTURE of design_1_XOR_64bit_0_0_XOR_64bit is
  signal O_0 : STD_LOGIC;
  signal O_1 : STD_LOGIC;
  signal O_10 : STD_LOGIC;
  signal O_11 : STD_LOGIC;
  signal O_2 : STD_LOGIC;
  signal O_3 : STD_LOGIC;
  signal O_4 : STD_LOGIC;
  signal O_5 : STD_LOGIC;
  signal O_6 : STD_LOGIC;
  signal O_7 : STD_LOGIC;
  signal O_8 : STD_LOGIC;
  signal O_9 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of XOR_first_6_bits : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_1 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_10 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_2 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_3 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_4 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_5 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_6 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_7 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_8 : label is "PRIMITIVE";
  attribute BOX_TYPE of XOR_last_5_bits_9 : label is "PRIMITIVE";
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
      O => O_2
    );
XOR_last_5_bits_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(16),
      I1 => A(17),
      I2 => A(18),
      I3 => A(19),
      I4 => A(20),
      I5 => O_2,
      O => O_3
    );
XOR_last_5_bits_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => B(30),
      I1 => B(31),
      I2 => B(0),
      I3 => O_11,
      O => Parity
    );
XOR_last_5_bits_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(21),
      I1 => A(22),
      I2 => A(23),
      I3 => A(24),
      I4 => A(25),
      I5 => O_3,
      O => O_4
    );
XOR_last_5_bits_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(26),
      I1 => A(27),
      I2 => A(28),
      I3 => A(29),
      I4 => A(30),
      I5 => O_4,
      O => O_5
    );
XOR_last_5_bits_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => A(31),
      I1 => B(1),
      I2 => B(2),
      I3 => B(3),
      I4 => B(4),
      I5 => O_5,
      O => O_6
    );
XOR_last_5_bits_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => B(5),
      I1 => B(6),
      I2 => B(7),
      I3 => B(8),
      I4 => B(9),
      I5 => O_6,
      O => O_7
    );
XOR_last_5_bits_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => B(10),
      I1 => B(11),
      I2 => B(12),
      I3 => B(13),
      I4 => B(14),
      I5 => O_7,
      O => O_8
    );
XOR_last_5_bits_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => B(15),
      I1 => B(16),
      I2 => B(17),
      I3 => B(18),
      I4 => B(19),
      I5 => O_8,
      O => O_9
    );
XOR_last_5_bits_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => B(20),
      I1 => B(21),
      I2 => B(22),
      I3 => B(23),
      I4 => B(24),
      I5 => O_9,
      O => O_10
    );
XOR_last_5_bits_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => B(25),
      I1 => B(26),
      I2 => B(27),
      I3 => B(28),
      I4 => B(29),
      I5 => O_10,
      O => O_11
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
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      Parity => Parity
    );
end STRUCTURE;
