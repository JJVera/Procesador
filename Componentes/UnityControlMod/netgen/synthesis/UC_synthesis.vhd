--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UC_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 19 15:07:16 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm UC -w -dir netgen/synthesis -ofmt vhdl -sim UC.ngc UC_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: UC.ngc
-- Output file	: D:\Arquitectura\Componentes\UnityControlMod\netgen\synthesis\UC_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: UC
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity UC is
  port (
    S : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    OP : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    OP3 : in STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end UC;

architecture Structure of UC is
  signal N10 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal OP3_0_IBUF_10 : STD_LOGIC; 
  signal OP3_1_IBUF_11 : STD_LOGIC; 
  signal OP3_2_IBUF_12 : STD_LOGIC; 
  signal OP3_3_IBUF_13 : STD_LOGIC; 
  signal OP3_4_IBUF_14 : STD_LOGIC; 
  signal OP3_5_IBUF_15 : STD_LOGIC; 
  signal OP_0_IBUF_18 : STD_LOGIC; 
  signal OP_1_IBUF_19 : STD_LOGIC; 
  signal S_1_47_22 : STD_LOGIC; 
  signal S_1_64_SW0 : STD_LOGIC; 
  signal S_1_64_SW01_24 : STD_LOGIC; 
  signal S_1_79 : STD_LOGIC; 
  signal S_1_791_26 : STD_LOGIC; 
  signal S_3_29 : STD_LOGIC; 
  signal S_3_291_30 : STD_LOGIC; 
  signal S_0_OBUF_33 : STD_LOGIC; 
  signal S_1_OBUF_34 : STD_LOGIC; 
  signal S_2_OBUF_35 : STD_LOGIC; 
  signal S_3_OBUF_36 : STD_LOGIC; 
  signal S_4_OBUF_37 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => S_4_OBUF_37
    );
  S_1_47 : LUT4
    generic map(
      INIT => X"1119"
    )
    port map (
      I0 => OP3_0_IBUF_10,
      I1 => OP3_5_IBUF_15,
      I2 => OP3_3_IBUF_13,
      I3 => OP3_4_IBUF_14,
      O => S_1_47_22
    );
  OP_1_IBUF : IBUF
    port map (
      I => OP(1),
      O => OP_1_IBUF_19
    );
  OP_0_IBUF : IBUF
    port map (
      I => OP(0),
      O => OP_0_IBUF_18
    );
  OP3_5_IBUF : IBUF
    port map (
      I => OP3(5),
      O => OP3_5_IBUF_15
    );
  OP3_4_IBUF : IBUF
    port map (
      I => OP3(4),
      O => OP3_4_IBUF_14
    );
  OP3_3_IBUF : IBUF
    port map (
      I => OP3(3),
      O => OP3_3_IBUF_13
    );
  OP3_2_IBUF : IBUF
    port map (
      I => OP3(2),
      O => OP3_2_IBUF_12
    );
  OP3_1_IBUF : IBUF
    port map (
      I => OP3(1),
      O => OP3_1_IBUF_11
    );
  OP3_0_IBUF : IBUF
    port map (
      I => OP3(0),
      O => OP3_0_IBUF_10
    );
  S_5_OBUF : OBUF
    port map (
      I => S_4_OBUF_37,
      O => S(5)
    );
  S_4_OBUF : OBUF
    port map (
      I => S_4_OBUF_37,
      O => S(4)
    );
  S_3_OBUF : OBUF
    port map (
      I => S_3_OBUF_36,
      O => S(3)
    );
  S_2_OBUF : OBUF
    port map (
      I => S_2_OBUF_35,
      O => S(2)
    );
  S_1_OBUF : OBUF
    port map (
      I => S_1_OBUF_34,
      O => S(1)
    );
  S_0_OBUF : OBUF
    port map (
      I => S_0_OBUF_33,
      O => S(0)
    );
  S_2_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => OP_0_IBUF_18,
      I1 => OP_1_IBUF_19,
      I2 => OP3_5_IBUF_15,
      O => N14
    );
  S_2_Q : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => OP3_0_IBUF_10,
      I1 => OP3_1_IBUF_11,
      I2 => OP3_3_IBUF_13,
      I3 => N14,
      O => S_2_OBUF_35
    );
  S_0_SW1 : LUT4
    generic map(
      INIT => X"A9FD"
    )
    port map (
      I0 => OP3_3_IBUF_13,
      I1 => OP3_0_IBUF_10,
      I2 => OP3_1_IBUF_11,
      I3 => OP3_2_IBUF_12,
      O => N16
    );
  S_0_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => OP_1_IBUF_19,
      I1 => OP3_5_IBUF_15,
      I2 => OP_0_IBUF_18,
      I3 => N16,
      O => S_0_OBUF_33
    );
  S_3_48_SW1 : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => S_3_29,
      I1 => OP3_0_IBUF_10,
      I2 => OP3_1_IBUF_11,
      I3 => OP3_5_IBUF_15,
      O => N18
    );
  S_3_48 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => OP_1_IBUF_19,
      I1 => OP3_3_IBUF_13,
      I2 => OP_0_IBUF_18,
      I3 => N18,
      O => S_3_OBUF_36
    );
  S_3_291 : LUT4
    generic map(
      INIT => X"0060"
    )
    port map (
      I0 => OP3_0_IBUF_10,
      I1 => OP3_1_IBUF_11,
      I2 => OP3_2_IBUF_12,
      I3 => OP3_4_IBUF_14,
      O => S_3_291_30
    );
  S_3_29_f5 : MUXF5
    port map (
      I0 => S_4_OBUF_37,
      I1 => S_3_291_30,
      S => OP3_5_IBUF_15,
      O => S_3_29
    );
  S_1_64_SW01 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => OP3_2_IBUF_12,
      I1 => OP3_3_IBUF_13,
      I2 => OP3_4_IBUF_14,
      I3 => OP3_0_IBUF_10,
      O => S_1_64_SW0
    );
  S_1_64_SW02 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => OP3_3_IBUF_13,
      I1 => OP3_0_IBUF_10,
      O => S_1_64_SW01_24
    );
  S_1_64_SW0_f5 : MUXF5
    port map (
      I0 => S_1_64_SW01_24,
      I1 => S_1_64_SW0,
      S => OP3_5_IBUF_15,
      O => N10
    );
  S_1_791 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => OP_1_IBUF_19,
      I1 => N10,
      I2 => OP_0_IBUF_18,
      O => S_1_79
    );
  S_1_792 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => S_1_47_22,
      I1 => OP_0_IBUF_18,
      I2 => OP_1_IBUF_19,
      I3 => OP3_2_IBUF_12,
      O => S_1_791_26
    );
  S_1_79_f5 : MUXF5
    port map (
      I0 => S_1_791_26,
      I1 => S_1_79,
      S => OP3_1_IBUF_11,
      O => S_1_OBUF_34
    );

end Structure;

