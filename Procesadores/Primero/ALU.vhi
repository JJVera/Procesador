
-- VHDL Instantiation Created from source file ALU.vhd -- 15:04:52 10/05/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		Sc : IN std_logic_vector(2 downto 0);          
		Result : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		A => ,
		B => ,
		Sc => ,
		Result => 
	);


