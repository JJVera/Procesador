
-- VHDL Instantiation Created from source file PSR_Modifier.vhd -- 14:43:45 10/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSR_Modifier
	PORT(
		crs1 : IN std_logic_vector(31 downto 0);
		SalidaMux : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);
		AluResult : IN std_logic_vector(31 downto 0);          
		NZVC : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_PSR_Modifier: PSR_Modifier PORT MAP(
		crs1 => ,
		SalidaMux => ,
		AluOp => ,
		AluResult => ,
		NZVC => 
	);


