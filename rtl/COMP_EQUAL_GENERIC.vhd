library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity COMP_EQUAL_GENERIC is
	generic (N : integer := 32);
	port (A : IN std_logic_vector(N-1 downto 0);
		  B : IN std_logic_vector(N-1 downto 0);
		  EQ  : OUT std_logic); 
end COMP_EQUAL_GENERIC;

architecture BEHAVIORAL of COMP_EQUAL_GENERIC is
begin
	EQ <= '1' when A = B else '0';
end BEHAVIORAL;
