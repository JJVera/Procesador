--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:31:22 11/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Vera96/Desktop/Procesador/Componentes/MUXC/tb_MUXC.vhd
-- Project Name:  MUXC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUXC
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_MUXC IS
END tb_MUXC;
 
ARCHITECTURE behavior OF tb_MUXC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUXC
    PORT(
         A : IN  std_logic_vector(5 downto 0);
         B : IN  std_logic_vector(5 downto 0);
         Sc : IN  std_logic;
         S : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(5 downto 0) := (others => '0');
   signal B : std_logic_vector(5 downto 0) := (others => '0');
   signal Sc : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUXC PORT MAP (
          A => A,
          B => B,
          Sc => Sc,
          S => S
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
		A <= "000001";
		B <= "000100";
		Sc <= '0';
      wait for 20 ns;
		
		Sc <= '1';
		wait;
   end process;

END;
