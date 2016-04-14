library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity comparador is
port
	(
		SW : in std_logic_vector(15 downto 0);
		M : out std_logic
	);
	
end entity;

architecture hardware of comparador is
begin

	M <= '1' when signed(SW(15 downto 12)) > "1001" else
             '1' when signed(SW(11 downto 8)) > "1001" else
 	     '1' when signed(SW(7 downto 4)) > "1001" else
		  '1' when signed(SW(3 downto 0)) > "1001" else
		  '0';
		  
end hardware;
