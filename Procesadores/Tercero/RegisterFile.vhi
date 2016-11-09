
-- VHDL Instantiation Created from source file RegisterFile.vhd -- 16:31:20 11/08/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_RegisterFile: RegisterFile PORT MAP(
		nRs1 => ,
		nRs2 => ,
		nRd => ,
		Data => ,
		WE => ,
		Rst => ,
		CRS1 => ,
		CRS2 => ,
		CRD => 
	);


