-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun 20 17:05:54 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_XOR_3bit_0_0 -prefix
--               design_1_XOR_3bit_0_0_ design_1_XOR_3bit_0_0_stub.vhdl
-- Design      : design_1_XOR_3bit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_XOR_3bit_0_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : in STD_LOGIC;
    O : out STD_LOGIC
  );

end design_1_XOR_3bit_0_0;

architecture stub of design_1_XOR_3bit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,C,O";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "XOR_3bit,Vivado 2023.1";
begin
end;
