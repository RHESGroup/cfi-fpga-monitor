library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.CFI_CONSTANTS.all;

entity CFI_FPGA_TOP is
	port(	
			cpu_fpga_bus_a		: in std_logic_vector(5 downto 0);
			cpu_fpga_bus_d		: in std_logic_vector(15 downto 0);
			cpu_fpga_bus_noe    : in std_logic;	
			cpu_fpga_bus_nwe    : in std_logic;		
			cpu_fpga_bus_ne1    : in std_logic;		
			cpu_fpga_clk		: in std_logic;
			cpu_fpga_int_n      : out std_logic;
			cpu_fpga_rst		: in std_logic
			-- comment if debug via LED is not required
			--;fpga_io_gp			: out std_logic_vector(7 downto 0)
		);
end CFI_FPGA_TOP;

architecture STRUCTURAL of CFI_FPGA_TOP is

	-----------------------------------------------------------------------------------
	-- 	TIMER  
	-----------------------------------------------------------------------------------
	signal TIMER_CE : std_logic;
	signal TIMER_RST : std_logic;
	signal TIMER_REGIN : std_logic_vector(3 downto 0);
	signal TIMER_REGOUT : std_logic_vector(3 downto 0);
	signal TIMEOUT : std_logic;
	-----------------------------------------------------------------------------------
	-- 	INPUT DETECTOR  
	-----------------------------------------------------------------------------------
	signal OPCODE : std_logic_vector(2 downto 0);
	signal INPUT_DETECTED : std_logic;
	signal ID_DATAOUT : std_logic_vector(15 downto 0);
	signal SRC_LABEL_REG_CE : std_logic;
	signal SRC_LABEL_REGOUT : std_logic_vector(12 downto 0);
	signal INPUT_REG_CE : std_logic;
	signal INPUT_REGOUT : std_logic_vector(15 downto 0);
	-----------------------------------------------------------------------------------
	-- 	SECURE EDGE TABLE  
	-----------------------------------------------------------------------------------
	signal SECURE_EDGE_TABLE_CE : std_logic;
	signal SECURE_EDGE : std_logic_vector(12 downto 0);
	signal SECURE_EDGE_REGOUT : std_logic_vector(12 downto 0);
	signal SECURE_EDGE_TABLE_OUT : std_logic_vector(15 downto 0);
	signal SECURE_EDGE_TABLE_REGOUT : std_logic_vector(15 downto 0);
	signal IS_EDGE : std_logic;
	signal EDGE_VALID : std_logic;
	-----------------------------------------------------------------------------------
	-- 	SECURE LABEL STACK  
	-----------------------------------------------------------------------------------
	signal SECURE_LABEL_STACK_PTR_CE : std_logic;
	signal SECURE_LABEL_STACK_PTR_MUXOUT : std_logic_vector(9 downto 0);
	signal SECURE_LABEL_STACK_PTR_OUT : std_logic_vector(9 downto 0);
	signal SECURE_LABEL_STACK_PTR_INCOUT : std_logic_vector(9 downto 0);
	signal SECURE_LABEL_STACK_PTR_DECOUT : std_logic_vector(9 downto 0);
	signal SECURE_LABEL_STACK_PTR_INC_DEC : std_logic;
	signal SECURE_LABEL_STACK_CE : std_logic;
	signal SECURE_LABEL_STACK_WE : std_logic;
	signal SECURE_LABEL_STACK_OUT : std_logic_vector(15 downto 0);
	signal SECURE_LABEL_STACK_REGOUT : std_logic_vector(15 downto 0);
	signal RETURN_VALID : std_logic;
	-----------------------------------------------------------------------------------
	-- 	SECURE REGISTER STACK  
	-----------------------------------------------------------------------------------
	signal SECURE_REGISTER_STACK_PTR_CE : std_logic;
	signal SECURE_REGISTER_STACK_PTR_MUXOUT : std_logic_vector(9 downto 0);
	signal SECURE_REGISTER_STACK_PTR_OUT : std_logic_vector(9 downto 0);
	signal SECURE_REGISTER_STACK_PTR_INCOUT : std_logic_vector(9 downto 0);
	signal SECURE_REGISTER_STACK_PTR_DECOUT : std_logic_vector(9 downto 0);
	signal SECURE_REGISTER_STACK_PTR_INC_DEC : std_logic;
	signal SECURE_REGISTER_STACK_CE : std_logic;
	signal SECURE_REGISTER_STACK_WE : std_logic;
	signal SECURE_REGISTER_STACK_OUT : std_logic_vector(15 downto 0);
	signal SECURE_REGISTER_STACK_REGOUT : std_logic_vector(15 downto 0);
	signal REGISTER_VALID : std_logic;
	-----------------------------------------------------------------------------------



begin



	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- 	CFI CONTROL UNIT 
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	CU : entity work.CFI_CONTROL_UNIT port map(cpu_fpga_rst,								
											   cpu_fpga_clk,								
											   cpu_fpga_int_n, 							
											   TIMER_CE,							
											   TIMER_RST,							
											   SRC_LABEL_REG_CE,					
											   INPUT_REG_CE,						
											   SECURE_EDGE_TABLE_CE,				
											   SECURE_LABEL_STACK_PTR_INC_DEC, 		
											   SECURE_LABEL_STACK_PTR_CE, 			
											   SECURE_LABEL_STACK_CE,				
											   SECURE_LABEL_STACK_WE,				
											   SECURE_REGISTER_STACK_PTR_INC_DEC, 
											   SECURE_REGISTER_STACK_PTR_CE, 		
											   SECURE_REGISTER_STACK_CE,			
											   SECURE_REGISTER_STACK_WE,			
											   TIMEOUT,								
											   OPCODE,								
											   INPUT_DETECTED,						
											   IS_EDGE,								
											   EDGE_VALID,							
											   RETURN_VALID,						
											   REGISTER_VALID);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- 	TIMER  
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	TIMER_REG : entity work.REGISTER_GENERIC generic map(4) port map(TIMER_RST, cpu_fpga_clk, TIMER_CE, TIMER_REGIN, TIMER_REGOUT);  
	TIMER_INC : entity work.ADDER_GENERIC generic map(4) port map(TIMER_REGOUT, "0001", TIMER_REGIN);
	TIMER_CMP : entity work.COMP_EQUAL_GENERIC generic map(4) port map(TIMER_REGOUT, TIMER_THRESHOLD, TIMEOUT);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- 	INPUT DETECTOR  
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	ID : entity work.INPUT_DETECTOR	port map(cpu_fpga_rst, 
											 cpu_fpga_clk, 
											 cpu_fpga_bus_a, 
											 cpu_fpga_bus_d, 
											 cpu_fpga_bus_noe, 
											 cpu_fpga_bus_nwe,
											 cpu_fpga_bus_ne1,
											 INPUT_DETECTED,
											 OPCODE,
											 ID_DATAOUT);
	SRC_LABEL_REG : entity work.REGISTER_GENERIC generic map(13) port map(cpu_fpga_rst, cpu_fpga_clk, SRC_LABEL_REG_CE, ID_DATAOUT(12 downto 0), SRC_LABEL_REGOUT);  
	INPUT_REG : entity work.REGISTER_GENERIC generic map(16) port map(cpu_fpga_rst, cpu_fpga_clk, INPUT_REG_CE, ID_DATAOUT, INPUT_REGOUT);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- 	SECURE EDGE TABLE  
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	SECURE_EDGE <= SRC_LABEL_REGOUT xor INPUT_REGOUT(12 downto 0);
	SECURE_EDGE_REG : entity work.REGISTER_GENERIC generic map(13) port map(cpu_fpga_rst, cpu_fpga_clk, '1', SECURE_EDGE, SECURE_EDGE_REGOUT);
	SECURE_EDGE_TABLE : entity work.ROM_16x8192 port map(SECURE_EDGE_REGOUT, cpu_fpga_clk, SECURE_EDGE_TABLE_CE, cpu_fpga_rst, SECURE_EDGE_TABLE_OUT);
	SECURE_EDGE_TABLE_REG : entity work.REGISTER_GENERIC generic map(16) port map(cpu_fpga_rst, cpu_fpga_clk, '1', SECURE_EDGE_TABLE_OUT, SECURE_EDGE_TABLE_REGOUT);
	IS_EDGE <= SECURE_EDGE_TABLE_REGOUT(15);
	SECURE_EDGE_CMP : entity work.COMP_EQUAL_GENERIC generic map(13) port map(SRC_LABEL_REGOUT, SECURE_EDGE_TABLE_REGOUT(12 downto 0), EDGE_VALID); 
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- 	SECURE LABEL STACK  
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	SECURE_LABEL_STACK_PTR : entity work.REGISTER_GENERIC generic map(10) port map(cpu_fpga_rst, 
																				   cpu_fpga_clk, 
																				   SECURE_LABEL_STACK_PTR_CE, 
																				   SECURE_LABEL_STACK_PTR_MUXOUT, 
																				   SECURE_LABEL_STACK_PTR_OUT);
	SECURE_LABEL_STACK_PTR_INC : entity work.ADDER_GENERIC generic map(10) port map(SECURE_LABEL_STACK_PTR_OUT, "0000000001", SECURE_LABEL_STACK_PTR_INCOUT);
	SECURE_LABEL_STACK_PTR_DEC : entity work.ADDER_GENERIC generic map(10) port map(SECURE_LABEL_STACK_PTR_OUT, "1111111111", SECURE_LABEL_STACK_PTR_DECOUT);
	SECURE_LABEL_STACK_MUX : entity work.MUX21_GENERIC generic map(10) port map(SECURE_LABEL_STACK_PTR_INCOUT, 
																				SECURE_LABEL_STACK_PTR_DECOUT, 
																				SECURE_LABEL_STACK_PTR_INC_DEC, 
																				SECURE_LABEL_STACK_PTR_MUXOUT);
	SECURE_LABEL_STACK : entity work.RAM_DQ_16x1024 port map(cpu_fpga_clk, 
															 SECURE_LABEL_STACK_CE, 
															 cpu_fpga_rst, 
															 SECURE_LABEL_STACK_WE, 
															 SECURE_LABEL_STACK_PTR_OUT, 
															 INPUT_REGOUT,
															 SECURE_LABEL_STACK_OUT);
	SECURE_LABEL_STACK_REG : entity work.REGISTER_GENERIC generic map(16) port map(cpu_fpga_rst, cpu_fpga_clk, '1', SECURE_LABEL_STACK_OUT, SECURE_LABEL_STACK_REGOUT);
	SECURE_LABEL_STACK_CMP : entity work.COMP_EQUAL_GENERIC generic map(13) port map(SECURE_LABEL_STACK_REGOUT(12 downto 0), INPUT_REGOUT(12 downto 0), RETURN_VALID);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- 	SECURE REGISTER STACK  
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------
	SECURE_REGISTER_STACK_PTR : entity work.REGISTER_GENERIC generic map(10) port map(cpu_fpga_rst, 
																				 	  cpu_fpga_clk, 
																				  	  SECURE_REGISTER_STACK_PTR_CE, 
																				  	  SECURE_REGISTER_STACK_PTR_MUXOUT, 
																				  	  SECURE_REGISTER_STACK_PTR_OUT);
	SECURE_REGISTER_STACK_PTR_INC : entity work.ADDER_GENERIC generic map(10) port map(SECURE_REGISTER_STACK_PTR_OUT, "0000000001", SECURE_REGISTER_STACK_PTR_INCOUT);
	SECURE_REGISTER_STACK_PTR_DEC : entity work.ADDER_GENERIC generic map(10) port map(SECURE_REGISTER_STACK_PTR_OUT, "1111111111", SECURE_REGISTER_STACK_PTR_DECOUT);
	SECURE_REGISTER_STACK_MUX : entity work.MUX21_GENERIC generic map(10) port map(SECURE_REGISTER_STACK_PTR_INCOUT, 
																				   SECURE_REGISTER_STACK_PTR_DECOUT, 
																				   SECURE_REGISTER_STACK_PTR_INC_DEC,
																				   SECURE_REGISTER_STACK_PTR_MUXOUT);
	SECURE_REGISTER_STACK : entity work.RAM_DQ_16x1024 port map(cpu_fpga_clk, 
															 	SECURE_REGISTER_STACK_CE, 
															 	cpu_fpga_rst, 
															 	SECURE_REGISTER_STACK_WE, 
															 	SECURE_REGISTER_STACK_PTR_OUT, 
															 	INPUT_REGOUT,
															 	SECURE_REGISTER_STACK_OUT);
	SECURE_REGISTER_STACK_REG : entity work.REGISTER_GENERIC generic map(16) port map(cpu_fpga_rst, cpu_fpga_clk, '1', SECURE_REGISTER_STACK_OUT, SECURE_REGISTER_STACK_REGOUT);
	SECURE_REGISTER_STACK_CMP : entity work.COMP_EQUAL_GENERIC generic map(16) port map(SECURE_REGISTER_STACK_REGOUT, INPUT_REGOUT, REGISTER_VALID);
	-----------------------------------------------------------------------------------------------------------------------------------------------------------------





end STRUCTURAL;
