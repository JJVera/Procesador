--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:15:07 10/26/2016
-- Design Name:   
-- Module Name:   C:/Users/Vera96/Desktop/Arquitectura/ProcesadorFour/tb_Procesador.vhd
-- Project Name:  ProcesadorFour
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Procesador
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
 
ENTITY tb_Procesador IS
END tb_Procesador;
 
ARCHITECTURE behavior OF tb_Procesador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Procesador
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Hola1 : OUT  std_logic_vector(31 downto 0);
         Hola2 : OUT  std_logic_vector(31 downto 0);
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal Hola1 : std_logic_vector(31 downto 0);
   signal Hola2 : std_logic_vector(31 downto 0);
   signal AluResult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesador PORT MAP (
          Clk => Clk,
          Rst => Rst,
          Hola1 => Hola1,
          Hola2 => Hola2,
          AluResult => AluResult
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Rst <= '1';
      wait for 20 ns;	
		Rst <= '0';
      wait;
   end process;

END;
