-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Jun 28 11:44:21 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/40227910/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_PUF_Controller_0_0/design_1_PUF_Controller_0_0_stub.vhdl
-- Design      : design_1_PUF_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_PUF_Controller_0_0 is
  Port ( 
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

end design_1_PUF_Controller_0_0;

architecture stub of design_1_PUF_Controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "EN_master,CLK,Response,finished,EN[1:0],CLR,CE,Finished_master,Response_master";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PUF_Controller,Vivado 2023.1";
begin
end;
