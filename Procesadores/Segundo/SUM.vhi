
-- VHDL Instantiation Created from source file SUM.vhd -- 14:44:00 10/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SUM
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);          
		S : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SUM: SUM PORT MAP(
		A => ,
		B => ,
		S => 
	);


