--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:26:14 10/04/2016
-- Design Name:   
-- Module Name:   C:/Users/JArango/Desktop/Arquitectura/SUM/tb_SUM.vhd
-- Project Name:  SUM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SUM
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
 
ENTITY tb_SUM IS
END tb_SUM;
 
ARCHITECTURE behavior OF tb_SUM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SUM
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         S : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SUM PORT MAP (
          A => A,
          B => B,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
		A <= "00000000000000000000010000000000";
		B <= "00000000000000000000000000000000";
      wait for 100 ns;	

		A <= "00000000000000000000010000000000";
		B <= "00000000010000000000000000000000";
      wait for 100 ns;
		
		A <= "10000000000000000000010000000000";
		B <= "10000000000000000000000000000000";
      wait;
   end process;

END;
