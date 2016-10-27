----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:59 09/30/2016 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           S : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

signal Counter : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";

begin

	process(Clk, Rst, A)
		begin
		if(Rst = '1') then
			S <= "00000000000000000000000000000000";
		elsif(rising_edge(Clk)) then
			S <= Counter;
			Counter <= A;
		end if;
	end process;

end Behavioral;

