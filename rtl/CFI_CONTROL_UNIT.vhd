library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CFI_CONSTANTS.all;

entity CFI_CONTROL_UNIT is
	port(
		-- EXTERNAL INTERFACE
		RST									: in std_logic;
		CLK									: in std_logic;
		INTERRUPT 							: out std_logic;
		-- CONTROL SIGNALS
		TIMER_CE							: out std_logic;
		TIMER_RST							: out std_logic;
		SRC_LABEL_REG_CE					: out std_logic;
		INPUT_REG_CE						: out std_logic;
		SECURE_EDGE_TABLE_CE				: out std_logic;
		SECURE_LABEL_STACK_PTR_INC_DEC 		: out std_logic;
		SECURE_LABEL_STACK_PTR_CE 			: out std_logic;
		SECURE_LABEL_STACK_CE				: out std_logic;
		SECURE_LABEL_STACK_WE				: out std_logic;
		SECURE_REGISTER_STACK_PTR_INC_DEC 	: out std_logic;
		SECURE_REGISTER_STACK_PTR_CE 		: out std_logic;
		SECURE_REGISTER_STACK_CE			: out std_logic;
		SECURE_REGISTER_STACK_WE			: out std_logic;
		-- INPUTS
		TIMEOUT								: in std_logic;
		OPCODE								: in std_logic_vector(2 downto 0);
		INPUT_DETECTED						: in std_logic;
		IS_EDGE								: in std_logic;
		EDGE_VALID							: in std_logic;
		RETURN_VALID						: in std_logic;
		REGISTER_VALID						: in std_logic
		);
end CFI_CONTROL_UNIT;

architecture BEHAVIORAL of CFI_CONTROL_UNIT is

	type cfi_control_unit_statetype is (OFF, IDLE, OPERATE_1, OPERATE_2, OPERATE_3, OPERATE_4, VALIDATE, VIOLATION); 
	
	signal STATE : cfi_control_unit_statetype;

	signal CONTROL_WORD : std_logic_vector(11 downto 0);

	signal PROGRAM_VALID : std_logic;
															
	constant SRC_PROGRAM   : std_logic_vector(47 downto 0) := "100000000000" & "000000000000" & "000000000000" & "000000000000"; -- 1 cycle
	constant DST_PROGRAM   : std_logic_vector(47 downto 0) := "010000000001" & "000000000001" & "001000000001" & "001000000000"; -- 4 cycles
	constant LPUSH_PROGRAM : std_logic_vector(47 downto 0) := "010000000001" & "000001100001" & "000011100000" & "000000000000"; -- 3 cycles
	constant LPOP_PROGRAM  : std_logic_vector(47 downto 0) := "010110000001" & "000001000001" & "000001000000" & "000000000000"; -- 3 cycles
	constant RPUSH_PROGRAM : std_logic_vector(47 downto 0) := "010000000001" & "000000000111" & "000000001110" & "000000000000"; -- 3 cycles
	constant RPOP_PROGRAM  : std_logic_vector(47 downto 0) := "010000011001" & "000000000101" & "000000000100" & "000000000000"; -- 3 cycles

	signal MICROPROGRAM : std_logic_vector(47 downto 0);

	signal STATUS_WORD : std_logic_vector(3 downto 0);

	constant EDGE_VALID_MASK     : std_logic_vector(3 downto 0) := "0011";
	constant RETURN_VALID_MASK 	 : std_logic_vector(3 downto 0) := "0001";
	constant REGISTER_VALID_MASK : std_logic_vector(3 downto 0) := "1110";

	signal STATUS_MASK : std_logic_vector(3 downto 0);

	signal OP : std_logic_vector(2 downto 0);

begin

	SRC_LABEL_REG_CE					<= CONTROL_WORD(11);
	INPUT_REG_CE						<= CONTROL_WORD(10);
	SECURE_EDGE_TABLE_CE				<= CONTROL_WORD(9);
	SECURE_LABEL_STACK_PTR_INC_DEC 		<= CONTROL_WORD(8);
	SECURE_LABEL_STACK_PTR_CE 			<= CONTROL_WORD(7);
	SECURE_LABEL_STACK_CE				<= CONTROL_WORD(6);
	SECURE_LABEL_STACK_WE				<= CONTROL_WORD(5);
	SECURE_REGISTER_STACK_PTR_INC_DEC 	<= CONTROL_WORD(4);
	SECURE_REGISTER_STACK_PTR_CE 		<= CONTROL_WORD(3);
	SECURE_REGISTER_STACK_CE			<= CONTROL_WORD(2);
	SECURE_REGISTER_STACK_WE			<= CONTROL_WORD(1);
	PROGRAM_VALID						<= CONTROL_WORD(0);

	STATUS_WORD(3) <= IS_EDGE;
	STATUS_WORD(2) <= EDGE_VALID;
	STATUS_WORD(1) <= RETURN_VALID;
	STATUS_WORD(0) <= REGISTER_VALID;

	process(CLK)
	begin

		if(CLK = '1' and CLK'event) then
			if(RST = '1') then
				INTERRUPT <= '0';
				OP <= "111";
				TIMER_CE <= '0';
				TIMER_RST <= '1';
				CONTROL_WORD <= "000000000000";
				STATUS_MASK <= "1111";
				STATE <= IDLE;

			elsif(TIMEOUT = '1') then
				TIMER_CE <= '0';
				TIMER_RST <= '1';
				CONTROL_WORD <= "000000000000";
				INTERRUPT <= '1';
				STATE <= VIOLATION;
			
			else
	
				case STATE is 
				
					when OFF =>
						null;
		
					when IDLE =>
						STATE <= IDLE;
						if(INPUT_DETECTED = '1') then
							STATE <= OPERATE_1;
							case OPCODE is
								when SRC =>
									TIMER_CE <= '1';
									TIMER_RST <= '0';
									MICROPROGRAM <= SRC_PROGRAM;
									CONTROL_WORD <= SRC_PROGRAM(47 downto 36);
									STATUS_MASK <= "1111";
								when DST =>
									TIMER_CE <= '0';
									TIMER_RST <= '1';
									case OP is
										when SRC =>
											MICROPROGRAM <= DST_PROGRAM;
											CONTROL_WORD <= DST_PROGRAM(47 downto 36);
											STATUS_MASK <= EDGE_VALID_MASK; 
										when RET =>
											MICROPROGRAM <= LPOP_PROGRAM or DST_PROGRAM;
											CONTROL_WORD <= LPOP_PROGRAM(47 downto 36) or DST_PROGRAM(47 downto 36);
											STATUS_MASK <= RETURN_VALID_MASK; 
										when INDCALL =>
											MICROPROGRAM <= DST_PROGRAM;
											CONTROL_WORD <= DST_PROGRAM(47 downto 36);
											STATUS_MASK <= EDGE_VALID_MASK; 											
										when others =>
											TIMER_CE <= '0';
											TIMER_RST <= '1';
											CONTROL_WORD <= "000000000000";
											INTERRUPT <= '1';
											STATE <= VIOLATION;
									end case;
								when CALL =>
									MICROPROGRAM <= LPUSH_PROGRAM;
									CONTROL_WORD <= LPUSH_PROGRAM(47 downto 36);
									STATUS_MASK <= "1111";
								when RET =>
									TIMER_CE <= '1';
									TIMER_RST <= '0';
									MICROPROGRAM <= SRC_PROGRAM;
									CONTROL_WORD <= SRC_PROGRAM(47 downto 36);
									STATUS_MASK <= "1111";
								when INDCALL =>
									TIMER_CE <= '1';
									TIMER_RST <= '0';
									MICROPROGRAM <= LPUSH_PROGRAM or SRC_PROGRAM;
									CONTROL_WORD <= LPUSH_PROGRAM(47 downto 36) or SRC_PROGRAM(47 downto 36);
									STATUS_MASK <= "1111";
								when SPUSH =>
									MICROPROGRAM <= RPUSH_PROGRAM;
									CONTROL_WORD <= RPUSH_PROGRAM(47 downto 36);
									STATUS_MASK <= "1111";
								when SPOP =>
									MICROPROGRAM <= RPOP_PROGRAM;
									CONTROL_WORD <= RPOP_PROGRAM(47 downto 36);
									STATUS_MASK <= REGISTER_VALID_MASK;
								when others =>

							end case;
						end if;

					when OPERATE_1 =>
						if(PROGRAM_VALID = '1') then
							CONTROL_WORD <= MICROPROGRAM(35 downto 24);
							STATE <= OPERATE_2;
						else
							CONTROL_WORD <= "000000000000";
							if(STATUS_MASK = "1111") then
								OP <= OPCODE;
								STATE <= IDLE;
							else
								STATE <= VALIDATE;
							end if;
						end if;

					when OPERATE_2 =>
						if(PROGRAM_VALID = '1') then
							CONTROL_WORD <= MICROPROGRAM(23 downto 12);
							STATE <= OPERATE_3;
						else
							CONTROL_WORD <= "000000000000";
							if(STATUS_MASK = "1111") then
								OP <= OPCODE;
								STATE <= IDLE;
							else
								STATE <= VALIDATE;
							end if;
						end if;

					when OPERATE_3 =>
						if(PROGRAM_VALID = '1') then
							CONTROL_WORD <= MICROPROGRAM(11 downto 0);
							STATE <= OPERATE_4;
						else
							CONTROL_WORD <= "000000000000";
							if(STATUS_MASK = "1111") then
								OP <= OPCODE;
								STATE <= IDLE;
							else
								STATE <= VALIDATE;
							end if;
						end if;

					when OPERATE_4 =>
						CONTROL_WORD <= "000000000000";
						if(STATUS_MASK = "1111") then
							OP <= OPCODE;
							STATE <= IDLE;
						else
							STATE <= VALIDATE;
						end if;

					when VALIDATE =>
						OP <= OPCODE;
						CONTROL_WORD <= "000000000000";
						if((STATUS_WORD or STATUS_MASK) = "1111") then
							STATE <= IDLE;
						else
							TIMER_CE <= '0';
							TIMER_RST <= '1';
							CONTROL_WORD <= "000000000000";
							INTERRUPT <= '1';
							STATE <= VIOLATION;
						end if;	

					when VIOLATION =>
						null;

					when others =>
						STATE <= OFF;

				end case;

			end if;

		end if;

	end process;
	
end BEHAVIORAL;