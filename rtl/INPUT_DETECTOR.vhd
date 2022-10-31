library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CFI_CONSTANTS.all;

entity INPUT_DETECTOR is
	port(RST			: in std_logic;
		 CLK			: in std_logic;
		 ADDRESSBUS		: in std_logic_vector(5 downto 0);
		 DATABUS		: in std_logic_vector(15 downto 0);
		 NOE			: in std_logic;	
		 NWE			: in std_logic;		
		 NE1			: in std_logic;
		 INPUT_DETECTED	: out std_logic;	
		 OPCODE		  	: out std_logic_vector(2 downto 0);
		 DATAOUT		: out std_logic_vector(15 downto 0));
end INPUT_DETECTOR;

architecture BEHAVIORAL of INPUT_DETECTOR is

	-- FSM STATES
	type input_detector_state_type is (IDLE, WAIT_ADDSET, WAIT_DATAST);
	signal STATE : input_detector_state_type;

	--  INTERNAL SIGNAL TO TEMPORARY STORE THE OPCODE COMING FROM THE CPU
	signal OPC : std_logic_vector(2 downto 0);

begin

	process(CLK) 
	begin

		if(RST = '1') then
			STATE 			<= IDLE;
			OPC   			<= (others => '0');
			INPUT_DETECTED 	<= '0';
			OPCODE		  	<= (others => '0');
			DATAOUT		  	<= (others => '0');

		elsif(rising_edge(CLK)) then

			-- FSM behavior
			case STATE is
			
				when IDLE =>
					INPUT_DETECTED <= '0'; 
					if(NE1 = '0') then 
						STATE <= WAIT_ADDSET;
					end if;

				when WAIT_ADDSET => 
					if(NWE = '0') then
						OPC   <= ADDRESSBUS(2 downto 0);
						STATE <= WAIT_DATAST;	
					else
						STATE <= WAIT_ADDSET;
					end if;

				when WAIT_DATAST =>
					if(NWE = '1') then
						INPUT_DETECTED	<= '1';
						OPCODE 			<= OPC;
						DATAOUT			<= DATABUS;
						STATE 			<= IDLE;
					else
						STATE 	<= WAIT_DATAST;
					end if;

				when others =>
					STATE <= IDLE;

			end case;
		end if;
	end process; 

end BEHAVIORAL;







