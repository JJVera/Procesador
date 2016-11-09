
-- VHDL Instantiation Created from source file Win_Man.vhd -- 16:31:39 11/08/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_Win_Man: Win_Man PORT MAP(
		rs1 => ,
		rs2 => ,
		rd => ,
		op => ,
		op3 => ,
		cwp => ,
		ncwp => ,
		nrs1 => ,
		nrs2 => ,
		nrd => 
	);


