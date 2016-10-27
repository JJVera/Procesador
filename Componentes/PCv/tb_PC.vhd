--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:26:17 09/30/2016
-- Design Name:   
-- Module Name:   D:/Arquitectura/Componentes/PC/tb_PC.vhd
-- Project Name:  PC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_PC IS
END tb_PC;
 
ARCHITECTURE behavior OF tb_PC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         A : IN  std_logic_vector(31 downto 0);
         S : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal A : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Clk => Clk,
          Rst => Rst,
          A => A,
          S => S
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '1';
		wait for Clk_period/2;
		Clk <= '0';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Rst <= '0';		
		A <= "00000000000000000000000000000100";
		wait for 20 ns;	
		
		A <= "00000000000000000000000000001000";
		wait for 20 ns;	
		
		A <= "00000000000000000000000000001100";
      wait;
   end process;

END;
