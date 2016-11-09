----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:01 11/08/2016 
-- Design Name: 
-- Module Name:    Procesador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Procesador is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Salida : out  STD_LOGIC_VECTOR (31 downto 0);
           Hola : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador;

architecture Behavioral of Procesador is

	COMPONENT PC
	PORT(
		Rst : IN std_logic;
		Clk : IN std_logic;
		Datain : IN std_logic_vector(31 downto 0);          
		Dataout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT IM
	PORT(
		A : IN std_logic_vector(31 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Sumador
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Win_Man
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);
		cwp : IN std_logic;          
		ncwp : OUT std_logic;
		nrs1 : OUT std_logic_vector(5 downto 0);
		nrs2 : OUT std_logic_vector(5 downto 0);
		nrd : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT MUXC
	PORT(
		A : IN std_logic_vector(5 downto 0);
		B : IN std_logic_vector(5 downto 0);
		Sc : IN std_logic;          
		S : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT MUX
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		Sc : IN std_logic;          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT RegisterFile
	PORT(
		nRs1 : IN std_logic_vector(5 downto 0);
		nRs2 : IN std_logic_vector(5 downto 0);
		nRd : IN std_logic_vector(5 downto 0);
		Data : IN std_logic_vector(31 downto 0);
		WE : IN std_logic;
		Rst : IN std_logic;          
		CRS1 : OUT std_logic_vector(31 downto 0);
		CRS2 : OUT std_logic_vector(31 downto 0);
		CRD : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT SEU
	PORT(
		A : IN std_logic_vector(12 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT UnityControl
	PORT(
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);
		ICC : IN std_logic_vector(3 downto 0);
		Cond : IN std_logic_vector(3 downto 0);          
		EDM : OUT std_logic;
		Resource : OUT std_logic_vector(1 downto 0);
		WEMemory : OUT std_logic;
		WERegister : OUT std_logic;
		Aluop : OUT std_logic_vector(5 downto 0);
		RFDest : OUT std_logic;
		PCsource : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	COMPONENT SEU30
	PORT(
		A : IN std_logic_vector(29 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT SEUDisp
	PORT(
		Disp22 : IN std_logic_vector(21 downto 0);          
		Result : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PSR_Modifier
	PORT(
		crs1 : IN std_logic_vector(31 downto 0);
		SalidaMux : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);
		AluResult : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT PSR
	PORT(
		Clk : IN std_logic;
		NZVC : IN std_logic_vector(3 downto 0);
		ncwp : IN std_logic;          
		cwp : OUT std_logic;
		Carry : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT MUXF
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		C : IN std_logic_vector(31 downto 0);
		D : IN std_logic_vector(31 downto 0);
		Sc : IN std_logic_vector(1 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);
		carry : IN std_logic;          
		AluResult : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT DataMemory
	PORT(
		Clk : IN std_logic;
		Rst : IN std_logic;
		cRD : IN std_logic_vector(31 downto 0);
		SalidaAlu : IN std_logic_vector(31 downto 0);
		WRen : IN std_logic;
		RDen : IN std_logic;          
		Data : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

signal DirAnt, Dir, Adress, SalidaIM, SalidaAlu, ConRS1 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal DirSum, DirCall, DirBranch, NextDirBranch, NextDirCall : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal ConRd, DatatoReg, DatatoMem : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal ConRS2, SalidaSeu, SalidaMux : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal SalidaPSR, SalidaWin, SalidaPSRCarry, RFD, WERegister, WRenMen, RdEm : STD_LOGIC :=  '0';
signal AUXRd, AuxRS1, AuxRS2, nRd, EntradaAlu : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');
signal icc : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal PcSource, RFSource : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
	
begin
	nPc: PC PORT MAP(
		Rst => Rst,
		Clk => Clk,
		Datain => DirAnt,
		Dataout => Dir
	);

	Pc0: PC PORT MAP(
		Rst => Rst,
		Clk => Clk,
		Datain => Dir,
		Dataout => Adress
	);

	Inst_Sumador: Sumador PORT MAP(
		A => Dir,
		B => "00000000000000000000000000000001",
		S => DirSum
	);

	Inst_IM: IM PORT MAP(
		A => Adress,
		S => SalidaIM
	);
	
	Inst_SEUDisp: SEUDisp PORT MAP(
		Disp22 => SalidaIM(21 downto 0),
		Result => DirBranch
	);
	
	Inst_Sumador1: Sumador PORT MAP(
		A => DirBranch,
		B => DirSum,
		S => NextDirBranch
	);
	
	Inst_SEU30: SEU30 PORT MAP(
		A => SalidaIM(29 downto 0),
		S => DirCall
	);
	
	Inst_Sumador2: Sumador PORT MAP(
		A => DirCall,
		B => DirSum,
		S => NextDirCall
	);
	
	Inst_MUXF0: MUXF PORT MAP(
		A => NextDirCall,
		B => NextDirBranch,
		C => DirSum,
		D => SalidaAlu,
		Sc => PcSource,
		S => DirAnt
	);
	
	Inst_UnityControl: UnityControl PORT MAP(
		OP => SalidaIm(31 downto 30),
		OP3 => SalidaIm(24 downto 19),
		ICC => icc,
		Cond => SalidaIm(28 downto 25),
		EDM => RdEm,
		Resource => RFSource,
		WEMemory => WRenMen,
		WERegister => WERegister,
		Aluop => EntradaAlu,
		RFDest => RFD,
		PCsource => PcSource
	);

	Inst_Win_Man: Win_Man PORT MAP(
		rs1 => SalidaIm(18 downto 14),
		rs2 => SalidaIm(4 downto 0),
		rd => SalidaIm(29 downto 25),
		op => SalidaIm(31 downto 30),
		op3 => SalidaIm(24 downto 19),
		cwp => SalidaPSR,
		ncwp => SalidaWin,
		nrs1 => AUXRS1,
		nrs2 => AUXRS2,
		nrd => AUXRd 
	);
	
	Inst_MUXC: MUXC PORT MAP(
		A => AUXRd,
		B => "001111",
		Sc => RFD,
		S => nRd
	);
	
	Inst_RegisterFile: RegisterFile PORT MAP(
		nRs1 => AUXRS1,
		nRs2 => AUXRS2,
		nRd => nRd,
		Data => DatatoReg,
		WE => WERegister,
		Rst => Rst,
		CRS1 => ConRS1,
		CRS2 => ConRS2,
		CRD => ConRd
	);
	
	Inst_SEU: SEU PORT MAP(
		A => SalidaIM(12 downto 0),
		S => SalidaSeu
	);
	
	Inst_MUX: MUX PORT MAP(
		A => SalidaSeu,
		B => ConRd,
		Sc => SalidaIM(13),
		S => SalidaMux
	);
	
	Inst_PSR_Modifier: PSR_Modifier PORT MAP(
		crs1 => ConRS1,
		SalidaMux => SalidaMux,
		AluOp => EntradaAlu,
		AluResult => SalidaAlu,
		NZVC => icc
	);
	
	Inst_PSR: PSR PORT MAP(
		Clk => Clk,
		NZVC => icc,
		ncwp => SalidaWin,
		cwp => SalidaPSR,
		Carry => SalidaPSRCarry
	);
	
	Inst_ALU: ALU PORT MAP(
		A => ConRS1,
		B => SalidaMux,
		AluOp => EntradaAlu,
		carry => SalidaPSRCarry,
		AluResult => SalidaAlu
	);
	
	Inst_DataMemory: DataMemory PORT MAP(
		Clk => Clk,
		Rst => Rst,
		cRD => ConRd,
		SalidaAlu => SalidaAlu,
		WRen => WRenMen,
		RDen => RdEm,
		Data => DatatoMem
	);
	
	Inst_MUXF: MUXF PORT MAP(
		A => DatatoMem,
		B => SalidaAlu,
		C => Adress,
		D => "00000000000000000000000000000000",
		Sc => RFSource,
		S => DatatoReg
	);

	Salida <= DatatoReg;
end Behavioral;

