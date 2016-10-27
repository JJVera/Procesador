
-- VHDL Instantiation Created from source file PC.vhd -- 14:43:28 10/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC
	PORT(
		Rst : IN std_logic;
		Clk : IN std_logic;
		Datain : IN std_logic_vector(31 downto 0);          
		Dataout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PC: PC PORT MAP(
		Rst => ,
		Clk => ,
		Datain => ,
		Dataout => 
	);


