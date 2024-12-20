-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
-- Date        : Fri Dec 20 22:53:12 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Comparator_v2_2_0_0_sim_netlist.vhdl
-- Design      : design_1_Comparator_v2_2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator_v2_2 is
  port (
    A_is_larger : out STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator_v2_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator_v2_2 is
  signal O0 : STD_LOGIC;
  signal O1 : STD_LOGIC;
  signal O2 : STD_LOGIC;
  signal O_3 : STD_LOGIC;
  signal O_4 : STD_LOGIC;
  signal O_5 : STD_LOGIC;
  signal O_6 : STD_LOGIC;
  attribute ALLOW_COMBINATORIAL_LOOPS : string;
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_5th_2_bits : label is "true";
  attribute BEL : string;
  attribute BEL of Comparator_5th_2_bits : label is "A6LUT";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of Comparator_5th_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of Comparator_5th_2_bits : label is std.standard.true;
  attribute LOC : string;
  attribute LOC of Comparator_5th_2_bits : label is "SLICE_X28Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_6th_2_bits : label is "true";
  attribute BEL of Comparator_6th_2_bits : label is "B6LUT";
  attribute BOX_TYPE of Comparator_6th_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_6th_2_bits : label is std.standard.true;
  attribute LOC of Comparator_6th_2_bits : label is "SLICE_X28Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_7th_2_bits : label is "true";
  attribute BEL of Comparator_7th_2_bits : label is "C6LUT";
  attribute BOX_TYPE of Comparator_7th_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_7th_2_bits : label is std.standard.true;
  attribute LOC of Comparator_7th_2_bits : label is "SLICE_X28Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_9th_2_bits : label is "true";
  attribute BEL of Comparator_9th_2_bits : label is "D6LUT";
  attribute BOX_TYPE of Comparator_9th_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_9th_2_bits : label is std.standard.true;
  attribute LOC of Comparator_9th_2_bits : label is "SLICE_X28Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_Third_2_bits : label is "true";
  attribute BEL of Comparator_Third_2_bits : label is "C6LUT";
  attribute BOX_TYPE of Comparator_Third_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_Third_2_bits : label is std.standard.true;
  attribute LOC of Comparator_Third_2_bits : label is "SLICE_X27Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_first_2_bits : label is "true";
  attribute BEL of Comparator_first_2_bits : label is "A6LUT";
  attribute BOX_TYPE of Comparator_first_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_first_2_bits : label is std.standard.true;
  attribute LOC of Comparator_first_2_bits : label is "SLICE_X27Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_forth_2_bits : label is "true";
  attribute BEL of Comparator_forth_2_bits : label is "D6LUT";
  attribute BOX_TYPE of Comparator_forth_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_forth_2_bits : label is std.standard.true;
  attribute LOC of Comparator_forth_2_bits : label is "SLICE_X27Y25";
  attribute ALLOW_COMBINATORIAL_LOOPS of Comparator_second_2_bits : label is "true";
  attribute BEL of Comparator_second_2_bits : label is "B6LUT";
  attribute BOX_TYPE of Comparator_second_2_bits : label is "PRIMITIVE";
  attribute DONT_TOUCH of Comparator_second_2_bits : label is std.standard.true;
  attribute LOC of Comparator_second_2_bits : label is "SLICE_X27Y25";
begin
Comparator_5th_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(8),
      I1 => B(9),
      I2 => A(8),
      I3 => A(9),
      I4 => O_3,
      O => O_4
    );
Comparator_6th_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(10),
      I1 => B(11),
      I2 => A(10),
      I3 => A(11),
      I4 => O_4,
      O => O_5
    );
Comparator_7th_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(12),
      I1 => B(13),
      I2 => A(12),
      I3 => A(13),
      I4 => O_5,
      O => O_6
    );
Comparator_9th_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(14),
      I1 => B(15),
      I2 => A(14),
      I3 => A(15),
      I4 => O_6,
      O => A_is_larger
    );
Comparator_Third_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(4),
      I1 => B(5),
      I2 => A(4),
      I3 => A(5),
      I4 => O1,
      O => O2
    );
Comparator_first_2_bits: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F731"
    )
        port map (
      I0 => B(0),
      I1 => B(1),
      I2 => A(0),
      I3 => A(1),
      O => O0
    );
Comparator_forth_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(6),
      I1 => B(7),
      I2 => A(6),
      I3 => A(7),
      I4 => O2,
      O => O_3
    );
Comparator_second_2_bits: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7317310"
    )
        port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(2),
      I3 => A(3),
      I4 => O0,
      O => O1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_is_larger : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Comparator_v2_2_0_0,Comparator_v2_2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Comparator_v2_2,Vivado 2023.1.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comparator_v2_2
     port map (
      A(15 downto 0) => A(15 downto 0),
      A_is_larger => A_is_larger,
      B(15 downto 0) => B(15 downto 0)
    );
end STRUCTURE;
