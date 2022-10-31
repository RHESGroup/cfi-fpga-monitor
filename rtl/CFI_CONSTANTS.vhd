library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package CFI_CONSTANTS is

	-----------------------------------------------------------------------------------
	-- 	TIMER THRESHOLD FOR DESTINATION LABEL ARRIVAL: 16 HCLK cycles 
	-----------------------------------------------------------------------------------
	
	constant TIMER_THRESHOLD : std_logic_vector(3 downto 0) := "0111";

	-----------------------------------------------------------------------------------
	-- 	OPCODES 
	-----------------------------------------------------------------------------------

	constant SRC 		: std_logic_vector(2 downto 0) := "000"; --0x00
	constant DST 		: std_logic_vector(2 downto 0) := "001"; --0x02 
	constant CALL 		: std_logic_vector(2 downto 0) := "010"; --0x04
	constant RET		: std_logic_vector(2 downto 0) := "011"; --0x06 
	constant INDCALL  	: std_logic_vector(2 downto 0) := "100"; --0x08
	constant SPUSH  	: std_logic_vector(2 downto 0) := "101"; --0x0A
	constant SPOP		: std_logic_vector(2 downto 0) := "110"; --0x0C




end CFI_CONSTANTS;
