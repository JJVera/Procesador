--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Win_Man_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 26 14:34:24 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Win_Man -w -dir netgen/synthesis -ofmt vhdl -sim Win_Man.ngc Win_Man_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: Win_Man.ngc
-- Output file	: D:\Arquitectura\Componentes\WindowsManager\netgen\synthesis\Win_Man_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Win_Man
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

entity Win_Man is
  port (
    cwp : in STD_LOGIC := 'X'; 
    ncwp : out STD_LOGIC; 
    nrs1 : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    nrs2 : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    nrd : out STD_LOGIC_VECTOR ( 5 downto 0 ); 
    rs1 : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    rs2 : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    op : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    rd : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    op3 : in STD_LOGIC_VECTOR ( 5 downto 0 ) 
  );
end Win_Man;

architecture Structure of Win_Man is
  signal N01 : STD_LOGIC; 
  signal aux_0 : STD_LOGIC; 
  signal aux_1_2 : STD_LOGIC; 
  signal aux_cmp_eq0000 : STD_LOGIC; 
  signal aux_mux0002_4 : STD_LOGIC; 
  signal cwp_IBUF_6 : STD_LOGIC; 
  signal op3_0_IBUF_32 : STD_LOGIC; 
  signal op3_1_IBUF_33 : STD_LOGIC; 
  signal op3_2_IBUF_34 : STD_LOGIC; 
  signal op3_3_IBUF_35 : STD_LOGIC; 
  signal op3_4_IBUF_36 : STD_LOGIC; 
  signal op3_5_IBUF_37 : STD_LOGIC; 
  signal op_0_IBUF_40 : STD_LOGIC; 
  signal op_1_IBUF_41 : STD_LOGIC; 
  signal rd_0_IBUF_47 : STD_LOGIC; 
  signal rd_1_IBUF_48 : STD_LOGIC; 
  signal rd_2_IBUF_49 : STD_LOGIC; 
  signal rd_3_IBUF_50 : STD_LOGIC; 
  signal rd_4_IBUF_51 : STD_LOGIC; 
  signal rdint_0_and0000 : STD_LOGIC; 
  signal rdint_0_and0001 : STD_LOGIC; 
  signal rdint_1_and0000 : STD_LOGIC; 
  signal rdint_1_and0001 : STD_LOGIC; 
  signal rdint_2_and0000 : STD_LOGIC; 
  signal rdint_2_and0001 : STD_LOGIC; 
  signal rdint_3_and0000 : STD_LOGIC; 
  signal rdint_4_and0000 : STD_LOGIC; 
  signal rdint_4_and0001 : STD_LOGIC; 
  signal rdint_5_and0000 : STD_LOGIC; 
  signal rdint_5_and0001 : STD_LOGIC; 
  signal rdint_cmp_le0000 : STD_LOGIC; 
  signal rs1_0_IBUF_75 : STD_LOGIC; 
  signal rs1_1_IBUF_76 : STD_LOGIC; 
  signal rs1_2_IBUF_77 : STD_LOGIC; 
  signal rs1_3_IBUF_78 : STD_LOGIC; 
  signal rs1_4_IBUF_79 : STD_LOGIC; 
  signal rs1int_0_and0000 : STD_LOGIC; 
  signal rs1int_0_and0001 : STD_LOGIC; 
  signal rs1int_1_and0000 : STD_LOGIC; 
  signal rs1int_1_and0001 : STD_LOGIC; 
  signal rs1int_2_and0000 : STD_LOGIC; 
  signal rs1int_2_and0001 : STD_LOGIC; 
  signal rs1int_3_and0000 : STD_LOGIC; 
  signal rs1int_4_and0000 : STD_LOGIC; 
  signal rs1int_4_and0001 : STD_LOGIC; 
  signal rs1int_5_and0000 : STD_LOGIC; 
  signal rs1int_5_and0001 : STD_LOGIC; 
  signal rs1int_cmp_le0000 : STD_LOGIC; 
  signal rs2_0_IBUF_103 : STD_LOGIC; 
  signal rs2_1_IBUF_104 : STD_LOGIC; 
  signal rs2_2_IBUF_105 : STD_LOGIC; 
  signal rs2_3_IBUF_106 : STD_LOGIC; 
  signal rs2_4_IBUF_107 : STD_LOGIC; 
  signal rs2int_0_and0000 : STD_LOGIC; 
  signal rs2int_0_and0001 : STD_LOGIC; 
  signal rs2int_1_and0000 : STD_LOGIC; 
  signal rs2int_1_and0001 : STD_LOGIC; 
  signal rs2int_2_and0000 : STD_LOGIC; 
  signal rs2int_2_and0001 : STD_LOGIC; 
  signal rs2int_3_and0000 : STD_LOGIC; 
  signal rs2int_4_and0000 : STD_LOGIC; 
  signal rs2int_4_and0001 : STD_LOGIC; 
  signal rs2int_5_and0000 : STD_LOGIC; 
  signal rs2int_5_and0001 : STD_LOGIC; 
  signal rs2int_cmp_le0000 : STD_LOGIC; 
  signal rdint : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal rs1int : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal rs2int : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  aux : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => aux_mux0002_4,
      G => aux_cmp_eq0000,
      Q => aux_0
    );
  rdint_0 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rdint_0_and0000,
      D => rd_0_IBUF_47,
      G => rdint_cmp_le0000,
      PRE => rdint_0_and0001,
      Q => rdint(0)
    );
  rdint_1 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rdint_1_and0000,
      D => rd_1_IBUF_48,
      G => rdint_cmp_le0000,
      PRE => rdint_1_and0001,
      Q => rdint(1)
    );
  rdint_2 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rdint_2_and0000,
      D => rd_2_IBUF_49,
      G => rdint_cmp_le0000,
      PRE => rdint_2_and0001,
      Q => rdint(2)
    );
  rdint_3 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rdint_3_and0000,
      D => rd_3_IBUF_50,
      G => rdint_cmp_le0000,
      PRE => rd_3_IBUF_50,
      Q => rdint(3)
    );
  rdint_4 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rdint_4_and0000,
      D => rdint_4_and0001,
      G => rdint_cmp_le0000,
      PRE => rdint_4_and0001,
      Q => rdint(4)
    );
  rdint_5 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rdint_5_and0000,
      D => rdint_5_and0001,
      G => rdint_cmp_le0000,
      PRE => rdint_5_and0001,
      Q => rdint(5)
    );
  rs2int_0 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs2int_0_and0000,
      D => rs2_0_IBUF_103,
      G => rs2int_cmp_le0000,
      PRE => rs2int_0_and0001,
      Q => rs2int(0)
    );
  rs2int_1 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs2int_1_and0000,
      D => rs2_1_IBUF_104,
      G => rs2int_cmp_le0000,
      PRE => rs2int_1_and0001,
      Q => rs2int(1)
    );
  rs2int_2 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs2int_2_and0000,
      D => rs2_2_IBUF_105,
      G => rs2int_cmp_le0000,
      PRE => rs2int_2_and0001,
      Q => rs2int(2)
    );
  rs2int_3 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs2int_3_and0000,
      D => rs2_3_IBUF_106,
      G => rs2int_cmp_le0000,
      PRE => rs2_3_IBUF_106,
      Q => rs2int(3)
    );
  rs2int_4 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs2int_4_and0000,
      D => rs2int_4_and0001,
      G => rs2int_cmp_le0000,
      PRE => rs2int_4_and0001,
      Q => rs2int(4)
    );
  rs2int_5 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs2int_5_and0000,
      D => rs2int_5_and0001,
      G => rs2int_cmp_le0000,
      PRE => rs2int_5_and0001,
      Q => rs2int(5)
    );
  rs1int_0 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs1int_0_and0000,
      D => rs1_0_IBUF_75,
      G => rs1int_cmp_le0000,
      PRE => rs1int_0_and0001,
      Q => rs1int(0)
    );
  rs1int_1 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs1int_1_and0000,
      D => rs1_1_IBUF_76,
      G => rs1int_cmp_le0000,
      PRE => rs1int_1_and0001,
      Q => rs1int(1)
    );
  rs1int_2 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs1int_2_and0000,
      D => rs1_2_IBUF_77,
      G => rs1int_cmp_le0000,
      PRE => rs1int_2_and0001,
      Q => rs1int(2)
    );
  rs1int_3 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs1int_3_and0000,
      D => rs1_3_IBUF_78,
      G => rs1int_cmp_le0000,
      PRE => rs1_3_IBUF_78,
      Q => rs1int(3)
    );
  rs1int_4 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs1int_4_and0000,
      D => rs1int_4_and0001,
      G => rs1int_cmp_le0000,
      PRE => rs1int_4_and0001,
      Q => rs1int(4)
    );
  rs1int_5 : LDCP
    generic map(
      INIT => '0'
    )
    port map (
      CLR => rs1int_5_and0000,
      D => rs1int_5_and0001,
      G => rs1int_cmp_le0000,
      PRE => rs1int_5_and0001,
      Q => rs1int(5)
    );
  rs2int_cmp_le00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rs2_4_IBUF_107,
      I1 => rs2_3_IBUF_106,
      O => rs2int_cmp_le0000
    );
  rs2int_3_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rs2_3_IBUF_106,
      I1 => rs2_4_IBUF_107,
      O => rs2int_3_and0000
    );
  rs1int_cmp_le00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rs1_4_IBUF_79,
      I1 => rs1_3_IBUF_78,
      O => rs1int_cmp_le0000
    );
  rs1int_3_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rs1_3_IBUF_78,
      I1 => rs1_4_IBUF_79,
      O => rs1int_3_and0000
    );
  rdint_cmp_le00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_4_IBUF_51,
      I1 => rd_3_IBUF_50,
      O => rdint_cmp_le0000
    );
  rdint_3_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => rd_3_IBUF_50,
      I1 => rd_4_IBUF_51,
      O => rdint_3_and0000
    );
  aux_cmp_eq00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => op_0_IBUF_40,
      I1 => op_1_IBUF_41,
      O => aux_cmp_eq0000
    );
  rs2int_2_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rs2_2_IBUF_105,
      I1 => rs2_3_IBUF_106,
      I2 => rs2_4_IBUF_107,
      O => rs2int_2_and0001
    );
  rs2int_2_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rs2_2_IBUF_105,
      I1 => rs2_3_IBUF_106,
      I2 => rs2_4_IBUF_107,
      O => rs2int_2_and0000
    );
  rs2int_1_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rs2_1_IBUF_104,
      I1 => rs2_3_IBUF_106,
      I2 => rs2_4_IBUF_107,
      O => rs2int_1_and0001
    );
  rs2int_1_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rs2_1_IBUF_104,
      I1 => rs2_3_IBUF_106,
      I2 => rs2_4_IBUF_107,
      O => rs2int_1_and0000
    );
  rs2int_0_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rs2_0_IBUF_103,
      I1 => rs2_3_IBUF_106,
      I2 => rs2_4_IBUF_107,
      O => rs2int_0_and0001
    );
  rs2int_0_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rs2_0_IBUF_103,
      I1 => rs2_3_IBUF_106,
      I2 => rs2_4_IBUF_107,
      O => rs2int_0_and0000
    );
  rs1int_2_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rs1_2_IBUF_77,
      I1 => rs1_3_IBUF_78,
      I2 => rs1_4_IBUF_79,
      O => rs1int_2_and0001
    );
  rs1int_2_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rs1_2_IBUF_77,
      I1 => rs1_3_IBUF_78,
      I2 => rs1_4_IBUF_79,
      O => rs1int_2_and0000
    );
  rs1int_1_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rs1_1_IBUF_76,
      I1 => rs1_3_IBUF_78,
      I2 => rs1_4_IBUF_79,
      O => rs1int_1_and0001
    );
  rs1int_1_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rs1_1_IBUF_76,
      I1 => rs1_3_IBUF_78,
      I2 => rs1_4_IBUF_79,
      O => rs1int_1_and0000
    );
  rs1int_0_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rs1_0_IBUF_75,
      I1 => rs1_3_IBUF_78,
      I2 => rs1_4_IBUF_79,
      O => rs1int_0_and0001
    );
  rs1int_0_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rs1_0_IBUF_75,
      I1 => rs1_3_IBUF_78,
      I2 => rs1_4_IBUF_79,
      O => rs1int_0_and0000
    );
  rdint_2_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rd_2_IBUF_49,
      I1 => rd_3_IBUF_50,
      I2 => rd_4_IBUF_51,
      O => rdint_2_and0001
    );
  rdint_2_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rd_2_IBUF_49,
      I1 => rd_3_IBUF_50,
      I2 => rd_4_IBUF_51,
      O => rdint_2_and0000
    );
  rdint_1_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rd_1_IBUF_48,
      I1 => rd_3_IBUF_50,
      I2 => rd_4_IBUF_51,
      O => rdint_1_and0001
    );
  rdint_1_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rd_1_IBUF_48,
      I1 => rd_3_IBUF_50,
      I2 => rd_4_IBUF_51,
      O => rdint_1_and0000
    );
  rdint_0_and00011 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => rd_0_IBUF_47,
      I1 => rd_3_IBUF_50,
      I2 => rd_4_IBUF_51,
      O => rdint_0_and0001
    );
  rdint_0_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => rd_0_IBUF_47,
      I1 => rd_3_IBUF_50,
      I2 => rd_4_IBUF_51,
      O => rdint_0_and0000
    );
  rs2int_5_and000011 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rs2_4_IBUF_107,
      I1 => cwp_IBUF_6,
      I2 => rs2_3_IBUF_106,
      O => rs2int_5_and0000
    );
  rs2int_4_and000021 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => rs2_4_IBUF_107,
      I1 => cwp_IBUF_6,
      I2 => rs2_3_IBUF_106,
      O => rs2int_4_and0000
    );
  rs1int_5_and000011 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rs1_4_IBUF_79,
      I1 => cwp_IBUF_6,
      I2 => rs1_3_IBUF_78,
      O => rs1int_5_and0000
    );
  rs1int_4_and000021 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => rs1_4_IBUF_79,
      I1 => cwp_IBUF_6,
      I2 => rs1_3_IBUF_78,
      O => rs1int_4_and0000
    );
  rdint_5_and000011 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rd_4_IBUF_51,
      I1 => aux_0,
      I2 => rd_3_IBUF_50,
      O => rdint_5_and0000
    );
  rdint_4_and000021 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => rd_4_IBUF_51,
      I1 => aux_0,
      I2 => rd_3_IBUF_50,
      O => rdint_4_and0000
    );
  rs2int_5_and00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rs2_4_IBUF_107,
      I1 => rs2_3_IBUF_106,
      I2 => cwp_IBUF_6,
      O => rs2int_5_and0001
    );
  rs1int_5_and00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rs1_4_IBUF_79,
      I1 => rs1_3_IBUF_78,
      I2 => cwp_IBUF_6,
      O => rs1int_5_and0001
    );
  rdint_5_and00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rd_4_IBUF_51,
      I1 => rd_3_IBUF_50,
      I2 => aux_0,
      O => rdint_5_and0001
    );
  rs2int_4_and000111 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => rs2_4_IBUF_107,
      I1 => cwp_IBUF_6,
      I2 => rs2_3_IBUF_106,
      O => rs2int_4_and0001
    );
  rs1int_4_and000111 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => rs1_4_IBUF_79,
      I1 => cwp_IBUF_6,
      I2 => rs1_3_IBUF_78,
      O => rs1int_4_and0001
    );
  rdint_4_and000111 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => rd_4_IBUF_51,
      I1 => aux_0,
      I2 => rd_3_IBUF_50,
      O => rdint_4_and0001
    );
  aux_mux0002_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => op3_4_IBUF_36,
      I1 => op3_3_IBUF_35,
      I2 => op3_1_IBUF_33,
      I3 => op3_2_IBUF_34,
      O => N01
    );
  aux_mux0002 : LUT4
    generic map(
      INIT => X"FD08"
    )
    port map (
      I0 => op3_5_IBUF_37,
      I1 => op3_0_IBUF_32,
      I2 => N01,
      I3 => cwp_IBUF_6,
      O => aux_mux0002_4
    );
  cwp_IBUF : IBUF
    port map (
      I => cwp,
      O => cwp_IBUF_6
    );
  rs1_4_IBUF : IBUF
    port map (
      I => rs1(4),
      O => rs1_4_IBUF_79
    );
  rs1_3_IBUF : IBUF
    port map (
      I => rs1(3),
      O => rs1_3_IBUF_78
    );
  rs1_2_IBUF : IBUF
    port map (
      I => rs1(2),
      O => rs1_2_IBUF_77
    );
  rs1_1_IBUF : IBUF
    port map (
      I => rs1(1),
      O => rs1_1_IBUF_76
    );
  rs1_0_IBUF : IBUF
    port map (
      I => rs1(0),
      O => rs1_0_IBUF_75
    );
  rs2_4_IBUF : IBUF
    port map (
      I => rs2(4),
      O => rs2_4_IBUF_107
    );
  rs2_3_IBUF : IBUF
    port map (
      I => rs2(3),
      O => rs2_3_IBUF_106
    );
  rs2_2_IBUF : IBUF
    port map (
      I => rs2(2),
      O => rs2_2_IBUF_105
    );
  rs2_1_IBUF : IBUF
    port map (
      I => rs2(1),
      O => rs2_1_IBUF_104
    );
  rs2_0_IBUF : IBUF
    port map (
      I => rs2(0),
      O => rs2_0_IBUF_103
    );
  op_1_IBUF : IBUF
    port map (
      I => op(1),
      O => op_1_IBUF_41
    );
  op_0_IBUF : IBUF
    port map (
      I => op(0),
      O => op_0_IBUF_40
    );
  rd_4_IBUF : IBUF
    port map (
      I => rd(4),
      O => rd_4_IBUF_51
    );
  rd_3_IBUF : IBUF
    port map (
      I => rd(3),
      O => rd_3_IBUF_50
    );
  rd_2_IBUF : IBUF
    port map (
      I => rd(2),
      O => rd_2_IBUF_49
    );
  rd_1_IBUF : IBUF
    port map (
      I => rd(1),
      O => rd_1_IBUF_48
    );
  rd_0_IBUF : IBUF
    port map (
      I => rd(0),
      O => rd_0_IBUF_47
    );
  op3_5_IBUF : IBUF
    port map (
      I => op3(5),
      O => op3_5_IBUF_37
    );
  op3_4_IBUF : IBUF
    port map (
      I => op3(4),
      O => op3_4_IBUF_36
    );
  op3_3_IBUF : IBUF
    port map (
      I => op3(3),
      O => op3_3_IBUF_35
    );
  op3_2_IBUF : IBUF
    port map (
      I => op3(2),
      O => op3_2_IBUF_34
    );
  op3_1_IBUF : IBUF
    port map (
      I => op3(1),
      O => op3_1_IBUF_33
    );
  op3_0_IBUF : IBUF
    port map (
      I => op3(0),
      O => op3_0_IBUF_32
    );
  ncwp_OBUF : OBUF
    port map (
      I => aux_1_2,
      O => ncwp
    );
  nrs1_5_OBUF : OBUF
    port map (
      I => rs1int(5),
      O => nrs1(5)
    );
  nrs1_4_OBUF : OBUF
    port map (
      I => rs1int(4),
      O => nrs1(4)
    );
  nrs1_3_OBUF : OBUF
    port map (
      I => rs1int(3),
      O => nrs1(3)
    );
  nrs1_2_OBUF : OBUF
    port map (
      I => rs1int(2),
      O => nrs1(2)
    );
  nrs1_1_OBUF : OBUF
    port map (
      I => rs1int(1),
      O => nrs1(1)
    );
  nrs1_0_OBUF : OBUF
    port map (
      I => rs1int(0),
      O => nrs1(0)
    );
  nrs2_5_OBUF : OBUF
    port map (
      I => rs2int(5),
      O => nrs2(5)
    );
  nrs2_4_OBUF : OBUF
    port map (
      I => rs2int(4),
      O => nrs2(4)
    );
  nrs2_3_OBUF : OBUF
    port map (
      I => rs2int(3),
      O => nrs2(3)
    );
  nrs2_2_OBUF : OBUF
    port map (
      I => rs2int(2),
      O => nrs2(2)
    );
  nrs2_1_OBUF : OBUF
    port map (
      I => rs2int(1),
      O => nrs2(1)
    );
  nrs2_0_OBUF : OBUF
    port map (
      I => rs2int(0),
      O => nrs2(0)
    );
  nrd_5_OBUF : OBUF
    port map (
      I => rdint(5),
      O => nrd(5)
    );
  nrd_4_OBUF : OBUF
    port map (
      I => rdint(4),
      O => nrd(4)
    );
  nrd_3_OBUF : OBUF
    port map (
      I => rdint(3),
      O => nrd(3)
    );
  nrd_2_OBUF : OBUF
    port map (
      I => rdint(2),
      O => nrd(2)
    );
  nrd_1_OBUF : OBUF
    port map (
      I => rdint(1),
      O => nrd(1)
    );
  nrd_0_OBUF : OBUF
    port map (
      I => rdint(0),
      O => nrd(0)
    );
  aux_1 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => aux_mux0002_4,
      G => aux_cmp_eq0000,
      Q => aux_1_2
    );

end Structure;

