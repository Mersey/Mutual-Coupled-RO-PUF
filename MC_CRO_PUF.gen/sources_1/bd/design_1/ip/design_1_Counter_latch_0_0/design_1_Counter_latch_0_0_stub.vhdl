-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (win64) Build 3900603 Fri Jun 16 19:31:24 MDT 2023
-- Date        : Fri Dec 20 22:44:32 2024
-- Host        : ECIT80703 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/40227910/Desktop/16_bit_puf_new_balancing/16_bit_puf_new_balancing.gen/sources_1/bd/design_1/ip/design_1_Counter_latch_0_0/design_1_Counter_latch_0_0_stub.vhdl
-- Design      : design_1_Counter_latch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Counter_latch_0_0 is
  Port ( 
    A : in STD_LOGIC;
    CLK : in STD_LOGIC;
    EN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Finished : in STD_LOGIC;
    CLR_M : in STD_LOGIC;
    O_0 : out STD_LOGIC;
    O_1 : out STD_LOGIC;
    O_2 : out STD_LOGIC
  );

end design_1_Counter_latch_0_0;

architecture stub of design_1_Counter_latch_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,CLK,EN[1:0],Finished,CLR_M,O_0,O_1,O_2";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Counter_latch,Vivado 2023.1.1";
begin
end;
