-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Jun 26 16:13:24 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Test_CRO_0_0/design_1_Test_CRO_0_0_stub.vhdl
-- Design      : design_1_Test_CRO_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Test_CRO_0_0 is
  Port ( 
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

end design_1_Test_CRO_0_0;

architecture stub of design_1_Test_CRO_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Challenge_0[31:0],Challenge_1[31:0],EN[1:0],CLR,CE,Fin,Counter_0[15:0],Challenge_parity_bit,finished";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Test_CRO,Vivado 2023.1";
begin
end;
