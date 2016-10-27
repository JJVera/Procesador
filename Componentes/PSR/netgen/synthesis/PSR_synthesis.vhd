--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PSR_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 21 14:39:42 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PSR -w -dir netgen/synthesis -ofmt vhdl -sim PSR.ngc PSR_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: PSR.ngc
-- Output file	: D:\Arquitectura\Componentes\PSR\netgen\synthesis\PSR_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PSR
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

entity PSR is
  port (
    Clk : in STD_LOGIC := 'X'; 
    Carry : out STD_LOGIC; 
    cwp : out STD_LOGIC; 
    ncwp : in STD_LOGIC := 'X'; 
    NZVC : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end PSR;

architecture Structure of PSR is
  signal Carry_OBUF1_1 : STD_LOGIC; 
  signal Clk_BUFGP_3 : STD_LOGIC; 
  signal Mshreg_Carry_OBUF_4 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal NZVC_0_IBUF_7 : STD_LOGIC; 
  signal cwp_OBUF_9 : STD_LOGIC; 
  signal ncwp_IBUF_11 : STD_LOGIC; 
begin
  cwp_1 : FD
    port map (
      C => Clk_BUFGP_3,
      D => ncwp_IBUF_11,
      Q => cwp_OBUF_9
    );
  ncwp_IBUF : IBUF
    port map (
      I => ncwp,
      O => ncwp_IBUF_11
    );
  NZVC_0_IBUF : IBUF
    port map (
      I => NZVC(0),
      O => NZVC_0_IBUF_7
    );
  Carry_OBUF : OBUF
    port map (
      I => Carry_OBUF1_1,
      O => Carry
    );
  cwp_OBUF : OBUF
    port map (
      I => cwp_OBUF_9,
      O => cwp
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_3
    );
  XST_GND : GND
    port map (
      G => N2
    );
  Mshreg_Carry_OBUF : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N2,
      A1 => N2,
      A2 => N2,
      A3 => N2,
      CLK => Clk_BUFGP_3,
      D => NZVC_0_IBUF_7,
      Q => Mshreg_Carry_OBUF_4
    );
  Carry_OBUF1 : FD
    port map (
      C => Clk_BUFGP_3,
      D => Mshreg_Carry_OBUF_4,
      Q => Carry_OBUF1_1
    );

end Structure;

