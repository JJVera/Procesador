
-- VHDL Instantiation Created from source file UnityControl.vhd -- 17:35:40 11/08/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_UnityControl: UnityControl PORT MAP(
		OP => ,
		OP3 => ,
		ICC => ,
		Cond => ,
		EDM => ,
		Resource => ,
		WEMemory => ,
		WERegister => ,
		Aluop => ,
		RFDest => ,
		PCsource => 
	);


