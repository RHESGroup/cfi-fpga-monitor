library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CFI_CONSTANTS.all;

entity TB_CFI_FPGA is
end TB_CFI_FPGA;

architecture TEST of TB_CFI_FPGA is 

	-- TIME CONSTANTS (COMING FROM SETTINGS OF SOFTWARE)
	constant HCLK_PERIOD 		 : time    := 5555 ps; -- 180 MHz
	constant PRESCALER			 : integer := 2;
	constant FPGA_CLK_PERIOD	 : time    := HCLK_PERIOD*PRESCALER;
	constant ADDRESS_SETUP_TIME	 : integer := 4;
	constant DATA_SETUP_TIME	 : integer := 4;	
		
	-- FPGA INTERFACE SIGNALS
	signal hclk		 : std_logic := '0';	
	signal fpga_clk  : std_logic := '0';
	signal reset     : std_logic := '0';
	signal data      : std_logic_vector(15 downto 0) := (others => '0');
	signal address   : std_logic_vector(5 downto 0)  := (others => '0');
	signal noe		 : std_logic := '0';
	signal nwe		 : std_logic := '1';
	signal ne1		 : std_logic := '1';
	signal interrupt : std_logic;
   
begin

 
   UUT: entity work.CFI_FPGA_TOP
   	--generic map(
   	--	ADDSET => ADDRESS_SETUP_TIME/PRESCALER,
   	--	DATAST => DATA_SETUP_TIME/PRESCALER
   	--)
   	port map(
   		cpu_fpga_bus_a   => address,
   		cpu_fpga_bus_d   => data,
   		cpu_fpga_bus_noe => noe,
   		cpu_fpga_bus_nwe => nwe,
   		cpu_fpga_bus_ne1 => ne1,
   		cpu_fpga_clk     => fpga_clk,
   		cpu_fpga_int_n   => interrupt,
   		cpu_fpga_rst     => reset
   	);
 
 
 
   pll_osc : process
   begin
		hclk <= '1';
		wait for HCLK_PERIOD/2;
		hclk <= '0';
		wait for HCLK_PERIOD/2;		
	end process;
	
	
	
	fpga_osc : process
	begin
		fpga_clk <= '1';
		wait for FPGA_CLK_PERIOD/2;
		fpga_clk <= '0';
		wait for FPGA_CLK_PERIOD/2;
	end process;
	
	
	
	reset <= '0', '1' after HCLK_PERIOD*2*PRESCALER, '0' after HCLK_PERIOD*4*PRESCALER;
	
	
	
	stimuli: process
		
		-- RESULT OF THE READING PROCEDURE
		variable result : std_logic_vector(15 downto 0) := (others => '0');
		
		-- R/W PROCEDURES EXECUTED BY THE MASTER (CPU THROUGH FMC) 
		procedure write(w_addr : in std_logic_vector(5 downto 0);
						w_data : in std_logic_vector(15 downto 0)) is
		begin
			ne1 <= '0';
			noe <= '1';
			nwe <= '1';
			address <= w_addr;
			wait for ADDRESS_SETUP_TIME*HCLK_PERIOD;
			nwe <= '0';
			data <= w_data;
			wait for DATA_SETUP_TIME*HCLK_PERIOD;
			nwe <= '1';
			wait for HCLK_PERIOD;
			ne1 <= '1';
			noe <= '0';
		end write;
	
		procedure read(r_addr : in std_logic_vector(5 downto 0)) is
		begin
			ne1 <= '0';
			noe <= '1';
			nwe <= '1';
			data <= (others => 'Z');
			address <= r_addr;
			wait for ADDRESS_SETUP_TIME*HCLK_PERIOD;
			noe <= '0'; 
			wait for  DATA_SETUP_TIME*HCLK_PERIOD;
			ne1 <= '1';
			noe <= '1';
			result := data;
		end read;
		
	begin
		
		wait for HCLK_PERIOD*23; -- random number of cc before starting
		--------------------------------------------------------------------------------------------------------------
		--------------------------------------------------------------------------------------------------------------
		-- 												TESTBENCH PROGRAMS

		-- These programs make use of the read()/write() procedures emulating the software in order to simulate one 
		-- of the possible scenario. 
		--------------------------------------------------------------------------------------------------------------
		--------------------------------------------------------------------------------------------------------------
		-- 											TESTBENCH PROGRAM N. 1 
		--------------------------------------------------------------------------------------------------------------
		-- Labels of the CFG

		-- L1  		0100011110010	08F2			
		-- L2  		0101011111101	0AFD
		-- L3  		0100101101111	096F
		-- L4  		0110010110110	0CB6
		-- L5  		0001001011111	02CF
		-- L6  		0000010010101	0095
		-- L7  		1000001101010	106A
		-- L8  		0011001011001	0659
		-- L9  		0011000001101	060D
		-- L10 		0011001101000	0668
		-- L11 		1001010100010	12A2
		-- L12 		1111111111101	1FFD
		-- L13 		0110110111010	0DBA
		-- L14 		1101101001111	1B4F
		-- L15 		0111111010000	0FD0

		-- Simple insecure branches (0-2)
		-- L1  --> L2 			0001000001111 	020F
		-- L8  --> L9   		0000001010100 	0054 
		-- L10 --> L11  		1010011001010 	14CA 

		-- Calls with insecure return (4-6-2)
		-- L3 <-- L4    		0010111011001	05D9
		-- L5 <--    			0111011101001	0E79
		-- L6 <--    			0110000100011	0C23
		-- L7 <--    			1110011011100 	1CDC

		-- Insecure calls with insecure return (8-2-6-2)
		-- L12 --> L13 			1001001000111	1247
		--     <-- L15 			1000000101101   102D
		-- L14 --> L13 			1011011110101	16F5
		--     <-- L15 			1010010011111	149F
		--------------------------------------------------------------------------------------------------------------

		write("000000", x"08F2");
		wait for 3*HCLK_PERIOD;
		write("000001", x"0AFD");
	
		--------------------------------------------------------------------------------------------------------------

		wait;
		
	end process;
end TEST;
