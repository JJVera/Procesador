--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:49:55 10/13/2016
-- Design Name:   
-- Module Name:   C:/Users/utp.CRIE/Desktop/Arquitectura/Procesadores/Primero/tb_Primero.vhd
-- Project Name:  Primero
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Primero
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
 
ENTITY tb_Primero IS
END tb_Primero;
 
ARCHITECTURE behavior OF tb_Primero IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Primero
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Hola : OUT  std_logic_vector(31 downto 0);
         Hi : OUT  std_logic_vector(31 downto 0);
         Olu : OUT  std_logic_vector(31 downto 0);
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Hola : std_logic_vector(31 downto 0);
   signal Hi : std_logic_vector(31 downto 0);
   signal Olu : std_logic_vector(31 downto 0);
   signal AluResult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Primero PORT MAP (
          Clk => Clk,
          Reset => Reset,
          Hola => Hola,
          Hi => Hi,
          Olu => Olu,
          AluResult => AluResult
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
		Reset <= '1';
		wait for 20 ns;
		Reset <= '0';
      wait;
   end process;

END;
