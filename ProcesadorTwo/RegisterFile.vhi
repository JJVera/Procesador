
-- VHDL Instantiation Created from source file RegisterFile.vhd -- 14:43:54 10/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RegisterFile
	PORT(
		nrs1 : IN std_logic_vector(5 downto 0);
		nrs2 : IN std_logic_vector(5 downto 0);
		nrd : IN std_logic_vector(5 downto 0);
		Rst : IN std_logic;
		AluResult : IN std_logic_vector(31 downto 0);          
		crs1 : OUT std_logic_vector(31 downto 0);
		crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RegisterFile: RegisterFile PORT MAP(
		nrs1 => ,
		nrs2 => ,
		nrd => ,
		Rst => ,
		AluResult => ,
		crs1 => ,
		crs2 => 
	);


