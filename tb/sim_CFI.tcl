vlib work

vcom -2008 -work work ../rtl/ADDER_GENERIC.vhd
vcom -2008 -work work ../rtl/MUX21_GENERIC.vhd
vcom -2008 -work work ../rtl/REGISTER_GENERIC.vhd
vcom -2008 -work work ../rtl/COMP_EQUAL_GENERIC.vhd 

vcom -2008 -work work ../rtl/RAM_DQ_16x1024/RAM_DQ_16x1024.vhd
vcom -2008 -work work ../rtl/ROM_16x8192/ROM_16x8192.vhd

vcom -2008 -work work ../rtl/CFI_CONSTANTS.vhd
vcom -2008 -work work ../rtl/INPUT_DETECTOR.vhd
vcom -2008 -work work ../rtl/CFI_CONTROL_UNIT.vhd
vcom -2008 -work work ../rtl/CFI_FPGA_TOP.vhd       
                                                                                                                   
vcom -2008 -work work TB_CFI_FPGA.vhd

vsim -t 100ps -voptargs=+acc work.TB_CFI_FPGA

# 	TOP
add wave -noupdate -group TOP TB_CFI_FPGA/hclk		
add wave -noupdate -group TOP TB_CFI_FPGA/fpga_clk 
add wave -noupdate -group TOP TB_CFI_FPGA/reset    
add wave -noupdate -group TOP TB_CFI_FPGA/data     
add wave -noupdate -group TOP TB_CFI_FPGA/address  
add wave -noupdate -group TOP TB_CFI_FPGA/noe		
add wave -noupdate -group TOP TB_CFI_FPGA/nwe		
add wave -noupdate -group TOP TB_CFI_FPGA/ne1		
add wave -noupdate -group TOP TB_CFI_FPGA/interrupt
add wave -noupdate -group TOP TB_CFI_FPGA/UUT/CU/STATE

# 	TIMER  
add wave -noupdate -group TIMER TB_CFI_FPGA/UUT/TIMER_RST 
add wave -noupdate -group TIMER TB_CFI_FPGA/UUT/TIMER_CE
add wave -noupdate -group TIMER TB_CFI_FPGA/UUT/TIMER_REGIN
add wave -noupdate -group TIMER TB_CFI_FPGA/UUT/TIMER_REGOUT 
add wave -noupdate -group TIMER TB_CFI_FPGA/UUT/TIMEOUT

# 	INPUT DETECTOR  
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/data     
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/address  
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/noe		
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/nwe		
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/ne1
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/UUT/OPCODE 
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/UUT/INPUT_DETECTED 
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/UUT/ID_DATAOUT 
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/UUT/ID/OPC
add wave -noupdate -group INPUT_DETECTOR TB_CFI_FPGA/UUT/ID/STATE

# 	SECURE EDGE TABLE  
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/SRC_LABEL_REG_CE 
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/SRC_LABEL_REGOUT 
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/INPUT_REG_CE 
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/INPUT_REGOUT 
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/SECURE_EDGE 
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/SECURE_EDGE_REGOUT
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/SECURE_EDGE_TABLE_OUT
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/SECURE_EDGE_TABLE_REGOUT
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/IS_EDGE 
add wave -noupdate -group SECURE_EDGE_TABLE TB_CFI_FPGA/UUT/EDGE_VALID 

# 	SECURE LABEL STACK  
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_PTR_CE 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_PTR_INC_DEC 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_PTR_OUT 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_CE 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_WE
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/INPUT_REG_CE  
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/INPUT_REGOUT 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_OUT 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/SECURE_LABEL_STACK_REGOUT 
add wave -noupdate -group SECURE_LABEL_STACK TB_CFI_FPGA/UUT/RETURN_VALID 

# 	SECURE REGISTER STACK  
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_PTR_CE 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_PTR_INC_DEC 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_PTR_OUT 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_CE 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_WE 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/INPUT_REG_CE 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/INPUT_REGOUT 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_OUT 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/SECURE_REGISTER_STACK_REGOUT 
add wave -noupdate -group SECURE_REGISTER_STACK TB_CFI_FPGA/UUT/REGISTER_VALID 

run 1500 ns 

