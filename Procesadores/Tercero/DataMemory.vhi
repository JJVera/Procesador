
-- VHDL Instantiation Created from source file DataMemory.vhd -- 16:30:51 11/08/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_DataMemory: DataMemory PORT MAP(
		Clk => ,
		Rst => ,
		cRD => ,
		SalidaAlu => ,
		WRen => ,
		RDen => ,
		Data => 
	);


