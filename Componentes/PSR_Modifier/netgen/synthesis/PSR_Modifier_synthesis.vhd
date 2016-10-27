--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PSR_Modifier_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 21 15:12:45 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm PSR_Modifier -w -dir netgen/synthesis -ofmt vhdl -sim PSR_Modifier.ngc PSR_Modifier_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: PSR_Modifier.ngc
-- Output file	: D:\Arquitectura\Componentes\PSR_Modifier\netgen\synthesis\PSR_Modifier_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: PSR_Modifier
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

entity PSR_Modifier is
  port (
    NZVC : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    AluOp : in STD_LOGIC_VECTOR ( 5 downto 0 ); 
    SalidaMux : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    crs1 : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    AluResult : in STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end PSR_Modifier;

architecture Structure of PSR_Modifier is
  signal AluOp_0_IBUF_5 : STD_LOGIC; 
  signal AluOp_2_IBUF_6 : STD_LOGIC; 
  signal AluOp_3_IBUF_7 : STD_LOGIC; 
  signal AluOp_4_IBUF_8 : STD_LOGIC; 
  signal AluOp_5_IBUF_9 : STD_LOGIC; 
  signal AluResult_0_IBUF_42 : STD_LOGIC; 
  signal AluResult_10_IBUF_43 : STD_LOGIC; 
  signal AluResult_11_IBUF_44 : STD_LOGIC; 
  signal AluResult_12_IBUF_45 : STD_LOGIC; 
  signal AluResult_13_IBUF_46 : STD_LOGIC; 
  signal AluResult_14_IBUF_47 : STD_LOGIC; 
  signal AluResult_15_IBUF_48 : STD_LOGIC; 
  signal AluResult_16_IBUF_49 : STD_LOGIC; 
  signal AluResult_17_IBUF_50 : STD_LOGIC; 
  signal AluResult_18_IBUF_51 : STD_LOGIC; 
  signal AluResult_19_IBUF_52 : STD_LOGIC; 
  signal AluResult_1_IBUF_53 : STD_LOGIC; 
  signal AluResult_20_IBUF_54 : STD_LOGIC; 
  signal AluResult_21_IBUF_55 : STD_LOGIC; 
  signal AluResult_22_IBUF_56 : STD_LOGIC; 
  signal AluResult_23_IBUF_57 : STD_LOGIC; 
  signal AluResult_24_IBUF_58 : STD_LOGIC; 
  signal AluResult_25_IBUF_59 : STD_LOGIC; 
  signal AluResult_26_IBUF_60 : STD_LOGIC; 
  signal AluResult_27_IBUF_61 : STD_LOGIC; 
  signal AluResult_28_IBUF_62 : STD_LOGIC; 
  signal AluResult_29_IBUF_63 : STD_LOGIC; 
  signal AluResult_2_IBUF_64 : STD_LOGIC; 
  signal AluResult_30_IBUF_65 : STD_LOGIC; 
  signal AluResult_31_IBUF_66 : STD_LOGIC; 
  signal AluResult_3_IBUF_67 : STD_LOGIC; 
  signal AluResult_4_IBUF_68 : STD_LOGIC; 
  signal AluResult_5_IBUF_69 : STD_LOGIC; 
  signal AluResult_6_IBUF_70 : STD_LOGIC; 
  signal AluResult_7_IBUF_71 : STD_LOGIC; 
  signal AluResult_8_IBUF_72 : STD_LOGIC; 
  signal AluResult_9_IBUF_73 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal NZVC_0_83 : STD_LOGIC; 
  signal NZVC_0_mux0002 : STD_LOGIC; 
  signal NZVC_0_not0001 : STD_LOGIC; 
  signal NZVC_1_86 : STD_LOGIC; 
  signal NZVC_1_mux0002 : STD_LOGIC; 
  signal NZVC_2_88 : STD_LOGIC; 
  signal NZVC_2_mux0003 : STD_LOGIC; 
  signal NZVC_2_mux00032 : STD_LOGIC; 
  signal NZVC_3_108 : STD_LOGIC; 
  signal NZVC_3_mux0002 : STD_LOGIC; 
  signal SalidaMux_31_IBUF_111 : STD_LOGIC; 
  signal crs1_31_IBUF_113 : STD_LOGIC; 
  signal NZVC_2_mux0003_wg_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NZVC_2_mux0003_wg_lut : STD_LOGIC_VECTOR ( 8 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  NZVC_3 : LD
    port map (
      D => NZVC_3_mux0002,
      G => NZVC_0_not0001,
      Q => NZVC_3_108
    );
  NZVC_2 : LD
    port map (
      D => NZVC_2_mux0003,
      G => NZVC_0_not0001,
      Q => NZVC_2_88
    );
  NZVC_1 : LD
    port map (
      D => NZVC_1_mux0002,
      G => NZVC_0_not0001,
      Q => NZVC_1_86
    );
  NZVC_0 : LD
    port map (
      D => NZVC_0_mux0002,
      G => NZVC_0_not0001,
      Q => NZVC_0_83
    );
  NZVC_2_mux0003_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(0),
      O => NZVC_2_mux0003_wg_cy(0)
    );
  NZVC_2_mux0003_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_17_IBUF_50,
      I1 => AluResult_18_IBUF_51,
      I2 => AluResult_15_IBUF_48,
      I3 => AluResult_19_IBUF_52,
      O => NZVC_2_mux0003_wg_lut(1)
    );
  NZVC_2_mux0003_wg_cy_1_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(0),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(1),
      O => NZVC_2_mux0003_wg_cy(1)
    );
  NZVC_2_mux0003_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_1_IBUF_53,
      I1 => AluResult_20_IBUF_54,
      I2 => AluResult_14_IBUF_47,
      I3 => AluResult_21_IBUF_55,
      O => NZVC_2_mux0003_wg_lut(2)
    );
  NZVC_2_mux0003_wg_cy_2_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(1),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(2),
      O => NZVC_2_mux0003_wg_cy(2)
    );
  NZVC_2_mux0003_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_22_IBUF_56,
      I1 => AluResult_23_IBUF_57,
      I2 => AluResult_13_IBUF_46,
      I3 => AluResult_24_IBUF_58,
      O => NZVC_2_mux0003_wg_lut(3)
    );
  NZVC_2_mux0003_wg_cy_3_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(2),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(3),
      O => NZVC_2_mux0003_wg_cy(3)
    );
  NZVC_2_mux0003_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_25_IBUF_59,
      I1 => AluResult_26_IBUF_60,
      I2 => AluResult_12_IBUF_45,
      I3 => AluResult_27_IBUF_61,
      O => NZVC_2_mux0003_wg_lut(4)
    );
  NZVC_2_mux0003_wg_cy_4_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(3),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(4),
      O => NZVC_2_mux0003_wg_cy(4)
    );
  NZVC_2_mux0003_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_28_IBUF_62,
      I1 => AluResult_29_IBUF_63,
      I2 => AluResult_10_IBUF_43,
      I3 => AluResult_2_IBUF_64,
      O => NZVC_2_mux0003_wg_lut(5)
    );
  NZVC_2_mux0003_wg_cy_5_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(4),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(5),
      O => NZVC_2_mux0003_wg_cy(5)
    );
  NZVC_2_mux0003_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_30_IBUF_65,
      I1 => AluResult_31_IBUF_66,
      I2 => AluResult_0_IBUF_42,
      I3 => AluResult_3_IBUF_67,
      O => NZVC_2_mux0003_wg_lut(6)
    );
  NZVC_2_mux0003_wg_cy_6_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(5),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(6),
      O => NZVC_2_mux0003_wg_cy(6)
    );
  NZVC_2_mux0003_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => AluResult_4_IBUF_68,
      I1 => AluResult_5_IBUF_69,
      I2 => AluResult_11_IBUF_44,
      I3 => AluResult_6_IBUF_70,
      O => NZVC_2_mux0003_wg_lut(7)
    );
  NZVC_2_mux0003_wg_cy_7_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(6),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(7),
      O => NZVC_2_mux0003_wg_cy(7)
    );
  NZVC_2_mux0003_wg_lut_8_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => AluResult_7_IBUF_71,
      I1 => AluResult_8_IBUF_72,
      I2 => AluResult_9_IBUF_73,
      I3 => NZVC_0_not0001,
      O => NZVC_2_mux0003_wg_lut(8)
    );
  NZVC_2_mux0003_wg_cy_8_Q : MUXCY
    port map (
      CI => NZVC_2_mux0003_wg_cy(7),
      DI => N0,
      S => NZVC_2_mux0003_wg_lut(8),
      O => NZVC_2_mux0003
    );
  NZVC_1_mux0002111 : LUT3
    generic map(
      INIT => X"42"
    )
    port map (
      I0 => crs1_31_IBUF_113,
      I1 => AluOp_2_IBUF_6,
      I2 => AluResult_31_IBUF_66,
      O => N5
    );
  NZVC_0_mux000211 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => AluOp_2_IBUF_6,
      I1 => crs1_31_IBUF_113,
      I2 => AluResult_31_IBUF_66,
      O => N11
    );
  NZVC_0_mux000231 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => AluOp_5_IBUF_9,
      I1 => AluOp_3_IBUF_7,
      I2 => AluOp_4_IBUF_8,
      I3 => AluOp_0_IBUF_5,
      O => N8
    );
  NZVC_0_mux00021 : LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => N11,
      I1 => SalidaMux_31_IBUF_111,
      I2 => N8,
      I3 => N5,
      O => NZVC_0_mux0002
    );
  NZVC_1_mux00021 : LUT4
    generic map(
      INIT => X"80D0"
    )
    port map (
      I0 => SalidaMux_31_IBUF_111,
      I1 => N5,
      I2 => N8,
      I3 => N11,
      O => NZVC_1_mux0002
    );
  NZVC_3_mux00021 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => AluResult_31_IBUF_66,
      I1 => NZVC_0_not0001,
      O => NZVC_3_mux0002
    );
  AluOp_5_IBUF : IBUF
    port map (
      I => AluOp(5),
      O => AluOp_5_IBUF_9
    );
  AluOp_4_IBUF : IBUF
    port map (
      I => AluOp(4),
      O => AluOp_4_IBUF_8
    );
  AluOp_3_IBUF : IBUF
    port map (
      I => AluOp(3),
      O => AluOp_3_IBUF_7
    );
  AluOp_2_IBUF : IBUF
    port map (
      I => AluOp(2),
      O => AluOp_2_IBUF_6
    );
  AluOp_0_IBUF : IBUF
    port map (
      I => AluOp(0),
      O => AluOp_0_IBUF_5
    );
  SalidaMux_31_IBUF : IBUF
    port map (
      I => SalidaMux(31),
      O => SalidaMux_31_IBUF_111
    );
  crs1_31_IBUF : IBUF
    port map (
      I => crs1(31),
      O => crs1_31_IBUF_113
    );
  AluResult_31_IBUF : IBUF
    port map (
      I => AluResult(31),
      O => AluResult_31_IBUF_66
    );
  AluResult_30_IBUF : IBUF
    port map (
      I => AluResult(30),
      O => AluResult_30_IBUF_65
    );
  AluResult_29_IBUF : IBUF
    port map (
      I => AluResult(29),
      O => AluResult_29_IBUF_63
    );
  AluResult_28_IBUF : IBUF
    port map (
      I => AluResult(28),
      O => AluResult_28_IBUF_62
    );
  AluResult_27_IBUF : IBUF
    port map (
      I => AluResult(27),
      O => AluResult_27_IBUF_61
    );
  AluResult_26_IBUF : IBUF
    port map (
      I => AluResult(26),
      O => AluResult_26_IBUF_60
    );
  AluResult_25_IBUF : IBUF
    port map (
      I => AluResult(25),
      O => AluResult_25_IBUF_59
    );
  AluResult_24_IBUF : IBUF
    port map (
      I => AluResult(24),
      O => AluResult_24_IBUF_58
    );
  AluResult_23_IBUF : IBUF
    port map (
      I => AluResult(23),
      O => AluResult_23_IBUF_57
    );
  AluResult_22_IBUF : IBUF
    port map (
      I => AluResult(22),
      O => AluResult_22_IBUF_56
    );
  AluResult_21_IBUF : IBUF
    port map (
      I => AluResult(21),
      O => AluResult_21_IBUF_55
    );
  AluResult_20_IBUF : IBUF
    port map (
      I => AluResult(20),
      O => AluResult_20_IBUF_54
    );
  AluResult_19_IBUF : IBUF
    port map (
      I => AluResult(19),
      O => AluResult_19_IBUF_52
    );
  AluResult_18_IBUF : IBUF
    port map (
      I => AluResult(18),
      O => AluResult_18_IBUF_51
    );
  AluResult_17_IBUF : IBUF
    port map (
      I => AluResult(17),
      O => AluResult_17_IBUF_50
    );
  AluResult_16_IBUF : IBUF
    port map (
      I => AluResult(16),
      O => AluResult_16_IBUF_49
    );
  AluResult_15_IBUF : IBUF
    port map (
      I => AluResult(15),
      O => AluResult_15_IBUF_48
    );
  AluResult_14_IBUF : IBUF
    port map (
      I => AluResult(14),
      O => AluResult_14_IBUF_47
    );
  AluResult_13_IBUF : IBUF
    port map (
      I => AluResult(13),
      O => AluResult_13_IBUF_46
    );
  AluResult_12_IBUF : IBUF
    port map (
      I => AluResult(12),
      O => AluResult_12_IBUF_45
    );
  AluResult_11_IBUF : IBUF
    port map (
      I => AluResult(11),
      O => AluResult_11_IBUF_44
    );
  AluResult_10_IBUF : IBUF
    port map (
      I => AluResult(10),
      O => AluResult_10_IBUF_43
    );
  AluResult_9_IBUF : IBUF
    port map (
      I => AluResult(9),
      O => AluResult_9_IBUF_73
    );
  AluResult_8_IBUF : IBUF
    port map (
      I => AluResult(8),
      O => AluResult_8_IBUF_72
    );
  AluResult_7_IBUF : IBUF
    port map (
      I => AluResult(7),
      O => AluResult_7_IBUF_71
    );
  AluResult_6_IBUF : IBUF
    port map (
      I => AluResult(6),
      O => AluResult_6_IBUF_70
    );
  AluResult_5_IBUF : IBUF
    port map (
      I => AluResult(5),
      O => AluResult_5_IBUF_69
    );
  AluResult_4_IBUF : IBUF
    port map (
      I => AluResult(4),
      O => AluResult_4_IBUF_68
    );
  AluResult_3_IBUF : IBUF
    port map (
      I => AluResult(3),
      O => AluResult_3_IBUF_67
    );
  AluResult_2_IBUF : IBUF
    port map (
      I => AluResult(2),
      O => AluResult_2_IBUF_64
    );
  AluResult_1_IBUF : IBUF
    port map (
      I => AluResult(1),
      O => AluResult_1_IBUF_53
    );
  AluResult_0_IBUF : IBUF
    port map (
      I => AluResult(0),
      O => AluResult_0_IBUF_42
    );
  NZVC_3_OBUF : OBUF
    port map (
      I => NZVC_3_108,
      O => NZVC(3)
    );
  NZVC_2_OBUF : OBUF
    port map (
      I => NZVC_2_88,
      O => NZVC(2)
    );
  NZVC_1_OBUF : OBUF
    port map (
      I => NZVC_1_86,
      O => NZVC(1)
    );
  NZVC_0_OBUF : OBUF
    port map (
      I => NZVC_0_83,
      O => NZVC(0)
    );
  NZVC_2_mux0003_wg_lut_0_INV_0 : INV
    port map (
      I => AluResult_16_IBUF_49,
      O => NZVC_2_mux0003_wg_lut(0)
    );
  NZVC_2_mux000321 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => AluOp_0_IBUF_5,
      I1 => AluOp_2_IBUF_6,
      I2 => AluOp_3_IBUF_7,
      I3 => AluOp_4_IBUF_8,
      O => NZVC_2_mux00032
    );
  NZVC_2_mux00032_f5 : MUXF5
    port map (
      I0 => NZVC_2_mux00032,
      I1 => N0,
      S => AluOp_5_IBUF_9,
      O => NZVC_0_not0001
    );

end Structure;

