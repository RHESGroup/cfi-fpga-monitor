// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Mon Oct 31 12:27:13 2022
//
// Verilog Description of module CFI_FPGA_TOP
//

module CFI_FPGA_TOP (cpu_fpga_bus_a, cpu_fpga_bus_d, cpu_fpga_bus_noe, 
            cpu_fpga_bus_nwe, cpu_fpga_bus_ne1, cpu_fpga_clk, cpu_fpga_int_n, 
            cpu_fpga_rst);   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(6[8:20])
    input [5:0]cpu_fpga_bus_a;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(8[4:18])
    input [15:0]cpu_fpga_bus_d;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    input cpu_fpga_bus_noe;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(10[4:20])
    input cpu_fpga_bus_nwe;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(11[4:20])
    input cpu_fpga_bus_ne1;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(12[4:20])
    input cpu_fpga_clk;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    output cpu_fpga_int_n;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(14[4:18])
    input cpu_fpga_rst;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(15[4:16])
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    wire GND_net, VCC_net, cpu_fpga_bus_a_c_2, cpu_fpga_bus_a_c_1, cpu_fpga_bus_a_c_0, 
        cpu_fpga_bus_d_c_15, cpu_fpga_bus_d_c_14, cpu_fpga_bus_d_c_13, 
        cpu_fpga_bus_d_c_12, cpu_fpga_bus_d_c_11, cpu_fpga_bus_d_c_10, 
        cpu_fpga_bus_d_c_9, cpu_fpga_bus_d_c_8, cpu_fpga_bus_d_c_7, cpu_fpga_bus_d_c_6, 
        cpu_fpga_bus_d_c_5, cpu_fpga_bus_d_c_4, cpu_fpga_bus_d_c_3, cpu_fpga_bus_d_c_2, 
        cpu_fpga_bus_d_c_1, cpu_fpga_bus_d_c_0, cpu_fpga_bus_ne1_c, cpu_fpga_int_n_c, 
        cpu_fpga_rst_c, TIMER_CE, TIMER_RST;
    wire [3:0]TIMER_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(29[9:21])
    wire [2:0]OPCODE;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(34[9:15])
    
    wire INPUT_DETECTED;
    wire [15:0]ID_DATAOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(36[9:19])
    
    wire SRC_LABEL_REG_CE;
    wire [12:0]SRC_LABEL_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(38[9:25])
    
    wire INPUT_REG_CE;
    wire [15:0]INPUT_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(40[9:21])
    
    wire SECURE_EDGE_TABLE_CE;
    wire [12:0]SECURE_EDGE;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(45[9:20])
    wire [12:0]SECURE_EDGE_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(46[9:27])
    wire [15:0]SECURE_EDGE_TABLE_OUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(47[9:30])
    wire [15:0]SECURE_EDGE_TABLE_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(48[9:33])
    
    wire EDGE_VALID, SECURE_LABEL_STACK_PTR_CE;
    wire [9:0]SECURE_LABEL_STACK_PTR_OUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(56[9:35])
    
    wire SECURE_LABEL_STACK_PTR_INC_DEC, SECURE_LABEL_STACK_CE, SECURE_LABEL_STACK_WE;
    wire [15:0]SECURE_LABEL_STACK_OUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(62[9:31])
    wire [15:0]SECURE_LABEL_STACK_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(63[9:34])
    
    wire RETURN_VALID, SECURE_REGISTER_STACK_PTR_CE;
    wire [9:0]SECURE_REGISTER_STACK_PTR_OUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(70[9:38])
    
    wire SECURE_REGISTER_STACK_PTR_INC_DEC, SECURE_REGISTER_STACK_CE, SECURE_REGISTER_STACK_WE;
    wire [15:0]SECURE_REGISTER_STACK_OUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(76[9:34])
    wire [15:0]SECURE_REGISTER_STACK_REGOUT;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(77[9:37])
    
    wire REGISTER_VALID;
    wire [47:0]MICROPROGRAM;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(54[9:21])
    
    wire n4304, n4030, n1950, n994, n4092;
    wire [1:0]STATE_adj_268;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(23[9:14])
    
    wire STATE_1__N_195_c_0, n4138, n10, n4153, n4299, n2985, n3084, 
        n4295, cpu_fpga_clk_c_enable_7, n4306, n3910, n4305, n4303, 
        n2990, n4302, n2984, n4301, n4390;
    
    VHI i2 (.Z(VCC_net));
    IB cpu_fpga_bus_a_pad_1 (.I(cpu_fpga_bus_a[1]), .O(cpu_fpga_bus_a_c_1));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(8[4:18])
    IB cpu_fpga_bus_a_pad_0 (.I(cpu_fpga_bus_a[0]), .O(cpu_fpga_bus_a_c_0));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(8[4:18])
    \REGISTER_GENERIC(13)_U4  SECURE_EDGE_REG (.SECURE_EDGE_REGOUT({SECURE_EDGE_REGOUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .SECURE_EDGE({SECURE_EDGE}));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(138[20:48])
    \REGISTER_GENERIC(16)_U3  SECURE_EDGE_TABLE_REG (.\SECURE_EDGE_TABLE_REGOUT[0] (SECURE_EDGE_TABLE_REGOUT[0]), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .\SECURE_EDGE_TABLE_OUT[0] (SECURE_EDGE_TABLE_OUT[0]), 
            .\SECURE_EDGE_TABLE_REGOUT[1] (SECURE_EDGE_TABLE_REGOUT[1]), .\SECURE_EDGE_TABLE_OUT[1] (SECURE_EDGE_TABLE_OUT[1]), 
            .\SECURE_EDGE_TABLE_REGOUT[2] (SECURE_EDGE_TABLE_REGOUT[2]), .\SECURE_EDGE_TABLE_OUT[2] (SECURE_EDGE_TABLE_OUT[2]), 
            .\SECURE_EDGE_TABLE_REGOUT[3] (SECURE_EDGE_TABLE_REGOUT[3]), .\SECURE_EDGE_TABLE_OUT[3] (SECURE_EDGE_TABLE_OUT[3]), 
            .\SECURE_EDGE_TABLE_REGOUT[4] (SECURE_EDGE_TABLE_REGOUT[4]), .\SECURE_EDGE_TABLE_OUT[4] (SECURE_EDGE_TABLE_OUT[4]), 
            .\SECURE_EDGE_TABLE_REGOUT[5] (SECURE_EDGE_TABLE_REGOUT[5]), .\SECURE_EDGE_TABLE_OUT[5] (SECURE_EDGE_TABLE_OUT[5]), 
            .\SECURE_EDGE_TABLE_REGOUT[6] (SECURE_EDGE_TABLE_REGOUT[6]), .\SECURE_EDGE_TABLE_OUT[6] (SECURE_EDGE_TABLE_OUT[6]), 
            .\SECURE_EDGE_TABLE_REGOUT[7] (SECURE_EDGE_TABLE_REGOUT[7]), .\SECURE_EDGE_TABLE_OUT[7] (SECURE_EDGE_TABLE_OUT[7]), 
            .\SECURE_EDGE_TABLE_REGOUT[8] (SECURE_EDGE_TABLE_REGOUT[8]), .\SECURE_EDGE_TABLE_OUT[8] (SECURE_EDGE_TABLE_OUT[8]), 
            .\SECURE_EDGE_TABLE_REGOUT[9] (SECURE_EDGE_TABLE_REGOUT[9]), .\SECURE_EDGE_TABLE_OUT[9] (SECURE_EDGE_TABLE_OUT[9]), 
            .\SECURE_EDGE_TABLE_REGOUT[10] (SECURE_EDGE_TABLE_REGOUT[10]), 
            .\SECURE_EDGE_TABLE_OUT[10] (SECURE_EDGE_TABLE_OUT[10]), .\SECURE_EDGE_TABLE_REGOUT[11] (SECURE_EDGE_TABLE_REGOUT[11]), 
            .\SECURE_EDGE_TABLE_OUT[11] (SECURE_EDGE_TABLE_OUT[11]), .\SECURE_EDGE_TABLE_REGOUT[12] (SECURE_EDGE_TABLE_REGOUT[12]), 
            .\SECURE_EDGE_TABLE_OUT[12] (SECURE_EDGE_TABLE_OUT[12]), .\SECURE_EDGE_TABLE_REGOUT[15] (SECURE_EDGE_TABLE_REGOUT[15]), 
            .\SECURE_EDGE_TABLE_OUT[15] (SECURE_EDGE_TABLE_OUT[15]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(140[26:54])
    \REGISTER_GENERIC(16)_U0  SECURE_LABEL_STACK_REG (.\SECURE_LABEL_STACK_REGOUT[0] (SECURE_LABEL_STACK_REGOUT[0]), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .\SECURE_LABEL_STACK_OUT[0] (SECURE_LABEL_STACK_OUT[0]), 
            .\SECURE_LABEL_STACK_REGOUT[1] (SECURE_LABEL_STACK_REGOUT[1]), 
            .\SECURE_LABEL_STACK_OUT[1] (SECURE_LABEL_STACK_OUT[1]), .\SECURE_LABEL_STACK_REGOUT[2] (SECURE_LABEL_STACK_REGOUT[2]), 
            .\SECURE_LABEL_STACK_OUT[2] (SECURE_LABEL_STACK_OUT[2]), .\SECURE_LABEL_STACK_REGOUT[3] (SECURE_LABEL_STACK_REGOUT[3]), 
            .\SECURE_LABEL_STACK_OUT[3] (SECURE_LABEL_STACK_OUT[3]), .\SECURE_LABEL_STACK_REGOUT[4] (SECURE_LABEL_STACK_REGOUT[4]), 
            .\SECURE_LABEL_STACK_OUT[4] (SECURE_LABEL_STACK_OUT[4]), .\SECURE_LABEL_STACK_REGOUT[5] (SECURE_LABEL_STACK_REGOUT[5]), 
            .\SECURE_LABEL_STACK_OUT[5] (SECURE_LABEL_STACK_OUT[5]), .\SECURE_LABEL_STACK_REGOUT[6] (SECURE_LABEL_STACK_REGOUT[6]), 
            .\SECURE_LABEL_STACK_OUT[6] (SECURE_LABEL_STACK_OUT[6]), .\SECURE_LABEL_STACK_REGOUT[7] (SECURE_LABEL_STACK_REGOUT[7]), 
            .\SECURE_LABEL_STACK_OUT[7] (SECURE_LABEL_STACK_OUT[7]), .\SECURE_LABEL_STACK_REGOUT[8] (SECURE_LABEL_STACK_REGOUT[8]), 
            .\SECURE_LABEL_STACK_OUT[8] (SECURE_LABEL_STACK_OUT[8]), .\SECURE_LABEL_STACK_REGOUT[9] (SECURE_LABEL_STACK_REGOUT[9]), 
            .\SECURE_LABEL_STACK_OUT[9] (SECURE_LABEL_STACK_OUT[9]), .\SECURE_LABEL_STACK_REGOUT[10] (SECURE_LABEL_STACK_REGOUT[10]), 
            .\SECURE_LABEL_STACK_OUT[10] (SECURE_LABEL_STACK_OUT[10]), .\SECURE_LABEL_STACK_REGOUT[11] (SECURE_LABEL_STACK_REGOUT[11]), 
            .\SECURE_LABEL_STACK_OUT[11] (SECURE_LABEL_STACK_OUT[11]), .\SECURE_LABEL_STACK_REGOUT[12] (SECURE_LABEL_STACK_REGOUT[12]), 
            .\SECURE_LABEL_STACK_OUT[12] (SECURE_LABEL_STACK_OUT[12]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(164[27:55])
    IB cpu_fpga_bus_a_pad_2 (.I(cpu_fpga_bus_a[2]), .O(cpu_fpga_bus_a_c_2));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(8[4:18])
    OB cpu_fpga_int_n_pad (.I(cpu_fpga_int_n_c), .O(cpu_fpga_int_n));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(14[4:18])
    LUT4 i2910_4_lut_then_3_lut (.A(OPCODE[1]), .B(OPCODE[0]), .C(OPCODE[2]), 
         .Z(n4302)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;
    defparam i2910_4_lut_then_3_lut.init = 16'hf6f6;
    IB cpu_fpga_bus_d_pad_15 (.I(cpu_fpga_bus_d[15]), .O(cpu_fpga_bus_d_c_15));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_14 (.I(cpu_fpga_bus_d[14]), .O(cpu_fpga_bus_d_c_14));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_13 (.I(cpu_fpga_bus_d[13]), .O(cpu_fpga_bus_d_c_13));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_12 (.I(cpu_fpga_bus_d[12]), .O(cpu_fpga_bus_d_c_12));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_11 (.I(cpu_fpga_bus_d[11]), .O(cpu_fpga_bus_d_c_11));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_10 (.I(cpu_fpga_bus_d[10]), .O(cpu_fpga_bus_d_c_10));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_9 (.I(cpu_fpga_bus_d[9]), .O(cpu_fpga_bus_d_c_9));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_8 (.I(cpu_fpga_bus_d[8]), .O(cpu_fpga_bus_d_c_8));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_7 (.I(cpu_fpga_bus_d[7]), .O(cpu_fpga_bus_d_c_7));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_6 (.I(cpu_fpga_bus_d[6]), .O(cpu_fpga_bus_d_c_6));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_5 (.I(cpu_fpga_bus_d[5]), .O(cpu_fpga_bus_d_c_5));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_4 (.I(cpu_fpga_bus_d[4]), .O(cpu_fpga_bus_d_c_4));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_3 (.I(cpu_fpga_bus_d[3]), .O(cpu_fpga_bus_d_c_3));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_2 (.I(cpu_fpga_bus_d[2]), .O(cpu_fpga_bus_d_c_2));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_1 (.I(cpu_fpga_bus_d[1]), .O(cpu_fpga_bus_d_c_1));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB cpu_fpga_bus_d_pad_0 (.I(cpu_fpga_bus_d[0]), .O(cpu_fpga_bus_d_c_0));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(9[4:18])
    IB STATE_1__N_195_pad_0 (.I(cpu_fpga_bus_nwe), .O(STATE_1__N_195_c_0));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(11[4:20])
    IB cpu_fpga_bus_ne1_pad (.I(cpu_fpga_bus_ne1), .O(cpu_fpga_bus_ne1_c));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(12[4:20])
    IB cpu_fpga_clk_pad (.I(cpu_fpga_clk), .O(cpu_fpga_clk_c));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    IB cpu_fpga_rst_pad (.I(cpu_fpga_rst), .O(cpu_fpga_rst_c));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(15[4:16])
    \REGISTER_GENERIC(16)  SECURE_REGISTER_STACK_REG (.SECURE_REGISTER_STACK_REGOUT({SECURE_REGISTER_STACK_REGOUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .SECURE_REGISTER_STACK_OUT({SECURE_REGISTER_STACK_OUT}));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(187[30:58])
    INPUT_DETECTOR ID (.STATE({STATE_adj_268[1], Open_0}), .ID_DATAOUT({ID_DATAOUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .cpu_fpga_bus_d_c_8(cpu_fpga_bus_d_c_8), 
            .cpu_fpga_bus_d_c_7(cpu_fpga_bus_d_c_7), .cpu_fpga_bus_d_c_6(cpu_fpga_bus_d_c_6), 
            .cpu_fpga_bus_d_c_5(cpu_fpga_bus_d_c_5), .cpu_fpga_bus_d_c_4(cpu_fpga_bus_d_c_4), 
            .INPUT_DETECTED(INPUT_DETECTED), .cpu_fpga_clk_c_enable_7(cpu_fpga_clk_c_enable_7), 
            .n4390(n4390), .cpu_fpga_bus_d_c_3(cpu_fpga_bus_d_c_3), .cpu_fpga_bus_a_c_0(cpu_fpga_bus_a_c_0), 
            .cpu_fpga_bus_ne1_c(cpu_fpga_bus_ne1_c), .STATE_1__N_195_c_0(STATE_1__N_195_c_0), 
            .cpu_fpga_bus_d_c_2(cpu_fpga_bus_d_c_2), .OPCODE({OPCODE}), 
            .n4299(n4299), .cpu_fpga_rst_c(cpu_fpga_rst_c), .n3910(n3910), 
            .n10(n10), .n1950(n1950), .cpu_fpga_bus_d_c_1(cpu_fpga_bus_d_c_1), 
            .cpu_fpga_bus_a_c_2(cpu_fpga_bus_a_c_2), .cpu_fpga_bus_a_c_1(cpu_fpga_bus_a_c_1), 
            .cpu_fpga_bus_d_c_15(cpu_fpga_bus_d_c_15), .cpu_fpga_bus_d_c_0(cpu_fpga_bus_d_c_0), 
            .cpu_fpga_bus_d_c_14(cpu_fpga_bus_d_c_14), .cpu_fpga_bus_d_c_13(cpu_fpga_bus_d_c_13), 
            .n2990(n2990), .n994(n994), .cpu_fpga_bus_d_c_12(cpu_fpga_bus_d_c_12), 
            .cpu_fpga_bus_d_c_11(cpu_fpga_bus_d_c_11), .cpu_fpga_bus_d_c_10(cpu_fpga_bus_d_c_10), 
            .cpu_fpga_bus_d_c_9(cpu_fpga_bus_d_c_9));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(122[7:33])
    LUT4 i2911_4_lut (.A(SECURE_REGISTER_STACK_PTR_INC_DEC), .B(n4138), 
         .C(n4092), .D(n4295), .Z(n4153)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam i2911_4_lut.init = 16'h00ac;
    LUT4 i2909_4_lut_then_3_lut (.A(OPCODE[2]), .B(OPCODE[0]), .C(OPCODE[1]), 
         .Z(n4305)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i2909_4_lut_then_3_lut.init = 16'h8484;
    LUT4 i2910_4_lut_else_3_lut (.A(OPCODE[1]), .B(OPCODE[0]), .C(OPCODE[2]), 
         .D(n3084), .Z(n4301)) /* synthesis lut_function=(!(A (B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i2910_4_lut_else_3_lut.init = 16'h7276;
    LUT4 i2909_4_lut_else_3_lut (.A(OPCODE[2]), .B(OPCODE[0]), .C(OPCODE[1]), 
         .D(n3084), .Z(n4304)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2909_4_lut_else_3_lut.init = 16'h0004;
    \COMP_EQUAL_GENERIC(13)_U5  SECURE_EDGE_CMP (.SRC_LABEL_REGOUT({SRC_LABEL_REGOUT}), 
            .\SECURE_EDGE_TABLE_REGOUT[1] (SECURE_EDGE_TABLE_REGOUT[1]), .\SECURE_EDGE_TABLE_REGOUT[0] (SECURE_EDGE_TABLE_REGOUT[0]), 
            .GND_net(GND_net), .EDGE_VALID(EDGE_VALID), .\SECURE_EDGE_TABLE_REGOUT[5] (SECURE_EDGE_TABLE_REGOUT[5]), 
            .\SECURE_EDGE_TABLE_REGOUT[4] (SECURE_EDGE_TABLE_REGOUT[4]), .\SECURE_EDGE_TABLE_REGOUT[3] (SECURE_EDGE_TABLE_REGOUT[3]), 
            .\SECURE_EDGE_TABLE_REGOUT[2] (SECURE_EDGE_TABLE_REGOUT[2]), .\SECURE_EDGE_TABLE_REGOUT[9] (SECURE_EDGE_TABLE_REGOUT[9]), 
            .\SECURE_EDGE_TABLE_REGOUT[8] (SECURE_EDGE_TABLE_REGOUT[8]), .\SECURE_EDGE_TABLE_REGOUT[7] (SECURE_EDGE_TABLE_REGOUT[7]), 
            .\SECURE_EDGE_TABLE_REGOUT[6] (SECURE_EDGE_TABLE_REGOUT[6]), .\SECURE_EDGE_TABLE_REGOUT[12] (SECURE_EDGE_TABLE_REGOUT[12]), 
            .\SECURE_EDGE_TABLE_REGOUT[11] (SECURE_EDGE_TABLE_REGOUT[11]), 
            .\SECURE_EDGE_TABLE_REGOUT[10] (SECURE_EDGE_TABLE_REGOUT[10]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(142[20:50])
    ROM_16x8192 SECURE_EDGE_TABLE (.SECURE_EDGE_REGOUT({SECURE_EDGE_REGOUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .SECURE_EDGE_TABLE_CE(SECURE_EDGE_TABLE_CE), 
            .cpu_fpga_rst_c(cpu_fpga_rst_c), .\SECURE_EDGE_TABLE_OUT[15] (SECURE_EDGE_TABLE_OUT[15]), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\SECURE_EDGE_TABLE_OUT[1] (SECURE_EDGE_TABLE_OUT[1]), 
            .\SECURE_EDGE_TABLE_OUT[0] (SECURE_EDGE_TABLE_OUT[0]), .\SECURE_EDGE_TABLE_OUT[2] (SECURE_EDGE_TABLE_OUT[2]), 
            .\SECURE_EDGE_TABLE_OUT[3] (SECURE_EDGE_TABLE_OUT[3]), .\SECURE_EDGE_TABLE_OUT[4] (SECURE_EDGE_TABLE_OUT[4]), 
            .\SECURE_EDGE_TABLE_OUT[5] (SECURE_EDGE_TABLE_OUT[5]), .\SECURE_EDGE_TABLE_OUT[6] (SECURE_EDGE_TABLE_OUT[6]), 
            .\SECURE_EDGE_TABLE_OUT[7] (SECURE_EDGE_TABLE_OUT[7]), .\SECURE_EDGE_TABLE_OUT[8] (SECURE_EDGE_TABLE_OUT[8]), 
            .\SECURE_EDGE_TABLE_OUT[9] (SECURE_EDGE_TABLE_OUT[9]), .\SECURE_EDGE_TABLE_OUT[10] (SECURE_EDGE_TABLE_OUT[10]), 
            .\SECURE_EDGE_TABLE_OUT[11] (SECURE_EDGE_TABLE_OUT[11]), .\SECURE_EDGE_TABLE_OUT[12] (SECURE_EDGE_TABLE_OUT[12])) /* synthesis NGD_DRC_MASK=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    \REGISTER_GENERIC(10)_U1  SECURE_LABEL_STACK_PTR (.SECURE_LABEL_STACK_PTR_OUT({SECURE_LABEL_STACK_PTR_OUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .SECURE_LABEL_STACK_PTR_CE(SECURE_LABEL_STACK_PTR_CE), 
            .SECURE_LABEL_STACK_PTR_INC_DEC(SECURE_LABEL_STACK_PTR_INC_DEC), 
            .GND_net(GND_net));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(146[27:55])
    \REGISTER_GENERIC(10)  SECURE_REGISTER_STACK_PTR (.GND_net(GND_net), .SECURE_REGISTER_STACK_PTR_OUT({SECURE_REGISTER_STACK_PTR_OUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .SECURE_REGISTER_STACK_PTR_CE(SECURE_REGISTER_STACK_PTR_CE), 
            .SECURE_REGISTER_STACK_PTR_INC_DEC(SECURE_REGISTER_STACK_PTR_INC_DEC));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(169[30:58])
    LUT4 SRC_LABEL_REGOUT_12__I_0_i2_2_lut (.A(SRC_LABEL_REGOUT[1]), .B(INPUT_REGOUT[1]), 
         .Z(SECURE_EDGE[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i2_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i3_2_lut (.A(SRC_LABEL_REGOUT[2]), .B(INPUT_REGOUT[2]), 
         .Z(SECURE_EDGE[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i3_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i4_2_lut (.A(SRC_LABEL_REGOUT[3]), .B(INPUT_REGOUT[3]), 
         .Z(SECURE_EDGE[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i4_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i5_2_lut (.A(SRC_LABEL_REGOUT[4]), .B(INPUT_REGOUT[4]), 
         .Z(SECURE_EDGE[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i5_2_lut.init = 16'h6666;
    LUT4 i706_2_lut (.A(STATE_1__N_195_c_0), .B(STATE_adj_268[1]), .Z(cpu_fpga_clk_c_enable_7)) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(43[4] 72[13])
    defparam i706_2_lut.init = 16'h8888;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i6_2_lut (.A(SRC_LABEL_REGOUT[5]), .B(INPUT_REGOUT[5]), 
         .Z(SECURE_EDGE[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i6_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i7_2_lut (.A(SRC_LABEL_REGOUT[6]), .B(INPUT_REGOUT[6]), 
         .Z(SECURE_EDGE[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i7_2_lut.init = 16'h6666;
    \REGISTER_GENERIC(13)  SRC_LABEL_REG (.SRC_LABEL_REGOUT({SRC_LABEL_REGOUT}), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .SRC_LABEL_REG_CE(SRC_LABEL_REG_CE), 
            .\ID_DATAOUT[0] (ID_DATAOUT[0]), .\ID_DATAOUT[1] (ID_DATAOUT[1]), 
            .\ID_DATAOUT[2] (ID_DATAOUT[2]), .\ID_DATAOUT[3] (ID_DATAOUT[3]), 
            .\ID_DATAOUT[4] (ID_DATAOUT[4]), .\ID_DATAOUT[5] (ID_DATAOUT[5]), 
            .\ID_DATAOUT[6] (ID_DATAOUT[6]), .\ID_DATAOUT[7] (ID_DATAOUT[7]), 
            .\ID_DATAOUT[8] (ID_DATAOUT[8]), .\ID_DATAOUT[9] (ID_DATAOUT[9]), 
            .\ID_DATAOUT[10] (ID_DATAOUT[10]), .\ID_DATAOUT[11] (ID_DATAOUT[11]), 
            .\ID_DATAOUT[12] (ID_DATAOUT[12]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(132[18:46])
    GSR GSR_INST (.GSR(n2984));
    LUT4 SRC_LABEL_REGOUT_12__I_0_i8_2_lut (.A(SRC_LABEL_REGOUT[7]), .B(INPUT_REGOUT[7]), 
         .Z(SECURE_EDGE[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i8_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i9_2_lut (.A(SRC_LABEL_REGOUT[8]), .B(INPUT_REGOUT[8]), 
         .Z(SECURE_EDGE[8])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i9_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i10_2_lut (.A(SRC_LABEL_REGOUT[9]), .B(INPUT_REGOUT[9]), 
         .Z(SECURE_EDGE[9])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i10_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i11_2_lut (.A(SRC_LABEL_REGOUT[10]), .B(INPUT_REGOUT[10]), 
         .Z(SECURE_EDGE[10])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i11_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i12_2_lut (.A(SRC_LABEL_REGOUT[11]), .B(INPUT_REGOUT[11]), 
         .Z(SECURE_EDGE[11])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i12_2_lut.init = 16'h6666;
    LUT4 SRC_LABEL_REGOUT_12__I_0_i13_2_lut (.A(SRC_LABEL_REGOUT[12]), .B(INPUT_REGOUT[12]), 
         .Z(SECURE_EDGE[12])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i13_2_lut.init = 16'h6666;
    \COMP_EQUAL_GENERIC(4)  TIMER_CMP (.TIMER_REGOUT({TIMER_REGOUT}), .n4030(n4030), 
            .n2985(n2985));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(118[14:44])
    \COMP_EQUAL_GENERIC(16)  SECURE_REGISTER_STACK_CMP (.SECURE_REGISTER_STACK_REGOUT({SECURE_REGISTER_STACK_REGOUT}), 
            .INPUT_REGOUT({INPUT_REGOUT}), .GND_net(GND_net), .REGISTER_VALID(REGISTER_VALID));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(188[30:60])
    \REGISTER_GENERIC(16)_U6  INPUT_REG (.INPUT_REGOUT({INPUT_REGOUT}), .cpu_fpga_clk_c(cpu_fpga_clk_c), 
            .INPUT_REG_CE(INPUT_REG_CE), .ID_DATAOUT({ID_DATAOUT}));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(133[14:42])
    LUT4 SRC_LABEL_REGOUT_12__I_0_i1_2_lut (.A(SRC_LABEL_REGOUT[0]), .B(INPUT_REGOUT[0]), 
         .Z(SECURE_EDGE[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(137[17:33])
    defparam SRC_LABEL_REGOUT_12__I_0_i1_2_lut.init = 16'h6666;
    \COMP_EQUAL_GENERIC(13)  SECURE_LABEL_STACK_CMP (.\SECURE_LABEL_STACK_REGOUT[1] (SECURE_LABEL_STACK_REGOUT[1]), 
            .\INPUT_REGOUT[1] (INPUT_REGOUT[1]), .\SECURE_LABEL_STACK_REGOUT[0] (SECURE_LABEL_STACK_REGOUT[0]), 
            .\INPUT_REGOUT[0] (INPUT_REGOUT[0]), .GND_net(GND_net), .RETURN_VALID(RETURN_VALID), 
            .\SECURE_LABEL_STACK_REGOUT[5] (SECURE_LABEL_STACK_REGOUT[5]), 
            .\INPUT_REGOUT[5] (INPUT_REGOUT[5]), .\SECURE_LABEL_STACK_REGOUT[4] (SECURE_LABEL_STACK_REGOUT[4]), 
            .\INPUT_REGOUT[4] (INPUT_REGOUT[4]), .\SECURE_LABEL_STACK_REGOUT[3] (SECURE_LABEL_STACK_REGOUT[3]), 
            .\INPUT_REGOUT[3] (INPUT_REGOUT[3]), .\SECURE_LABEL_STACK_REGOUT[2] (SECURE_LABEL_STACK_REGOUT[2]), 
            .\INPUT_REGOUT[2] (INPUT_REGOUT[2]), .\SECURE_LABEL_STACK_REGOUT[9] (SECURE_LABEL_STACK_REGOUT[9]), 
            .\INPUT_REGOUT[9] (INPUT_REGOUT[9]), .\SECURE_LABEL_STACK_REGOUT[8] (SECURE_LABEL_STACK_REGOUT[8]), 
            .\INPUT_REGOUT[8] (INPUT_REGOUT[8]), .\SECURE_LABEL_STACK_REGOUT[7] (SECURE_LABEL_STACK_REGOUT[7]), 
            .\INPUT_REGOUT[7] (INPUT_REGOUT[7]), .\SECURE_LABEL_STACK_REGOUT[6] (SECURE_LABEL_STACK_REGOUT[6]), 
            .\INPUT_REGOUT[6] (INPUT_REGOUT[6]), .\SECURE_LABEL_STACK_REGOUT[12] (SECURE_LABEL_STACK_REGOUT[12]), 
            .\INPUT_REGOUT[12] (INPUT_REGOUT[12]), .\SECURE_LABEL_STACK_REGOUT[11] (SECURE_LABEL_STACK_REGOUT[11]), 
            .\INPUT_REGOUT[11] (INPUT_REGOUT[11]), .\SECURE_LABEL_STACK_REGOUT[10] (SECURE_LABEL_STACK_REGOUT[10]), 
            .\INPUT_REGOUT[10] (INPUT_REGOUT[10]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(165[27:57])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    RAM_DQ_16x1024 SECURE_REGISTER_STACK (.cpu_fpga_clk_c(cpu_fpga_clk_c), 
            .SECURE_REGISTER_STACK_CE(SECURE_REGISTER_STACK_CE), .cpu_fpga_rst_c(cpu_fpga_rst_c), 
            .SECURE_REGISTER_STACK_WE(SECURE_REGISTER_STACK_WE), .SECURE_REGISTER_STACK_PTR_OUT({SECURE_REGISTER_STACK_PTR_OUT}), 
            .INPUT_REGOUT({INPUT_REGOUT}), .SECURE_REGISTER_STACK_OUT({SECURE_REGISTER_STACK_OUT}), 
            .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(180[26:52])
    CFI_CONTROL_UNIT CU (.n4295(n4295), .INPUT_DETECTED(INPUT_DETECTED), 
            .cpu_fpga_rst_c(cpu_fpga_rst_c), .OPCODE({OPCODE}), .TIMER_RST(TIMER_RST), 
            .cpu_fpga_clk_c(cpu_fpga_clk_c), .n4030(n4030), .n3084(n3084), 
            .n2985(n2985), .cpu_fpga_int_n_c(cpu_fpga_int_n_c), .n4390(n4390), 
            .REGISTER_VALID(REGISTER_VALID), .n3910(n3910), .\MICROPROGRAM[21] (MICROPROGRAM[21]), 
            .n4306(n4306), .\MICROPROGRAM[24] (MICROPROGRAM[24]), .n4303(n4303), 
            .n4138(n4138), .n4092(n4092), .EDGE_VALID(EDGE_VALID), .\SECURE_EDGE_TABLE_REGOUT[15] (SECURE_EDGE_TABLE_REGOUT[15]), 
            .SECURE_REGISTER_STACK_WE(SECURE_REGISTER_STACK_WE), .n1950(n1950), 
            .SRC_LABEL_REG_CE(SRC_LABEL_REG_CE), .INPUT_REG_CE(INPUT_REG_CE), 
            .SECURE_EDGE_TABLE_CE(SECURE_EDGE_TABLE_CE), .SECURE_REGISTER_STACK_PTR_CE(SECURE_REGISTER_STACK_PTR_CE), 
            .n4299(n4299), .TIMER_CE(TIMER_CE), .n10(n10), .n994(n994), 
            .RETURN_VALID(RETURN_VALID), .n2990(n2990), .SECURE_REGISTER_STACK_CE(SECURE_REGISTER_STACK_CE), 
            .SECURE_REGISTER_STACK_PTR_INC_DEC(SECURE_REGISTER_STACK_PTR_INC_DEC), 
            .n4153(n4153), .SECURE_LABEL_STACK_WE(SECURE_LABEL_STACK_WE), 
            .SECURE_LABEL_STACK_CE(SECURE_LABEL_STACK_CE), .SECURE_LABEL_STACK_PTR_CE(SECURE_LABEL_STACK_PTR_CE), 
            .SECURE_LABEL_STACK_PTR_INC_DEC(SECURE_LABEL_STACK_PTR_INC_DEC), 
            .n2984(n2984));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(90[7:35])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i2965 (.BLUT(n4304), .ALUT(n4305), .C0(MICROPROGRAM[21]), .Z(n4306));
    LUT4 m1_lut (.Z(n4390)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    RAM_DQ_16x1024_U2 SECURE_LABEL_STACK (.cpu_fpga_clk_c(cpu_fpga_clk_c), 
            .SECURE_LABEL_STACK_CE(SECURE_LABEL_STACK_CE), .cpu_fpga_rst_c(cpu_fpga_rst_c), 
            .SECURE_LABEL_STACK_WE(SECURE_LABEL_STACK_WE), .SECURE_LABEL_STACK_PTR_OUT({SECURE_LABEL_STACK_PTR_OUT}), 
            .INPUT_REGOUT({INPUT_REGOUT}), .\SECURE_LABEL_STACK_OUT[12] (SECURE_LABEL_STACK_OUT[12]), 
            .\SECURE_LABEL_STACK_OUT[11] (SECURE_LABEL_STACK_OUT[11]), .\SECURE_LABEL_STACK_OUT[10] (SECURE_LABEL_STACK_OUT[10]), 
            .\SECURE_LABEL_STACK_OUT[9] (SECURE_LABEL_STACK_OUT[9]), .GND_net(GND_net), 
            .VCC_net(VCC_net), .\SECURE_LABEL_STACK_OUT[8] (SECURE_LABEL_STACK_OUT[8]), 
            .\SECURE_LABEL_STACK_OUT[7] (SECURE_LABEL_STACK_OUT[7]), .\SECURE_LABEL_STACK_OUT[6] (SECURE_LABEL_STACK_OUT[6]), 
            .\SECURE_LABEL_STACK_OUT[5] (SECURE_LABEL_STACK_OUT[5]), .\SECURE_LABEL_STACK_OUT[4] (SECURE_LABEL_STACK_OUT[4]), 
            .\SECURE_LABEL_STACK_OUT[3] (SECURE_LABEL_STACK_OUT[3]), .\SECURE_LABEL_STACK_OUT[2] (SECURE_LABEL_STACK_OUT[2]), 
            .\SECURE_LABEL_STACK_OUT[1] (SECURE_LABEL_STACK_OUT[1]), .\SECURE_LABEL_STACK_OUT[0] (SECURE_LABEL_STACK_OUT[0])) /* synthesis NGD_DRC_MASK=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(157[23:49])
    PFUMX i2963 (.BLUT(n4301), .ALUT(n4302), .C0(MICROPROGRAM[24]), .Z(n4303));
    \ADDER_GENERIC(4)  TIMER_INC (.TIMER_REGOUT({TIMER_REGOUT}), .cpu_fpga_clk_c(cpu_fpga_clk_c), 
            .TIMER_CE(TIMER_CE), .TIMER_RST(TIMER_RST));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(117[14:39])
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(13)_U4 
//

module \REGISTER_GENERIC(13)_U4  (SECURE_EDGE_REGOUT, cpu_fpga_clk_c, SECURE_EDGE);
    output [12:0]SECURE_EDGE_REGOUT;
    input cpu_fpga_clk_c;
    input [12:0]SECURE_EDGE;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    FD1S3AX Q_i0 (.D(SECURE_EDGE[0]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0.GSR = "ENABLED";
    FD1S3AX Q_i1 (.D(SECURE_EDGE[1]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i1.GSR = "ENABLED";
    FD1S3AX Q_i2 (.D(SECURE_EDGE[2]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i2.GSR = "ENABLED";
    FD1S3AX Q_i3 (.D(SECURE_EDGE[3]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i3.GSR = "ENABLED";
    FD1S3AX Q_i4 (.D(SECURE_EDGE[4]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i4.GSR = "ENABLED";
    FD1S3AX Q_i5 (.D(SECURE_EDGE[5]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i5.GSR = "ENABLED";
    FD1S3AX Q_i6 (.D(SECURE_EDGE[6]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i6.GSR = "ENABLED";
    FD1S3AX Q_i7 (.D(SECURE_EDGE[7]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i7.GSR = "ENABLED";
    FD1S3AX Q_i8 (.D(SECURE_EDGE[8]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[8])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i8.GSR = "ENABLED";
    FD1S3AX Q_i9 (.D(SECURE_EDGE[9]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[9])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i9.GSR = "ENABLED";
    FD1S3AX Q_i10 (.D(SECURE_EDGE[10]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[10])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i10.GSR = "ENABLED";
    FD1S3AX Q_i11 (.D(SECURE_EDGE[11]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[11])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i11.GSR = "ENABLED";
    FD1S3AX Q_i12 (.D(SECURE_EDGE[12]), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_REGOUT[12])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=20, LSE_RCOL=48, LSE_LLINE=138, LSE_RLINE=138 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i12.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(16)_U3 
//

module \REGISTER_GENERIC(16)_U3  (\SECURE_EDGE_TABLE_REGOUT[0] , cpu_fpga_clk_c, 
            \SECURE_EDGE_TABLE_OUT[0] , \SECURE_EDGE_TABLE_REGOUT[1] , \SECURE_EDGE_TABLE_OUT[1] , 
            \SECURE_EDGE_TABLE_REGOUT[2] , \SECURE_EDGE_TABLE_OUT[2] , \SECURE_EDGE_TABLE_REGOUT[3] , 
            \SECURE_EDGE_TABLE_OUT[3] , \SECURE_EDGE_TABLE_REGOUT[4] , \SECURE_EDGE_TABLE_OUT[4] , 
            \SECURE_EDGE_TABLE_REGOUT[5] , \SECURE_EDGE_TABLE_OUT[5] , \SECURE_EDGE_TABLE_REGOUT[6] , 
            \SECURE_EDGE_TABLE_OUT[6] , \SECURE_EDGE_TABLE_REGOUT[7] , \SECURE_EDGE_TABLE_OUT[7] , 
            \SECURE_EDGE_TABLE_REGOUT[8] , \SECURE_EDGE_TABLE_OUT[8] , \SECURE_EDGE_TABLE_REGOUT[9] , 
            \SECURE_EDGE_TABLE_OUT[9] , \SECURE_EDGE_TABLE_REGOUT[10] , 
            \SECURE_EDGE_TABLE_OUT[10] , \SECURE_EDGE_TABLE_REGOUT[11] , 
            \SECURE_EDGE_TABLE_OUT[11] , \SECURE_EDGE_TABLE_REGOUT[12] , 
            \SECURE_EDGE_TABLE_OUT[12] , \SECURE_EDGE_TABLE_REGOUT[15] , 
            \SECURE_EDGE_TABLE_OUT[15] );
    output \SECURE_EDGE_TABLE_REGOUT[0] ;
    input cpu_fpga_clk_c;
    input \SECURE_EDGE_TABLE_OUT[0] ;
    output \SECURE_EDGE_TABLE_REGOUT[1] ;
    input \SECURE_EDGE_TABLE_OUT[1] ;
    output \SECURE_EDGE_TABLE_REGOUT[2] ;
    input \SECURE_EDGE_TABLE_OUT[2] ;
    output \SECURE_EDGE_TABLE_REGOUT[3] ;
    input \SECURE_EDGE_TABLE_OUT[3] ;
    output \SECURE_EDGE_TABLE_REGOUT[4] ;
    input \SECURE_EDGE_TABLE_OUT[4] ;
    output \SECURE_EDGE_TABLE_REGOUT[5] ;
    input \SECURE_EDGE_TABLE_OUT[5] ;
    output \SECURE_EDGE_TABLE_REGOUT[6] ;
    input \SECURE_EDGE_TABLE_OUT[6] ;
    output \SECURE_EDGE_TABLE_REGOUT[7] ;
    input \SECURE_EDGE_TABLE_OUT[7] ;
    output \SECURE_EDGE_TABLE_REGOUT[8] ;
    input \SECURE_EDGE_TABLE_OUT[8] ;
    output \SECURE_EDGE_TABLE_REGOUT[9] ;
    input \SECURE_EDGE_TABLE_OUT[9] ;
    output \SECURE_EDGE_TABLE_REGOUT[10] ;
    input \SECURE_EDGE_TABLE_OUT[10] ;
    output \SECURE_EDGE_TABLE_REGOUT[11] ;
    input \SECURE_EDGE_TABLE_OUT[11] ;
    output \SECURE_EDGE_TABLE_REGOUT[12] ;
    input \SECURE_EDGE_TABLE_OUT[12] ;
    output \SECURE_EDGE_TABLE_REGOUT[15] ;
    input \SECURE_EDGE_TABLE_OUT[15] ;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    FD1S3AX Q_i1 (.D(\SECURE_EDGE_TABLE_OUT[0] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[0] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i1.GSR = "ENABLED";
    FD1S3AX Q_i2 (.D(\SECURE_EDGE_TABLE_OUT[1] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[1] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i2.GSR = "ENABLED";
    FD1S3AX Q_i3 (.D(\SECURE_EDGE_TABLE_OUT[2] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[2] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i3.GSR = "ENABLED";
    FD1S3AX Q_i4 (.D(\SECURE_EDGE_TABLE_OUT[3] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[3] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i4.GSR = "ENABLED";
    FD1S3AX Q_i5 (.D(\SECURE_EDGE_TABLE_OUT[4] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[4] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i5.GSR = "ENABLED";
    FD1S3AX Q_i6 (.D(\SECURE_EDGE_TABLE_OUT[5] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[5] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i6.GSR = "ENABLED";
    FD1S3AX Q_i7 (.D(\SECURE_EDGE_TABLE_OUT[6] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[6] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i7.GSR = "ENABLED";
    FD1S3AX Q_i8 (.D(\SECURE_EDGE_TABLE_OUT[7] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[7] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i8.GSR = "ENABLED";
    FD1S3AX Q_i9 (.D(\SECURE_EDGE_TABLE_OUT[8] ), .CK(cpu_fpga_clk_c), .Q(\SECURE_EDGE_TABLE_REGOUT[8] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i9.GSR = "ENABLED";
    FD1S3AX Q_i10 (.D(\SECURE_EDGE_TABLE_OUT[9] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_EDGE_TABLE_REGOUT[9] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i10.GSR = "ENABLED";
    FD1S3AX Q_i11 (.D(\SECURE_EDGE_TABLE_OUT[10] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_EDGE_TABLE_REGOUT[10] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i11.GSR = "ENABLED";
    FD1S3AX Q_i12 (.D(\SECURE_EDGE_TABLE_OUT[11] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_EDGE_TABLE_REGOUT[11] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i12.GSR = "ENABLED";
    FD1S3AX Q_i13 (.D(\SECURE_EDGE_TABLE_OUT[12] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_EDGE_TABLE_REGOUT[12] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i13.GSR = "ENABLED";
    FD1S3AX Q_i14 (.D(\SECURE_EDGE_TABLE_OUT[15] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_EDGE_TABLE_REGOUT[15] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=54, LSE_LLINE=140, LSE_RLINE=140 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i14.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(16)_U0 
//

module \REGISTER_GENERIC(16)_U0  (\SECURE_LABEL_STACK_REGOUT[0] , cpu_fpga_clk_c, 
            \SECURE_LABEL_STACK_OUT[0] , \SECURE_LABEL_STACK_REGOUT[1] , 
            \SECURE_LABEL_STACK_OUT[1] , \SECURE_LABEL_STACK_REGOUT[2] , 
            \SECURE_LABEL_STACK_OUT[2] , \SECURE_LABEL_STACK_REGOUT[3] , 
            \SECURE_LABEL_STACK_OUT[3] , \SECURE_LABEL_STACK_REGOUT[4] , 
            \SECURE_LABEL_STACK_OUT[4] , \SECURE_LABEL_STACK_REGOUT[5] , 
            \SECURE_LABEL_STACK_OUT[5] , \SECURE_LABEL_STACK_REGOUT[6] , 
            \SECURE_LABEL_STACK_OUT[6] , \SECURE_LABEL_STACK_REGOUT[7] , 
            \SECURE_LABEL_STACK_OUT[7] , \SECURE_LABEL_STACK_REGOUT[8] , 
            \SECURE_LABEL_STACK_OUT[8] , \SECURE_LABEL_STACK_REGOUT[9] , 
            \SECURE_LABEL_STACK_OUT[9] , \SECURE_LABEL_STACK_REGOUT[10] , 
            \SECURE_LABEL_STACK_OUT[10] , \SECURE_LABEL_STACK_REGOUT[11] , 
            \SECURE_LABEL_STACK_OUT[11] , \SECURE_LABEL_STACK_REGOUT[12] , 
            \SECURE_LABEL_STACK_OUT[12] );
    output \SECURE_LABEL_STACK_REGOUT[0] ;
    input cpu_fpga_clk_c;
    input \SECURE_LABEL_STACK_OUT[0] ;
    output \SECURE_LABEL_STACK_REGOUT[1] ;
    input \SECURE_LABEL_STACK_OUT[1] ;
    output \SECURE_LABEL_STACK_REGOUT[2] ;
    input \SECURE_LABEL_STACK_OUT[2] ;
    output \SECURE_LABEL_STACK_REGOUT[3] ;
    input \SECURE_LABEL_STACK_OUT[3] ;
    output \SECURE_LABEL_STACK_REGOUT[4] ;
    input \SECURE_LABEL_STACK_OUT[4] ;
    output \SECURE_LABEL_STACK_REGOUT[5] ;
    input \SECURE_LABEL_STACK_OUT[5] ;
    output \SECURE_LABEL_STACK_REGOUT[6] ;
    input \SECURE_LABEL_STACK_OUT[6] ;
    output \SECURE_LABEL_STACK_REGOUT[7] ;
    input \SECURE_LABEL_STACK_OUT[7] ;
    output \SECURE_LABEL_STACK_REGOUT[8] ;
    input \SECURE_LABEL_STACK_OUT[8] ;
    output \SECURE_LABEL_STACK_REGOUT[9] ;
    input \SECURE_LABEL_STACK_OUT[9] ;
    output \SECURE_LABEL_STACK_REGOUT[10] ;
    input \SECURE_LABEL_STACK_OUT[10] ;
    output \SECURE_LABEL_STACK_REGOUT[11] ;
    input \SECURE_LABEL_STACK_OUT[11] ;
    output \SECURE_LABEL_STACK_REGOUT[12] ;
    input \SECURE_LABEL_STACK_OUT[12] ;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    FD1S3AX Q_i1 (.D(\SECURE_LABEL_STACK_OUT[0] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[0] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i1.GSR = "ENABLED";
    FD1S3AX Q_i2 (.D(\SECURE_LABEL_STACK_OUT[1] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[1] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i2.GSR = "ENABLED";
    FD1S3AX Q_i3 (.D(\SECURE_LABEL_STACK_OUT[2] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[2] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i3.GSR = "ENABLED";
    FD1S3AX Q_i4 (.D(\SECURE_LABEL_STACK_OUT[3] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[3] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i4.GSR = "ENABLED";
    FD1S3AX Q_i5 (.D(\SECURE_LABEL_STACK_OUT[4] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[4] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i5.GSR = "ENABLED";
    FD1S3AX Q_i6 (.D(\SECURE_LABEL_STACK_OUT[5] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[5] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i6.GSR = "ENABLED";
    FD1S3AX Q_i7 (.D(\SECURE_LABEL_STACK_OUT[6] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[6] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i7.GSR = "ENABLED";
    FD1S3AX Q_i8 (.D(\SECURE_LABEL_STACK_OUT[7] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[7] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i8.GSR = "ENABLED";
    FD1S3AX Q_i9 (.D(\SECURE_LABEL_STACK_OUT[8] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[8] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i9.GSR = "ENABLED";
    FD1S3AX Q_i10 (.D(\SECURE_LABEL_STACK_OUT[9] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[9] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i10.GSR = "ENABLED";
    FD1S3AX Q_i11 (.D(\SECURE_LABEL_STACK_OUT[10] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[10] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i11.GSR = "ENABLED";
    FD1S3AX Q_i12 (.D(\SECURE_LABEL_STACK_OUT[11] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[11] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i12.GSR = "ENABLED";
    FD1S3AX Q_i13 (.D(\SECURE_LABEL_STACK_OUT[12] ), .CK(cpu_fpga_clk_c), 
            .Q(\SECURE_LABEL_STACK_REGOUT[12] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=27, LSE_RCOL=55, LSE_LLINE=164, LSE_RLINE=164 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i13.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(16) 
//

module \REGISTER_GENERIC(16)  (SECURE_REGISTER_STACK_REGOUT, cpu_fpga_clk_c, 
            SECURE_REGISTER_STACK_OUT);
    output [15:0]SECURE_REGISTER_STACK_REGOUT;
    input cpu_fpga_clk_c;
    input [15:0]SECURE_REGISTER_STACK_OUT;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    FD1S3AX Q_i0 (.D(SECURE_REGISTER_STACK_OUT[0]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0.GSR = "ENABLED";
    FD1S3AX Q_i1 (.D(SECURE_REGISTER_STACK_OUT[1]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i1.GSR = "ENABLED";
    FD1S3AX Q_i2 (.D(SECURE_REGISTER_STACK_OUT[2]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i2.GSR = "ENABLED";
    FD1S3AX Q_i3 (.D(SECURE_REGISTER_STACK_OUT[3]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i3.GSR = "ENABLED";
    FD1S3AX Q_i4 (.D(SECURE_REGISTER_STACK_OUT[4]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i4.GSR = "ENABLED";
    FD1S3AX Q_i5 (.D(SECURE_REGISTER_STACK_OUT[5]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i5.GSR = "ENABLED";
    FD1S3AX Q_i6 (.D(SECURE_REGISTER_STACK_OUT[6]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i6.GSR = "ENABLED";
    FD1S3AX Q_i7 (.D(SECURE_REGISTER_STACK_OUT[7]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i7.GSR = "ENABLED";
    FD1S3AX Q_i8 (.D(SECURE_REGISTER_STACK_OUT[8]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[8])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i8.GSR = "ENABLED";
    FD1S3AX Q_i9 (.D(SECURE_REGISTER_STACK_OUT[9]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[9])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i9.GSR = "ENABLED";
    FD1S3AX Q_i10 (.D(SECURE_REGISTER_STACK_OUT[10]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[10])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i10.GSR = "ENABLED";
    FD1S3AX Q_i11 (.D(SECURE_REGISTER_STACK_OUT[11]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[11])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i11.GSR = "ENABLED";
    FD1S3AX Q_i12 (.D(SECURE_REGISTER_STACK_OUT[12]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[12])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i12.GSR = "ENABLED";
    FD1S3AX Q_i13 (.D(SECURE_REGISTER_STACK_OUT[13]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[13])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i13.GSR = "ENABLED";
    FD1S3AX Q_i14 (.D(SECURE_REGISTER_STACK_OUT[14]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[14])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i14.GSR = "ENABLED";
    FD1S3AX Q_i15 (.D(SECURE_REGISTER_STACK_OUT[15]), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_REGOUT[15])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=30, LSE_RCOL=58, LSE_LLINE=187, LSE_RLINE=187 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i15.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module INPUT_DETECTOR
//

module INPUT_DETECTOR (STATE, ID_DATAOUT, cpu_fpga_clk_c, cpu_fpga_bus_d_c_8, 
            cpu_fpga_bus_d_c_7, cpu_fpga_bus_d_c_6, cpu_fpga_bus_d_c_5, 
            cpu_fpga_bus_d_c_4, INPUT_DETECTED, cpu_fpga_clk_c_enable_7, 
            n4390, cpu_fpga_bus_d_c_3, cpu_fpga_bus_a_c_0, cpu_fpga_bus_ne1_c, 
            STATE_1__N_195_c_0, cpu_fpga_bus_d_c_2, OPCODE, n4299, cpu_fpga_rst_c, 
            n3910, n10, n1950, cpu_fpga_bus_d_c_1, cpu_fpga_bus_a_c_2, 
            cpu_fpga_bus_a_c_1, cpu_fpga_bus_d_c_15, cpu_fpga_bus_d_c_0, 
            cpu_fpga_bus_d_c_14, cpu_fpga_bus_d_c_13, n2990, n994, cpu_fpga_bus_d_c_12, 
            cpu_fpga_bus_d_c_11, cpu_fpga_bus_d_c_10, cpu_fpga_bus_d_c_9);
    output [1:0]STATE;
    output [15:0]ID_DATAOUT;
    input cpu_fpga_clk_c;
    input cpu_fpga_bus_d_c_8;
    input cpu_fpga_bus_d_c_7;
    input cpu_fpga_bus_d_c_6;
    input cpu_fpga_bus_d_c_5;
    input cpu_fpga_bus_d_c_4;
    output INPUT_DETECTED;
    input cpu_fpga_clk_c_enable_7;
    input n4390;
    input cpu_fpga_bus_d_c_3;
    input cpu_fpga_bus_a_c_0;
    input cpu_fpga_bus_ne1_c;
    input STATE_1__N_195_c_0;
    input cpu_fpga_bus_d_c_2;
    output [2:0]OPCODE;
    output n4299;
    input cpu_fpga_rst_c;
    output n3910;
    output n10;
    output n1950;
    input cpu_fpga_bus_d_c_1;
    input cpu_fpga_bus_a_c_2;
    input cpu_fpga_bus_a_c_1;
    input cpu_fpga_bus_d_c_15;
    input cpu_fpga_bus_d_c_0;
    input cpu_fpga_bus_d_c_14;
    input cpu_fpga_bus_d_c_13;
    input n2990;
    output n994;
    input cpu_fpga_bus_d_c_12;
    input cpu_fpga_bus_d_c_11;
    input cpu_fpga_bus_d_c_10;
    input cpu_fpga_bus_d_c_9;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    wire [1:0]STATE_c;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(23[9:14])
    
    wire n2775, cpu_fpga_clk_c_enable_50, n4287;
    wire [1:0]STATE_1__N_188;
    wire [2:0]OPC;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(26[9:12])
    
    wire cpu_fpga_clk_c_enable_25, n2774;
    wire [1:0]STATE_1__N_195;
    
    LUT4 i1572_2_lut_2_lut (.A(STATE[1]), .B(STATE_c[0]), .Z(n2775)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1572_2_lut_2_lut.init = 16'h2222;
    FD1P3IX DATAOUT_i8 (.D(cpu_fpga_bus_d_c_8), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[8])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i8.GSR = "ENABLED";
    FD1P3IX DATAOUT_i7 (.D(cpu_fpga_bus_d_c_7), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i7.GSR = "ENABLED";
    FD1P3IX DATAOUT_i6 (.D(cpu_fpga_bus_d_c_6), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i6.GSR = "ENABLED";
    FD1P3IX DATAOUT_i5 (.D(cpu_fpga_bus_d_c_5), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i5.GSR = "ENABLED";
    FD1P3IX DATAOUT_i4 (.D(cpu_fpga_bus_d_c_4), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i4.GSR = "ENABLED";
    FD1P3IX INPUT_DETECTED_28 (.D(n4390), .SP(cpu_fpga_clk_c_enable_7), 
            .CD(n4287), .CK(cpu_fpga_clk_c), .Q(INPUT_DETECTED)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam INPUT_DETECTED_28.GSR = "ENABLED";
    FD1S3AX STATE_i0 (.D(STATE_1__N_188[0]), .CK(cpu_fpga_clk_c), .Q(STATE_c[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam STATE_i0.GSR = "ENABLED";
    FD1P3IX DATAOUT_i3 (.D(cpu_fpga_bus_d_c_3), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i3.GSR = "ENABLED";
    FD1P3IX OPC_i0 (.D(cpu_fpga_bus_a_c_0), .SP(cpu_fpga_clk_c_enable_25), 
            .CD(n2774), .CK(cpu_fpga_clk_c), .Q(OPC[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam OPC_i0.GSR = "ENABLED";
    LUT4 STATE_1__I_0_31_Mux_0_i3_4_lut (.A(cpu_fpga_bus_ne1_c), .B(STATE_1__N_195_c_0), 
         .C(STATE[1]), .D(STATE_c[0]), .Z(STATE_1__N_188[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B (C)+!B !((D)+!C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(43[4] 72[13])
    defparam STATE_1__I_0_31_Mux_0_i3_4_lut.init = 16'h3f05;
    FD1P3IX DATAOUT_i2 (.D(cpu_fpga_bus_d_c_2), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_78 (.A(OPCODE[1]), .B(OPCODE[0]), .Z(n4299)) /* synthesis lut_function=(A+!(B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i1_2_lut_rep_78.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut (.A(OPCODE[1]), .B(OPCODE[0]), .C(cpu_fpga_rst_c), 
         .D(OPCODE[2]), .Z(n3910)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i1_3_lut_4_lut.init = 16'hfffb;
    LUT4 i16_3_lut_4_lut_3_lut (.A(OPCODE[1]), .B(OPCODE[0]), .C(OPCODE[2]), 
         .Z(n10)) /* synthesis lut_function=(!(A (C)+!A (B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i16_3_lut_4_lut_3_lut.init = 16'h1b1b;
    LUT4 i1_2_lut (.A(OPCODE[1]), .B(OPCODE[0]), .Z(n1950)) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX DATAOUT_i1 (.D(cpu_fpga_bus_d_c_1), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i1.GSR = "ENABLED";
    FD1P3IX OPCODE_i2 (.D(OPC[2]), .SP(cpu_fpga_clk_c_enable_50), .CD(n2775), 
            .CK(cpu_fpga_clk_c), .Q(OPCODE[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam OPCODE_i2.GSR = "ENABLED";
    FD1P3IX OPCODE_i1 (.D(OPC[1]), .SP(cpu_fpga_clk_c_enable_50), .CD(n2775), 
            .CK(cpu_fpga_clk_c), .Q(OPCODE[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam OPCODE_i1.GSR = "ENABLED";
    FD1P3IX OPC_i2 (.D(cpu_fpga_bus_a_c_2), .SP(cpu_fpga_clk_c_enable_25), 
            .CD(n2774), .CK(cpu_fpga_clk_c), .Q(OPC[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam OPC_i2.GSR = "ENABLED";
    FD1S3IX STATE_i1 (.D(STATE_1__N_195[1]), .CK(cpu_fpga_clk_c), .CD(n4287), 
            .Q(STATE[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam STATE_i1.GSR = "ENABLED";
    FD1P3IX OPC_i1 (.D(cpu_fpga_bus_a_c_1), .SP(cpu_fpga_clk_c_enable_25), 
            .CD(n2774), .CK(cpu_fpga_clk_c), .Q(OPC[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam OPC_i1.GSR = "ENABLED";
    LUT4 i9_1_lut (.A(STATE_1__N_195_c_0), .Z(STATE_1__N_195[1])) /* synthesis lut_function=(!(A)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(52[9:18])
    defparam i9_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_rep_75 (.A(STATE_1__N_195_c_0), .B(STATE[1]), .C(STATE_c[0]), 
         .Z(cpu_fpga_clk_c_enable_50)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut_rep_75.init = 16'h8c8c;
    LUT4 i417_1_lut_rep_66 (.A(STATE_c[0]), .Z(n4287)) /* synthesis lut_function=(!(A)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i417_1_lut_rep_66.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(STATE_c[0]), .B(STATE[1]), .Z(n2774)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    FD1P3IX DATAOUT_i15 (.D(cpu_fpga_bus_d_c_15), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[15])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i15.GSR = "ENABLED";
    LUT4 i13_3_lut_3_lut (.A(STATE_c[0]), .B(STATE[1]), .C(STATE_1__N_195_c_0), 
         .Z(cpu_fpga_clk_c_enable_25)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i13_3_lut_3_lut.init = 16'h4646;
    FD1P3IX DATAOUT_i0 (.D(cpu_fpga_bus_d_c_0), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i0.GSR = "ENABLED";
    FD1P3IX OPCODE_i0 (.D(OPC[0]), .SP(cpu_fpga_clk_c_enable_50), .CD(n2775), 
            .CK(cpu_fpga_clk_c), .Q(OPCODE[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam OPCODE_i0.GSR = "ENABLED";
    FD1P3IX DATAOUT_i14 (.D(cpu_fpga_bus_d_c_14), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[14])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i14.GSR = "ENABLED";
    FD1P3IX DATAOUT_i13 (.D(cpu_fpga_bus_d_c_13), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[13])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i13.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_41 (.A(OPCODE[2]), .B(n2990), .Z(n994)) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam i1_2_lut_adj_41.init = 16'h8888;
    FD1P3IX DATAOUT_i12 (.D(cpu_fpga_bus_d_c_12), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[12])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i12.GSR = "ENABLED";
    FD1P3IX DATAOUT_i11 (.D(cpu_fpga_bus_d_c_11), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[11])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i11.GSR = "ENABLED";
    FD1P3IX DATAOUT_i10 (.D(cpu_fpga_bus_d_c_10), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[10])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i10.GSR = "ENABLED";
    FD1P3IX DATAOUT_i9 (.D(cpu_fpga_bus_d_c_9), .SP(cpu_fpga_clk_c_enable_50), 
            .CD(n2775), .CK(cpu_fpga_clk_c), .Q(ID_DATAOUT[9])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=33, LSE_LLINE=122, LSE_RLINE=122 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/INPUT_DETECTOR.vhd(33[3] 73[10])
    defparam DATAOUT_i9.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \COMP_EQUAL_GENERIC(13)_U5 
//

module \COMP_EQUAL_GENERIC(13)_U5  (SRC_LABEL_REGOUT, \SECURE_EDGE_TABLE_REGOUT[1] , 
            \SECURE_EDGE_TABLE_REGOUT[0] , GND_net, EDGE_VALID, \SECURE_EDGE_TABLE_REGOUT[5] , 
            \SECURE_EDGE_TABLE_REGOUT[4] , \SECURE_EDGE_TABLE_REGOUT[3] , 
            \SECURE_EDGE_TABLE_REGOUT[2] , \SECURE_EDGE_TABLE_REGOUT[9] , 
            \SECURE_EDGE_TABLE_REGOUT[8] , \SECURE_EDGE_TABLE_REGOUT[7] , 
            \SECURE_EDGE_TABLE_REGOUT[6] , \SECURE_EDGE_TABLE_REGOUT[12] , 
            \SECURE_EDGE_TABLE_REGOUT[11] , \SECURE_EDGE_TABLE_REGOUT[10] );
    input [12:0]SRC_LABEL_REGOUT;
    input \SECURE_EDGE_TABLE_REGOUT[1] ;
    input \SECURE_EDGE_TABLE_REGOUT[0] ;
    input GND_net;
    output EDGE_VALID;
    input \SECURE_EDGE_TABLE_REGOUT[5] ;
    input \SECURE_EDGE_TABLE_REGOUT[4] ;
    input \SECURE_EDGE_TABLE_REGOUT[3] ;
    input \SECURE_EDGE_TABLE_REGOUT[2] ;
    input \SECURE_EDGE_TABLE_REGOUT[9] ;
    input \SECURE_EDGE_TABLE_REGOUT[8] ;
    input \SECURE_EDGE_TABLE_REGOUT[7] ;
    input \SECURE_EDGE_TABLE_REGOUT[6] ;
    input \SECURE_EDGE_TABLE_REGOUT[12] ;
    input \SECURE_EDGE_TABLE_REGOUT[11] ;
    input \SECURE_EDGE_TABLE_REGOUT[10] ;
    
    
    wire n3672, n3671, n3670;
    
    CCU2D B_12__I_0_13 (.A0(SRC_LABEL_REGOUT[1]), .B0(\SECURE_EDGE_TABLE_REGOUT[1] ), 
          .C0(SRC_LABEL_REGOUT[0]), .D0(\SECURE_EDGE_TABLE_REGOUT[0] ), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3672), 
          .S1(EDGE_VALID));
    defparam B_12__I_0_13.INIT0 = 16'h9009;
    defparam B_12__I_0_13.INIT1 = 16'hFFFF;
    defparam B_12__I_0_13.INJECT1_0 = "YES";
    defparam B_12__I_0_13.INJECT1_1 = "NO";
    CCU2D B_12__I_0_12 (.A0(SRC_LABEL_REGOUT[5]), .B0(\SECURE_EDGE_TABLE_REGOUT[5] ), 
          .C0(SRC_LABEL_REGOUT[4]), .D0(\SECURE_EDGE_TABLE_REGOUT[4] ), 
          .A1(SRC_LABEL_REGOUT[3]), .B1(\SECURE_EDGE_TABLE_REGOUT[3] ), 
          .C1(SRC_LABEL_REGOUT[2]), .D1(\SECURE_EDGE_TABLE_REGOUT[2] ), 
          .CIN(n3671), .COUT(n3672));
    defparam B_12__I_0_12.INIT0 = 16'h9009;
    defparam B_12__I_0_12.INIT1 = 16'h9009;
    defparam B_12__I_0_12.INJECT1_0 = "YES";
    defparam B_12__I_0_12.INJECT1_1 = "YES";
    CCU2D B_12__I_0_10 (.A0(SRC_LABEL_REGOUT[9]), .B0(\SECURE_EDGE_TABLE_REGOUT[9] ), 
          .C0(SRC_LABEL_REGOUT[8]), .D0(\SECURE_EDGE_TABLE_REGOUT[8] ), 
          .A1(SRC_LABEL_REGOUT[7]), .B1(\SECURE_EDGE_TABLE_REGOUT[7] ), 
          .C1(SRC_LABEL_REGOUT[6]), .D1(\SECURE_EDGE_TABLE_REGOUT[6] ), 
          .CIN(n3670), .COUT(n3671));
    defparam B_12__I_0_10.INIT0 = 16'h9009;
    defparam B_12__I_0_10.INIT1 = 16'h9009;
    defparam B_12__I_0_10.INJECT1_0 = "YES";
    defparam B_12__I_0_10.INJECT1_1 = "YES";
    CCU2D B_12__I_0_0 (.A0(SRC_LABEL_REGOUT[12]), .B0(\SECURE_EDGE_TABLE_REGOUT[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(SRC_LABEL_REGOUT[11]), .B1(\SECURE_EDGE_TABLE_REGOUT[11] ), 
          .C1(SRC_LABEL_REGOUT[10]), .D1(\SECURE_EDGE_TABLE_REGOUT[10] ), 
          .COUT(n3670));   // /media/sf_Shared/cfi-fpga-monitor/rtl/COMP_EQUAL_GENERIC.vhd(14[17:22])
    defparam B_12__I_0_0.INIT0 = 16'h9000;
    defparam B_12__I_0_0.INIT1 = 16'h9009;
    defparam B_12__I_0_0.INJECT1_0 = "NO";
    defparam B_12__I_0_0.INJECT1_1 = "YES";
    
endmodule
//
// Verilog Description of module ROM_16x8192
//

module ROM_16x8192 (SECURE_EDGE_REGOUT, cpu_fpga_clk_c, SECURE_EDGE_TABLE_CE, 
            cpu_fpga_rst_c, \SECURE_EDGE_TABLE_OUT[15] , GND_net, VCC_net, 
            \SECURE_EDGE_TABLE_OUT[1] , \SECURE_EDGE_TABLE_OUT[0] , \SECURE_EDGE_TABLE_OUT[2] , 
            \SECURE_EDGE_TABLE_OUT[3] , \SECURE_EDGE_TABLE_OUT[4] , \SECURE_EDGE_TABLE_OUT[5] , 
            \SECURE_EDGE_TABLE_OUT[6] , \SECURE_EDGE_TABLE_OUT[7] , \SECURE_EDGE_TABLE_OUT[8] , 
            \SECURE_EDGE_TABLE_OUT[9] , \SECURE_EDGE_TABLE_OUT[10] , \SECURE_EDGE_TABLE_OUT[11] , 
            \SECURE_EDGE_TABLE_OUT[12] ) /* synthesis NGD_DRC_MASK=1 */ ;
    input [12:0]SECURE_EDGE_REGOUT;
    input cpu_fpga_clk_c;
    input SECURE_EDGE_TABLE_CE;
    input cpu_fpga_rst_c;
    output \SECURE_EDGE_TABLE_OUT[15] ;
    input GND_net;
    input VCC_net;
    output \SECURE_EDGE_TABLE_OUT[1] ;
    output \SECURE_EDGE_TABLE_OUT[0] ;
    output \SECURE_EDGE_TABLE_OUT[2] ;
    output \SECURE_EDGE_TABLE_OUT[3] ;
    output \SECURE_EDGE_TABLE_OUT[4] ;
    output \SECURE_EDGE_TABLE_OUT[5] ;
    output \SECURE_EDGE_TABLE_OUT[6] ;
    output \SECURE_EDGE_TABLE_OUT[7] ;
    output \SECURE_EDGE_TABLE_OUT[8] ;
    output \SECURE_EDGE_TABLE_OUT[9] ;
    output \SECURE_EDGE_TABLE_OUT[10] ;
    output \SECURE_EDGE_TABLE_OUT[11] ;
    output \SECURE_EDGE_TABLE_OUT[12] ;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    DP8KC ROM_16x8192_0_15_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[15] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_15_0.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_15_0.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_15_0.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_15_0.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_15_0.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_15_0.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_15_0.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_15_0.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_15_0.GSR = "ENABLED";
    defparam ROM_16x8192_0_15_0.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_15_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_15_0.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_15_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_15_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_14 = "0x00000000000000000800000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_15_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_1_14 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[1] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_1_14.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_1_14.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_1_14.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_1_14.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_1_14.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_1_14.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_1_14.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_1_14.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_1_14.GSR = "ENABLED";
    defparam ROM_16x8192_0_1_14.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_1_14.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_1_14.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_1_14.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_1_14.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_1_14.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_0_15 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[0] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_0_15.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_0_15.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_0_15.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_0_15.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_0_15.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_0_15.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_0_15.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_0_15.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_0_15.GSR = "ENABLED";
    defparam ROM_16x8192_0_0_15.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_0_15.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_0_15.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_0_15.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_0_15.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_2_13 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[2] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_2_13.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_2_13.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_2_13.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_2_13.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_2_13.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_2_13.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_2_13.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_2_13.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_2_13.GSR = "ENABLED";
    defparam ROM_16x8192_0_2_13.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_2_13.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_2_13.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_2_13.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_2_13.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_3_12 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[3] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_3_12.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_3_12.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_3_12.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_3_12.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_3_12.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_3_12.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_3_12.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_3_12.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_3_12.GSR = "ENABLED";
    defparam ROM_16x8192_0_3_12.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_3_12.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_3_12.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_3_12.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_14 = "0x00000000000000000800000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_3_12.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_4_11 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[4] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_4_11.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_4_11.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_4_11.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_4_11.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_4_11.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_4_11.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_4_11.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_4_11.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_4_11.GSR = "ENABLED";
    defparam ROM_16x8192_0_4_11.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_4_11.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_4_11.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_4_11.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_4_11.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_14 = "0x00000000000000000000000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_4_11.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_5_10 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[5] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_5_10.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_5_10.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_5_10.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_5_10.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_5_10.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_5_10.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_5_10.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_5_10.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_5_10.GSR = "ENABLED";
    defparam ROM_16x8192_0_5_10.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_5_10.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_5_10.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_5_10.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_5_10.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_14 = "0x00000000000000000800000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_5_10.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_6_9 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[6] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_6_9.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_6_9.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_6_9.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_6_9.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_6_9.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_6_9.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_6_9.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_6_9.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_6_9.GSR = "ENABLED";
    defparam ROM_16x8192_0_6_9.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_6_9.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_6_9.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_6_9.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_6_9.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_14 = "0x00000000000000000800000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_6_9.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_7_8 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[7] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_7_8.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_7_8.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_7_8.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_7_8.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_7_8.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_7_8.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_7_8.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_7_8.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_7_8.GSR = "ENABLED";
    defparam ROM_16x8192_0_7_8.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_7_8.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_7_8.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_7_8.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_7_8.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_14 = "0x00000000000000000000000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_7_8.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_8_7 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[8] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_8_7.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_8_7.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_8_7.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_8_7.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_8_7.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_8_7.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_8_7.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_8_7.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_8_7.GSR = "ENABLED";
    defparam ROM_16x8192_0_8_7.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_8_7.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_8_7.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_8_7.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_14 = "0x00000000000000000000000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_8_7.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_9_6 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[9] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_9_6.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_9_6.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_9_6.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_9_6.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_9_6.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_9_6.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_9_6.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_9_6.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_9_6.GSR = "ENABLED";
    defparam ROM_16x8192_0_9_6.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_9_6.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_9_6.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_9_6.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_14 = "0x00000000000000000800000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_9_6.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_10_5 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[10] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_10_5.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_10_5.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_10_5.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_10_5.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_10_5.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_10_5.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_10_5.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_10_5.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_10_5.GSR = "ENABLED";
    defparam ROM_16x8192_0_10_5.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_10_5.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_10_5.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_10_5.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000100000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_14 = "0x00000000000000000800000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_10_5.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_11_4 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[11] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_11_4.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_11_4.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_11_4.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_11_4.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_11_4.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_11_4.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_11_4.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_11_4.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_11_4.GSR = "ENABLED";
    defparam ROM_16x8192_0_11_4.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_11_4.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_11_4.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_11_4.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000010000";
    defparam ROM_16x8192_0_11_4.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_05 = "0x00000000000040000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000080000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_0E = "0x00000000000000000000000000000000000000000040000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000040000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_14 = "0x00000000000000000000000000000010000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_1C = "0x00000000000200000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_11_4.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC ROM_16x8192_0_12_3 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), 
          .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), 
          .DIA7(GND_net), .DIA8(GND_net), .ADA0(SECURE_EDGE_REGOUT[0]), 
          .ADA1(SECURE_EDGE_REGOUT[1]), .ADA2(SECURE_EDGE_REGOUT[2]), .ADA3(SECURE_EDGE_REGOUT[3]), 
          .ADA4(SECURE_EDGE_REGOUT[4]), .ADA5(SECURE_EDGE_REGOUT[5]), .ADA6(SECURE_EDGE_REGOUT[6]), 
          .ADA7(SECURE_EDGE_REGOUT[7]), .ADA8(SECURE_EDGE_REGOUT[8]), .ADA9(SECURE_EDGE_REGOUT[9]), 
          .ADA10(SECURE_EDGE_REGOUT[10]), .ADA11(SECURE_EDGE_REGOUT[11]), 
          .ADA12(SECURE_EDGE_REGOUT[12]), .CEA(SECURE_EDGE_TABLE_CE), .OCEA(SECURE_EDGE_TABLE_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(GND_net), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_EDGE_TABLE_OUT[12] )) /* synthesis MEM_LPC_FILE="ROM_16x8192.lpc", MEM_INIT_FILE="secure_edge_table.mem", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=22, LSE_RCOL=45, LSE_LLINE=139, LSE_RLINE=139 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(139[22:45])
    defparam ROM_16x8192_0_12_3.DATA_WIDTH_A = 1;
    defparam ROM_16x8192_0_12_3.DATA_WIDTH_B = 1;
    defparam ROM_16x8192_0_12_3.REGMODE_A = "NOREG";
    defparam ROM_16x8192_0_12_3.REGMODE_B = "NOREG";
    defparam ROM_16x8192_0_12_3.CSDECODE_A = "0b000";
    defparam ROM_16x8192_0_12_3.CSDECODE_B = "0b111";
    defparam ROM_16x8192_0_12_3.WRITEMODE_A = "NORMAL";
    defparam ROM_16x8192_0_12_3.WRITEMODE_B = "NORMAL";
    defparam ROM_16x8192_0_12_3.GSR = "ENABLED";
    defparam ROM_16x8192_0_12_3.RESETMODE = "ASYNC";
    defparam ROM_16x8192_0_12_3.ASYNC_RESET_RELEASE = "SYNC";
    defparam ROM_16x8192_0_12_3.INIT_DATA = "STATIC";
    defparam ROM_16x8192_0_12_3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000008000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_16 = "0x00020000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam ROM_16x8192_0_12_3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(10)_U1 
//

module \REGISTER_GENERIC(10)_U1  (SECURE_LABEL_STACK_PTR_OUT, cpu_fpga_clk_c, 
            SECURE_LABEL_STACK_PTR_CE, SECURE_LABEL_STACK_PTR_INC_DEC, GND_net);
    output [9:0]SECURE_LABEL_STACK_PTR_OUT;
    input cpu_fpga_clk_c;
    input SECURE_LABEL_STACK_PTR_CE;
    input SECURE_LABEL_STACK_PTR_INC_DEC;
    input GND_net;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    wire [9:0]n45;
    
    wire n3711, n3712, n3713, n3710, n3709;
    
    FD1P3AX Q_360__i0 (.D(n45[0]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i0.GSR = "ENABLED";
    CCU2D Q_360_add_4_7 (.A0(SECURE_LABEL_STACK_PTR_INC_DEC), .B0(SECURE_LABEL_STACK_PTR_OUT[5]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_LABEL_STACK_PTR_INC_DEC), 
          .B1(SECURE_LABEL_STACK_PTR_OUT[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3711), .COUT(n3712), .S0(n45[5]), .S1(n45[6]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360_add_4_7.INIT0 = 16'h5666;
    defparam Q_360_add_4_7.INIT1 = 16'h5666;
    defparam Q_360_add_4_7.INJECT1_0 = "NO";
    defparam Q_360_add_4_7.INJECT1_1 = "NO";
    CCU2D Q_360_add_4_11 (.A0(SECURE_LABEL_STACK_PTR_INC_DEC), .B0(SECURE_LABEL_STACK_PTR_OUT[9]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3713), .S0(n45[9]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360_add_4_11.INIT0 = 16'h5666;
    defparam Q_360_add_4_11.INIT1 = 16'h0000;
    defparam Q_360_add_4_11.INJECT1_0 = "NO";
    defparam Q_360_add_4_11.INJECT1_1 = "NO";
    FD1P3AX Q_360__i1 (.D(n45[1]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i1.GSR = "ENABLED";
    FD1P3AX Q_360__i2 (.D(n45[2]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i2.GSR = "ENABLED";
    FD1P3AX Q_360__i3 (.D(n45[3]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i3.GSR = "ENABLED";
    FD1P3AX Q_360__i4 (.D(n45[4]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i4.GSR = "ENABLED";
    FD1P3AX Q_360__i5 (.D(n45[5]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i5.GSR = "ENABLED";
    FD1P3AX Q_360__i6 (.D(n45[6]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i6.GSR = "ENABLED";
    FD1P3AX Q_360__i7 (.D(n45[7]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i7.GSR = "ENABLED";
    FD1P3AX Q_360__i8 (.D(n45[8]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i8.GSR = "ENABLED";
    FD1P3AX Q_360__i9 (.D(n45[9]), .SP(SECURE_LABEL_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_LABEL_STACK_PTR_OUT[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360__i9.GSR = "ENABLED";
    CCU2D Q_360_add_4_5 (.A0(SECURE_LABEL_STACK_PTR_INC_DEC), .B0(SECURE_LABEL_STACK_PTR_OUT[3]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_LABEL_STACK_PTR_INC_DEC), 
          .B1(SECURE_LABEL_STACK_PTR_OUT[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3710), .COUT(n3711), .S0(n45[3]), .S1(n45[4]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360_add_4_5.INIT0 = 16'h5666;
    defparam Q_360_add_4_5.INIT1 = 16'h5666;
    defparam Q_360_add_4_5.INJECT1_0 = "NO";
    defparam Q_360_add_4_5.INJECT1_1 = "NO";
    CCU2D Q_360_add_4_9 (.A0(SECURE_LABEL_STACK_PTR_INC_DEC), .B0(SECURE_LABEL_STACK_PTR_OUT[7]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_LABEL_STACK_PTR_INC_DEC), 
          .B1(SECURE_LABEL_STACK_PTR_OUT[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3712), .COUT(n3713), .S0(n45[7]), .S1(n45[8]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360_add_4_9.INIT0 = 16'h5666;
    defparam Q_360_add_4_9.INIT1 = 16'h5666;
    defparam Q_360_add_4_9.INJECT1_0 = "NO";
    defparam Q_360_add_4_9.INJECT1_1 = "NO";
    CCU2D Q_360_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SECURE_LABEL_STACK_PTR_OUT[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3709), .S1(n45[0]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360_add_4_1.INIT0 = 16'hF000;
    defparam Q_360_add_4_1.INIT1 = 16'h0555;
    defparam Q_360_add_4_1.INJECT1_0 = "NO";
    defparam Q_360_add_4_1.INJECT1_1 = "NO";
    CCU2D Q_360_add_4_3 (.A0(SECURE_LABEL_STACK_PTR_INC_DEC), .B0(SECURE_LABEL_STACK_PTR_OUT[1]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_LABEL_STACK_PTR_INC_DEC), 
          .B1(SECURE_LABEL_STACK_PTR_OUT[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3709), .COUT(n3710), .S0(n45[1]), .S1(n45[2]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_360_add_4_3.INIT0 = 16'h5666;
    defparam Q_360_add_4_3.INIT1 = 16'h5666;
    defparam Q_360_add_4_3.INJECT1_0 = "NO";
    defparam Q_360_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(10) 
//

module \REGISTER_GENERIC(10)  (GND_net, SECURE_REGISTER_STACK_PTR_OUT, cpu_fpga_clk_c, 
            SECURE_REGISTER_STACK_PTR_CE, SECURE_REGISTER_STACK_PTR_INC_DEC);
    input GND_net;
    output [9:0]SECURE_REGISTER_STACK_PTR_OUT;
    input cpu_fpga_clk_c;
    input SECURE_REGISTER_STACK_PTR_CE;
    input SECURE_REGISTER_STACK_PTR_INC_DEC;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    wire [9:0]n45;
    
    wire n3714, n3718, n3717, n3716, n3715;
    
    CCU2D Q_362_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SECURE_REGISTER_STACK_PTR_OUT[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n3714), .S1(n45[0]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362_add_4_1.INIT0 = 16'hF000;
    defparam Q_362_add_4_1.INIT1 = 16'h0555;
    defparam Q_362_add_4_1.INJECT1_0 = "NO";
    defparam Q_362_add_4_1.INJECT1_1 = "NO";
    FD1P3AX Q_362__i0 (.D(n45[0]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i0.GSR = "ENABLED";
    CCU2D Q_362_add_4_11 (.A0(SECURE_REGISTER_STACK_PTR_INC_DEC), .B0(SECURE_REGISTER_STACK_PTR_OUT[9]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3718), .S0(n45[9]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362_add_4_11.INIT0 = 16'h5666;
    defparam Q_362_add_4_11.INIT1 = 16'h0000;
    defparam Q_362_add_4_11.INJECT1_0 = "NO";
    defparam Q_362_add_4_11.INJECT1_1 = "NO";
    CCU2D Q_362_add_4_9 (.A0(SECURE_REGISTER_STACK_PTR_INC_DEC), .B0(SECURE_REGISTER_STACK_PTR_OUT[7]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_REGISTER_STACK_PTR_INC_DEC), 
          .B1(SECURE_REGISTER_STACK_PTR_OUT[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3717), .COUT(n3718), .S0(n45[7]), .S1(n45[8]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362_add_4_9.INIT0 = 16'h5666;
    defparam Q_362_add_4_9.INIT1 = 16'h5666;
    defparam Q_362_add_4_9.INJECT1_0 = "NO";
    defparam Q_362_add_4_9.INJECT1_1 = "NO";
    CCU2D Q_362_add_4_7 (.A0(SECURE_REGISTER_STACK_PTR_INC_DEC), .B0(SECURE_REGISTER_STACK_PTR_OUT[5]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_REGISTER_STACK_PTR_INC_DEC), 
          .B1(SECURE_REGISTER_STACK_PTR_OUT[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3716), .COUT(n3717), .S0(n45[5]), .S1(n45[6]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362_add_4_7.INIT0 = 16'h5666;
    defparam Q_362_add_4_7.INIT1 = 16'h5666;
    defparam Q_362_add_4_7.INJECT1_0 = "NO";
    defparam Q_362_add_4_7.INJECT1_1 = "NO";
    CCU2D Q_362_add_4_5 (.A0(SECURE_REGISTER_STACK_PTR_INC_DEC), .B0(SECURE_REGISTER_STACK_PTR_OUT[3]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_REGISTER_STACK_PTR_INC_DEC), 
          .B1(SECURE_REGISTER_STACK_PTR_OUT[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3715), .COUT(n3716), .S0(n45[3]), .S1(n45[4]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362_add_4_5.INIT0 = 16'h5666;
    defparam Q_362_add_4_5.INIT1 = 16'h5666;
    defparam Q_362_add_4_5.INJECT1_0 = "NO";
    defparam Q_362_add_4_5.INJECT1_1 = "NO";
    CCU2D Q_362_add_4_3 (.A0(SECURE_REGISTER_STACK_PTR_INC_DEC), .B0(SECURE_REGISTER_STACK_PTR_OUT[1]), 
          .C0(GND_net), .D0(GND_net), .A1(SECURE_REGISTER_STACK_PTR_INC_DEC), 
          .B1(SECURE_REGISTER_STACK_PTR_OUT[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3714), .COUT(n3715), .S0(n45[1]), .S1(n45[2]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362_add_4_3.INIT0 = 16'h5666;
    defparam Q_362_add_4_3.INIT1 = 16'h5666;
    defparam Q_362_add_4_3.INJECT1_0 = "NO";
    defparam Q_362_add_4_3.INJECT1_1 = "NO";
    FD1P3AX Q_362__i1 (.D(n45[1]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i1.GSR = "ENABLED";
    FD1P3AX Q_362__i2 (.D(n45[2]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i2.GSR = "ENABLED";
    FD1P3AX Q_362__i3 (.D(n45[3]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i3.GSR = "ENABLED";
    FD1P3AX Q_362__i4 (.D(n45[4]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i4.GSR = "ENABLED";
    FD1P3AX Q_362__i5 (.D(n45[5]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i5.GSR = "ENABLED";
    FD1P3AX Q_362__i6 (.D(n45[6]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i6.GSR = "ENABLED";
    FD1P3AX Q_362__i7 (.D(n45[7]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i7.GSR = "ENABLED";
    FD1P3AX Q_362__i8 (.D(n45[8]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i8.GSR = "ENABLED";
    FD1P3AX Q_362__i9 (.D(n45[9]), .SP(SECURE_REGISTER_STACK_PTR_CE), .CK(cpu_fpga_clk_c), 
            .Q(SECURE_REGISTER_STACK_PTR_OUT[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(22[4] 24[11])
    defparam Q_362__i9.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(13) 
//

module \REGISTER_GENERIC(13)  (SRC_LABEL_REGOUT, cpu_fpga_clk_c, SRC_LABEL_REG_CE, 
            \ID_DATAOUT[0] , \ID_DATAOUT[1] , \ID_DATAOUT[2] , \ID_DATAOUT[3] , 
            \ID_DATAOUT[4] , \ID_DATAOUT[5] , \ID_DATAOUT[6] , \ID_DATAOUT[7] , 
            \ID_DATAOUT[8] , \ID_DATAOUT[9] , \ID_DATAOUT[10] , \ID_DATAOUT[11] , 
            \ID_DATAOUT[12] );
    output [12:0]SRC_LABEL_REGOUT;
    input cpu_fpga_clk_c;
    input SRC_LABEL_REG_CE;
    input \ID_DATAOUT[0] ;
    input \ID_DATAOUT[1] ;
    input \ID_DATAOUT[2] ;
    input \ID_DATAOUT[3] ;
    input \ID_DATAOUT[4] ;
    input \ID_DATAOUT[5] ;
    input \ID_DATAOUT[6] ;
    input \ID_DATAOUT[7] ;
    input \ID_DATAOUT[8] ;
    input \ID_DATAOUT[9] ;
    input \ID_DATAOUT[10] ;
    input \ID_DATAOUT[11] ;
    input \ID_DATAOUT[12] ;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    FD1P3AX Q_i0_i0 (.D(\ID_DATAOUT[0] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i0.GSR = "ENABLED";
    FD1P3AX Q_i0_i1 (.D(\ID_DATAOUT[1] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i1.GSR = "ENABLED";
    FD1P3AX Q_i0_i2 (.D(\ID_DATAOUT[2] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i2.GSR = "ENABLED";
    FD1P3AX Q_i0_i3 (.D(\ID_DATAOUT[3] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i3.GSR = "ENABLED";
    FD1P3AX Q_i0_i4 (.D(\ID_DATAOUT[4] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i4.GSR = "ENABLED";
    FD1P3AX Q_i0_i5 (.D(\ID_DATAOUT[5] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i5.GSR = "ENABLED";
    FD1P3AX Q_i0_i6 (.D(\ID_DATAOUT[6] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i6.GSR = "ENABLED";
    FD1P3AX Q_i0_i7 (.D(\ID_DATAOUT[7] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i7.GSR = "ENABLED";
    FD1P3AX Q_i0_i8 (.D(\ID_DATAOUT[8] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[8])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i8.GSR = "ENABLED";
    FD1P3AX Q_i0_i9 (.D(\ID_DATAOUT[9] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[9])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i9.GSR = "ENABLED";
    FD1P3AX Q_i0_i10 (.D(\ID_DATAOUT[10] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[10])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i10.GSR = "ENABLED";
    FD1P3AX Q_i0_i11 (.D(\ID_DATAOUT[11] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[11])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i11.GSR = "ENABLED";
    FD1P3AX Q_i0_i12 (.D(\ID_DATAOUT[12] ), .SP(SRC_LABEL_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(SRC_LABEL_REGOUT[12])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=18, LSE_RCOL=46, LSE_LLINE=132, LSE_RLINE=132 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i12.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \COMP_EQUAL_GENERIC(4) 
//

module \COMP_EQUAL_GENERIC(4)  (TIMER_REGOUT, n4030, n2985);
    input [3:0]TIMER_REGOUT;
    output n4030;
    output n2985;
    
    
    LUT4 i1_4_lut (.A(TIMER_REGOUT[2]), .B(TIMER_REGOUT[3]), .C(TIMER_REGOUT[1]), 
         .D(TIMER_REGOUT[0]), .Z(n4030)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_40 (.A(TIMER_REGOUT[0]), .B(TIMER_REGOUT[1]), .C(TIMER_REGOUT[3]), 
         .D(TIMER_REGOUT[2]), .Z(n2985)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_40.init = 16'hf7ff;
    
endmodule
//
// Verilog Description of module \COMP_EQUAL_GENERIC(16) 
//

module \COMP_EQUAL_GENERIC(16)  (SECURE_REGISTER_STACK_REGOUT, INPUT_REGOUT, 
            GND_net, REGISTER_VALID);
    input [15:0]SECURE_REGISTER_STACK_REGOUT;
    input [15:0]INPUT_REGOUT;
    input GND_net;
    output REGISTER_VALID;
    
    
    wire n3678, n3679, n3677, n3676;
    
    CCU2D B_15__I_0_15 (.A0(SECURE_REGISTER_STACK_REGOUT[5]), .B0(INPUT_REGOUT[5]), 
          .C0(SECURE_REGISTER_STACK_REGOUT[4]), .D0(INPUT_REGOUT[4]), .A1(SECURE_REGISTER_STACK_REGOUT[3]), 
          .B1(INPUT_REGOUT[3]), .C1(SECURE_REGISTER_STACK_REGOUT[2]), .D1(INPUT_REGOUT[2]), 
          .CIN(n3678), .COUT(n3679));
    defparam B_15__I_0_15.INIT0 = 16'h9009;
    defparam B_15__I_0_15.INIT1 = 16'h9009;
    defparam B_15__I_0_15.INJECT1_0 = "YES";
    defparam B_15__I_0_15.INJECT1_1 = "YES";
    CCU2D B_15__I_0_13 (.A0(SECURE_REGISTER_STACK_REGOUT[9]), .B0(INPUT_REGOUT[9]), 
          .C0(SECURE_REGISTER_STACK_REGOUT[8]), .D0(INPUT_REGOUT[8]), .A1(SECURE_REGISTER_STACK_REGOUT[7]), 
          .B1(INPUT_REGOUT[7]), .C1(SECURE_REGISTER_STACK_REGOUT[6]), .D1(INPUT_REGOUT[6]), 
          .CIN(n3677), .COUT(n3678));
    defparam B_15__I_0_13.INIT0 = 16'h9009;
    defparam B_15__I_0_13.INIT1 = 16'h9009;
    defparam B_15__I_0_13.INJECT1_0 = "YES";
    defparam B_15__I_0_13.INJECT1_1 = "YES";
    CCU2D B_15__I_0_11 (.A0(SECURE_REGISTER_STACK_REGOUT[13]), .B0(INPUT_REGOUT[13]), 
          .C0(SECURE_REGISTER_STACK_REGOUT[12]), .D0(INPUT_REGOUT[12]), 
          .A1(SECURE_REGISTER_STACK_REGOUT[11]), .B1(INPUT_REGOUT[11]), 
          .C1(SECURE_REGISTER_STACK_REGOUT[10]), .D1(INPUT_REGOUT[10]), 
          .CIN(n3676), .COUT(n3677));
    defparam B_15__I_0_11.INIT0 = 16'h9009;
    defparam B_15__I_0_11.INIT1 = 16'h9009;
    defparam B_15__I_0_11.INJECT1_0 = "YES";
    defparam B_15__I_0_11.INJECT1_1 = "YES";
    CCU2D B_15__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(SECURE_REGISTER_STACK_REGOUT[15]), .B1(INPUT_REGOUT[15]), 
          .C1(SECURE_REGISTER_STACK_REGOUT[14]), .D1(INPUT_REGOUT[14]), 
          .COUT(n3676));   // /media/sf_Shared/cfi-fpga-monitor/rtl/COMP_EQUAL_GENERIC.vhd(14[17:22])
    defparam B_15__I_0_0.INIT0 = 16'hF000;
    defparam B_15__I_0_0.INIT1 = 16'h9009;
    defparam B_15__I_0_0.INJECT1_0 = "NO";
    defparam B_15__I_0_0.INJECT1_1 = "YES";
    CCU2D B_15__I_0_16 (.A0(SECURE_REGISTER_STACK_REGOUT[1]), .B0(INPUT_REGOUT[1]), 
          .C0(SECURE_REGISTER_STACK_REGOUT[0]), .D0(INPUT_REGOUT[0]), .A1(GND_net), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3679), .S1(REGISTER_VALID));
    defparam B_15__I_0_16.INIT0 = 16'h9009;
    defparam B_15__I_0_16.INIT1 = 16'hFFFF;
    defparam B_15__I_0_16.INJECT1_0 = "YES";
    defparam B_15__I_0_16.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \REGISTER_GENERIC(16)_U6 
//

module \REGISTER_GENERIC(16)_U6  (INPUT_REGOUT, cpu_fpga_clk_c, INPUT_REG_CE, 
            ID_DATAOUT);
    output [15:0]INPUT_REGOUT;
    input cpu_fpga_clk_c;
    input INPUT_REG_CE;
    input [15:0]ID_DATAOUT;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    FD1P3AX Q_i0_i0 (.D(ID_DATAOUT[0]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i0.GSR = "ENABLED";
    FD1P3AX Q_i0_i1 (.D(ID_DATAOUT[1]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i1.GSR = "ENABLED";
    FD1P3AX Q_i0_i2 (.D(ID_DATAOUT[2]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i2.GSR = "ENABLED";
    FD1P3AX Q_i0_i3 (.D(ID_DATAOUT[3]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i3.GSR = "ENABLED";
    FD1P3AX Q_i0_i4 (.D(ID_DATAOUT[4]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[4])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i4.GSR = "ENABLED";
    FD1P3AX Q_i0_i5 (.D(ID_DATAOUT[5]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[5])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i5.GSR = "ENABLED";
    FD1P3AX Q_i0_i6 (.D(ID_DATAOUT[6]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[6])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i6.GSR = "ENABLED";
    FD1P3AX Q_i0_i7 (.D(ID_DATAOUT[7]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[7])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i7.GSR = "ENABLED";
    FD1P3AX Q_i0_i8 (.D(ID_DATAOUT[8]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[8])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i8.GSR = "ENABLED";
    FD1P3AX Q_i0_i9 (.D(ID_DATAOUT[9]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[9])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i9.GSR = "ENABLED";
    FD1P3AX Q_i0_i10 (.D(ID_DATAOUT[10]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[10])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i10.GSR = "ENABLED";
    FD1P3AX Q_i0_i11 (.D(ID_DATAOUT[11]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[11])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i11.GSR = "ENABLED";
    FD1P3AX Q_i0_i12 (.D(ID_DATAOUT[12]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[12])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i12.GSR = "ENABLED";
    FD1P3AX Q_i0_i13 (.D(ID_DATAOUT[13]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[13])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i13.GSR = "ENABLED";
    FD1P3AX Q_i0_i14 (.D(ID_DATAOUT[14]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[14])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i14.GSR = "ENABLED";
    FD1P3AX Q_i0_i15 (.D(ID_DATAOUT[15]), .SP(INPUT_REG_CE), .CK(cpu_fpga_clk_c), 
            .Q(INPUT_REGOUT[15])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=14, LSE_RCOL=42, LSE_LLINE=133, LSE_RLINE=133 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/REGISTER_GENERIC.vhd(19[3] 25[10])
    defparam Q_i0_i15.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \COMP_EQUAL_GENERIC(13) 
//

module \COMP_EQUAL_GENERIC(13)  (\SECURE_LABEL_STACK_REGOUT[1] , \INPUT_REGOUT[1] , 
            \SECURE_LABEL_STACK_REGOUT[0] , \INPUT_REGOUT[0] , GND_net, 
            RETURN_VALID, \SECURE_LABEL_STACK_REGOUT[5] , \INPUT_REGOUT[5] , 
            \SECURE_LABEL_STACK_REGOUT[4] , \INPUT_REGOUT[4] , \SECURE_LABEL_STACK_REGOUT[3] , 
            \INPUT_REGOUT[3] , \SECURE_LABEL_STACK_REGOUT[2] , \INPUT_REGOUT[2] , 
            \SECURE_LABEL_STACK_REGOUT[9] , \INPUT_REGOUT[9] , \SECURE_LABEL_STACK_REGOUT[8] , 
            \INPUT_REGOUT[8] , \SECURE_LABEL_STACK_REGOUT[7] , \INPUT_REGOUT[7] , 
            \SECURE_LABEL_STACK_REGOUT[6] , \INPUT_REGOUT[6] , \SECURE_LABEL_STACK_REGOUT[12] , 
            \INPUT_REGOUT[12] , \SECURE_LABEL_STACK_REGOUT[11] , \INPUT_REGOUT[11] , 
            \SECURE_LABEL_STACK_REGOUT[10] , \INPUT_REGOUT[10] );
    input \SECURE_LABEL_STACK_REGOUT[1] ;
    input \INPUT_REGOUT[1] ;
    input \SECURE_LABEL_STACK_REGOUT[0] ;
    input \INPUT_REGOUT[0] ;
    input GND_net;
    output RETURN_VALID;
    input \SECURE_LABEL_STACK_REGOUT[5] ;
    input \INPUT_REGOUT[5] ;
    input \SECURE_LABEL_STACK_REGOUT[4] ;
    input \INPUT_REGOUT[4] ;
    input \SECURE_LABEL_STACK_REGOUT[3] ;
    input \INPUT_REGOUT[3] ;
    input \SECURE_LABEL_STACK_REGOUT[2] ;
    input \INPUT_REGOUT[2] ;
    input \SECURE_LABEL_STACK_REGOUT[9] ;
    input \INPUT_REGOUT[9] ;
    input \SECURE_LABEL_STACK_REGOUT[8] ;
    input \INPUT_REGOUT[8] ;
    input \SECURE_LABEL_STACK_REGOUT[7] ;
    input \INPUT_REGOUT[7] ;
    input \SECURE_LABEL_STACK_REGOUT[6] ;
    input \INPUT_REGOUT[6] ;
    input \SECURE_LABEL_STACK_REGOUT[12] ;
    input \INPUT_REGOUT[12] ;
    input \SECURE_LABEL_STACK_REGOUT[11] ;
    input \INPUT_REGOUT[11] ;
    input \SECURE_LABEL_STACK_REGOUT[10] ;
    input \INPUT_REGOUT[10] ;
    
    
    wire n3675, n3674, n3673;
    
    CCU2D B_12__I_0_13 (.A0(\SECURE_LABEL_STACK_REGOUT[1] ), .B0(\INPUT_REGOUT[1] ), 
          .C0(\SECURE_LABEL_STACK_REGOUT[0] ), .D0(\INPUT_REGOUT[0] ), .A1(GND_net), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3675), .S1(RETURN_VALID));
    defparam B_12__I_0_13.INIT0 = 16'h9009;
    defparam B_12__I_0_13.INIT1 = 16'hFFFF;
    defparam B_12__I_0_13.INJECT1_0 = "YES";
    defparam B_12__I_0_13.INJECT1_1 = "NO";
    CCU2D B_12__I_0_12 (.A0(\SECURE_LABEL_STACK_REGOUT[5] ), .B0(\INPUT_REGOUT[5] ), 
          .C0(\SECURE_LABEL_STACK_REGOUT[4] ), .D0(\INPUT_REGOUT[4] ), .A1(\SECURE_LABEL_STACK_REGOUT[3] ), 
          .B1(\INPUT_REGOUT[3] ), .C1(\SECURE_LABEL_STACK_REGOUT[2] ), .D1(\INPUT_REGOUT[2] ), 
          .CIN(n3674), .COUT(n3675));
    defparam B_12__I_0_12.INIT0 = 16'h9009;
    defparam B_12__I_0_12.INIT1 = 16'h9009;
    defparam B_12__I_0_12.INJECT1_0 = "YES";
    defparam B_12__I_0_12.INJECT1_1 = "YES";
    CCU2D B_12__I_0_10 (.A0(\SECURE_LABEL_STACK_REGOUT[9] ), .B0(\INPUT_REGOUT[9] ), 
          .C0(\SECURE_LABEL_STACK_REGOUT[8] ), .D0(\INPUT_REGOUT[8] ), .A1(\SECURE_LABEL_STACK_REGOUT[7] ), 
          .B1(\INPUT_REGOUT[7] ), .C1(\SECURE_LABEL_STACK_REGOUT[6] ), .D1(\INPUT_REGOUT[6] ), 
          .CIN(n3673), .COUT(n3674));
    defparam B_12__I_0_10.INIT0 = 16'h9009;
    defparam B_12__I_0_10.INIT1 = 16'h9009;
    defparam B_12__I_0_10.INJECT1_0 = "YES";
    defparam B_12__I_0_10.INJECT1_1 = "YES";
    CCU2D B_12__I_0_0 (.A0(\SECURE_LABEL_STACK_REGOUT[12] ), .B0(\INPUT_REGOUT[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\SECURE_LABEL_STACK_REGOUT[11] ), 
          .B1(\INPUT_REGOUT[11] ), .C1(\SECURE_LABEL_STACK_REGOUT[10] ), 
          .D1(\INPUT_REGOUT[10] ), .COUT(n3673));   // /media/sf_Shared/cfi-fpga-monitor/rtl/COMP_EQUAL_GENERIC.vhd(14[17:22])
    defparam B_12__I_0_0.INIT0 = 16'h9000;
    defparam B_12__I_0_0.INIT1 = 16'h9009;
    defparam B_12__I_0_0.INJECT1_0 = "NO";
    defparam B_12__I_0_0.INJECT1_1 = "YES";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAM_DQ_16x1024
//

module RAM_DQ_16x1024 (cpu_fpga_clk_c, SECURE_REGISTER_STACK_CE, cpu_fpga_rst_c, 
            SECURE_REGISTER_STACK_WE, SECURE_REGISTER_STACK_PTR_OUT, INPUT_REGOUT, 
            SECURE_REGISTER_STACK_OUT, GND_net, VCC_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input cpu_fpga_clk_c;
    input SECURE_REGISTER_STACK_CE;
    input cpu_fpga_rst_c;
    input SECURE_REGISTER_STACK_WE;
    input [9:0]SECURE_REGISTER_STACK_PTR_OUT;
    input [15:0]INPUT_REGOUT;
    output [15:0]SECURE_REGISTER_STACK_OUT;
    input GND_net;
    input VCC_net;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    DP8KC RAM_DQ_16x1024_0_1_0 (.DIA0(INPUT_REGOUT[9]), .DIA1(INPUT_REGOUT[10]), 
          .DIA2(INPUT_REGOUT[11]), .DIA3(INPUT_REGOUT[12]), .DIA4(INPUT_REGOUT[13]), 
          .DIA5(INPUT_REGOUT[14]), .DIA6(INPUT_REGOUT[15]), .DIA7(GND_net), 
          .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(SECURE_REGISTER_STACK_PTR_OUT[0]), .ADA4(SECURE_REGISTER_STACK_PTR_OUT[1]), 
          .ADA5(SECURE_REGISTER_STACK_PTR_OUT[2]), .ADA6(SECURE_REGISTER_STACK_PTR_OUT[3]), 
          .ADA7(SECURE_REGISTER_STACK_PTR_OUT[4]), .ADA8(SECURE_REGISTER_STACK_PTR_OUT[5]), 
          .ADA9(SECURE_REGISTER_STACK_PTR_OUT[6]), .ADA10(SECURE_REGISTER_STACK_PTR_OUT[7]), 
          .ADA11(SECURE_REGISTER_STACK_PTR_OUT[8]), .ADA12(SECURE_REGISTER_STACK_PTR_OUT[9]), 
          .CEA(SECURE_REGISTER_STACK_CE), .OCEA(SECURE_REGISTER_STACK_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(SECURE_REGISTER_STACK_WE), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(SECURE_REGISTER_STACK_OUT[9]), .DOA1(SECURE_REGISTER_STACK_OUT[10]), 
          .DOA2(SECURE_REGISTER_STACK_OUT[11]), .DOA3(SECURE_REGISTER_STACK_OUT[12]), 
          .DOA4(SECURE_REGISTER_STACK_OUT[13]), .DOA5(SECURE_REGISTER_STACK_OUT[14]), 
          .DOA6(SECURE_REGISTER_STACK_OUT[15])) /* synthesis MEM_LPC_FILE="RAM_DQ_16x1024.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=52, LSE_LLINE=180, LSE_RLINE=180 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(180[26:52])
    defparam RAM_DQ_16x1024_0_1_0.DATA_WIDTH_A = 9;
    defparam RAM_DQ_16x1024_0_1_0.DATA_WIDTH_B = 9;
    defparam RAM_DQ_16x1024_0_1_0.REGMODE_A = "NOREG";
    defparam RAM_DQ_16x1024_0_1_0.REGMODE_B = "NOREG";
    defparam RAM_DQ_16x1024_0_1_0.CSDECODE_A = "0b000";
    defparam RAM_DQ_16x1024_0_1_0.CSDECODE_B = "0b111";
    defparam RAM_DQ_16x1024_0_1_0.WRITEMODE_A = "NORMAL";
    defparam RAM_DQ_16x1024_0_1_0.WRITEMODE_B = "NORMAL";
    defparam RAM_DQ_16x1024_0_1_0.GSR = "ENABLED";
    defparam RAM_DQ_16x1024_0_1_0.RESETMODE = "ASYNC";
    defparam RAM_DQ_16x1024_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam RAM_DQ_16x1024_0_1_0.INIT_DATA = "STATIC";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC RAM_DQ_16x1024_0_0_1 (.DIA0(INPUT_REGOUT[0]), .DIA1(INPUT_REGOUT[1]), 
          .DIA2(INPUT_REGOUT[2]), .DIA3(INPUT_REGOUT[3]), .DIA4(INPUT_REGOUT[4]), 
          .DIA5(INPUT_REGOUT[5]), .DIA6(INPUT_REGOUT[6]), .DIA7(INPUT_REGOUT[7]), 
          .DIA8(INPUT_REGOUT[8]), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(SECURE_REGISTER_STACK_PTR_OUT[0]), .ADA4(SECURE_REGISTER_STACK_PTR_OUT[1]), 
          .ADA5(SECURE_REGISTER_STACK_PTR_OUT[2]), .ADA6(SECURE_REGISTER_STACK_PTR_OUT[3]), 
          .ADA7(SECURE_REGISTER_STACK_PTR_OUT[4]), .ADA8(SECURE_REGISTER_STACK_PTR_OUT[5]), 
          .ADA9(SECURE_REGISTER_STACK_PTR_OUT[6]), .ADA10(SECURE_REGISTER_STACK_PTR_OUT[7]), 
          .ADA11(SECURE_REGISTER_STACK_PTR_OUT[8]), .ADA12(SECURE_REGISTER_STACK_PTR_OUT[9]), 
          .CEA(SECURE_REGISTER_STACK_CE), .OCEA(SECURE_REGISTER_STACK_CE), 
          .CLKA(cpu_fpga_clk_c), .WEA(SECURE_REGISTER_STACK_WE), .CSA0(GND_net), 
          .CSA1(GND_net), .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), 
          .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
          .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
          .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), 
          .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), 
          .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), 
          .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), 
          .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), 
          .RSTB(GND_net), .DOA0(SECURE_REGISTER_STACK_OUT[0]), .DOA1(SECURE_REGISTER_STACK_OUT[1]), 
          .DOA2(SECURE_REGISTER_STACK_OUT[2]), .DOA3(SECURE_REGISTER_STACK_OUT[3]), 
          .DOA4(SECURE_REGISTER_STACK_OUT[4]), .DOA5(SECURE_REGISTER_STACK_OUT[5]), 
          .DOA6(SECURE_REGISTER_STACK_OUT[6]), .DOA7(SECURE_REGISTER_STACK_OUT[7]), 
          .DOA8(SECURE_REGISTER_STACK_OUT[8])) /* synthesis MEM_LPC_FILE="RAM_DQ_16x1024.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=26, LSE_RCOL=52, LSE_LLINE=180, LSE_RLINE=180 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(180[26:52])
    defparam RAM_DQ_16x1024_0_0_1.DATA_WIDTH_A = 9;
    defparam RAM_DQ_16x1024_0_0_1.DATA_WIDTH_B = 9;
    defparam RAM_DQ_16x1024_0_0_1.REGMODE_A = "NOREG";
    defparam RAM_DQ_16x1024_0_0_1.REGMODE_B = "NOREG";
    defparam RAM_DQ_16x1024_0_0_1.CSDECODE_A = "0b000";
    defparam RAM_DQ_16x1024_0_0_1.CSDECODE_B = "0b111";
    defparam RAM_DQ_16x1024_0_0_1.WRITEMODE_A = "NORMAL";
    defparam RAM_DQ_16x1024_0_0_1.WRITEMODE_B = "NORMAL";
    defparam RAM_DQ_16x1024_0_0_1.GSR = "ENABLED";
    defparam RAM_DQ_16x1024_0_0_1.RESETMODE = "ASYNC";
    defparam RAM_DQ_16x1024_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam RAM_DQ_16x1024_0_0_1.INIT_DATA = "STATIC";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module CFI_CONTROL_UNIT
//

module CFI_CONTROL_UNIT (n4295, INPUT_DETECTED, cpu_fpga_rst_c, OPCODE, 
            TIMER_RST, cpu_fpga_clk_c, n4030, n3084, n2985, cpu_fpga_int_n_c, 
            n4390, REGISTER_VALID, n3910, \MICROPROGRAM[21] , n4306, 
            \MICROPROGRAM[24] , n4303, n4138, n4092, EDGE_VALID, \SECURE_EDGE_TABLE_REGOUT[15] , 
            SECURE_REGISTER_STACK_WE, n1950, SRC_LABEL_REG_CE, INPUT_REG_CE, 
            SECURE_EDGE_TABLE_CE, SECURE_REGISTER_STACK_PTR_CE, n4299, 
            TIMER_CE, n10, n994, RETURN_VALID, n2990, SECURE_REGISTER_STACK_CE, 
            SECURE_REGISTER_STACK_PTR_INC_DEC, n4153, SECURE_LABEL_STACK_WE, 
            SECURE_LABEL_STACK_CE, SECURE_LABEL_STACK_PTR_CE, SECURE_LABEL_STACK_PTR_INC_DEC, 
            n2984);
    output n4295;
    input INPUT_DETECTED;
    input cpu_fpga_rst_c;
    input [2:0]OPCODE;
    output TIMER_RST;
    input cpu_fpga_clk_c;
    input n4030;
    output n3084;
    input n2985;
    output cpu_fpga_int_n_c;
    input n4390;
    input REGISTER_VALID;
    input n3910;
    output \MICROPROGRAM[21] ;
    input n4306;
    output \MICROPROGRAM[24] ;
    input n4303;
    output n4138;
    output n4092;
    input EDGE_VALID;
    input \SECURE_EDGE_TABLE_REGOUT[15] ;
    output SECURE_REGISTER_STACK_WE;
    input n1950;
    output SRC_LABEL_REG_CE;
    output INPUT_REG_CE;
    output SECURE_EDGE_TABLE_CE;
    output SECURE_REGISTER_STACK_PTR_CE;
    input n4299;
    output TIMER_CE;
    input n10;
    input n994;
    input RETURN_VALID;
    output n2990;
    output SECURE_REGISTER_STACK_CE;
    output SECURE_REGISTER_STACK_PTR_INC_DEC;
    input n4153;
    output SECURE_LABEL_STACK_WE;
    output SECURE_LABEL_STACK_CE;
    output SECURE_LABEL_STACK_PTR_CE;
    output SECURE_LABEL_STACK_PTR_INC_DEC;
    output n2984;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    wire [7:0]n842;
    
    wire n4279, n4297, n4283, n4265, cpu_fpga_clk_c_enable_20, cpu_fpga_clk_c_enable_32, 
        TIMER_RST_N_159;
    wire [11:0]CONTROL_WORD;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(43[9:21])
    
    wire n4284, n3918, n3956, n29, cpu_fpga_clk_c_enable_16;
    wire [2:0]OP;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(64[9:11])
    
    wire cpu_fpga_clk_c_enable_18, n24, n4309, n4155;
    wire [11:0]n1500;
    
    wire n3890;
    wire [47:0]n76;
    
    wire n4298, n4300, n4252, cpu_fpga_clk_c_enable_10, cpu_fpga_clk_c_enable_46, 
        n1583, n36;
    wire [3:0]INTERRUPT_N_146;
    wire [3:0]STATUS_MASK;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(62[9:20])
    
    wire n3990, n4264, n4023, cpu_fpga_clk_c_enable_26, n4031, n3088, 
        n1536, n886, n4290, n881;
    wire [7:0]n851;
    
    wire n16;
    wire [47:0]MICROPROGRAM;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(54[9:21])
    
    wire n2, n4294, n4043, n14, n3920, n3947, n4248, n4289, 
        n4027, n4282, n4018, n4286, n4274, n4276, n4292, n4034, 
        n4234, n4032, n4066, n3958, n4108, n4308, cpu_fpga_clk_c_enable_44, 
        n4307, n3945, n4020, n4285, n44, n4291, n45, n4278, 
        cpu_fpga_clk_c_enable_42, n3944, n4014, n4293, n4037, n4015, 
        n4277, n4017, n4098, cpu_fpga_clk_c_enable_35;
    wire [2:0]n993;
    
    wire n4281, n4041, n4019, n3987, n1257;
    
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(n842[4]), .B(n842[3]), .C(n4295), 
         .D(n842[2]), .Z(n4279)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2925_2_lut_rep_76 (.A(INPUT_DETECTED), .B(n842[1]), .Z(n4297)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2925_2_lut_rep_76.init = 16'h7777;
    LUT4 i100_3_lut_4_lut (.A(cpu_fpga_rst_c), .B(n4283), .C(n4265), .D(OPCODE[0]), 
         .Z(cpu_fpga_clk_c_enable_20)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(15[4:16])
    defparam i100_3_lut_4_lut.init = 16'h0444;
    FD1P3AX TIMER_RST_85 (.D(TIMER_RST_N_159), .SP(cpu_fpga_clk_c_enable_32), 
            .CK(cpu_fpga_clk_c), .Q(TIMER_RST)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam TIMER_RST_85.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(CONTROL_WORD[0]), .B(n842[5]), .C(n4284), 
         .D(n3918), .Z(n3956)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_4_lut.init = 16'hdc00;
    LUT4 i2935_4_lut (.A(n4030), .B(n29), .C(n4297), .D(cpu_fpga_rst_c), 
         .Z(cpu_fpga_clk_c_enable_16)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2935_4_lut.init = 16'h0001;
    LUT4 i1867_3_lut (.A(OP[0]), .B(OP[1]), .C(OP[2]), .Z(n3084)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(64[9:11])
    defparam i1867_3_lut.init = 16'he6e6;
    LUT4 i1_2_lut_rep_59_3_lut_4_lut (.A(INPUT_DETECTED), .B(n842[1]), .C(cpu_fpga_rst_c), 
         .D(n2985), .Z(cpu_fpga_clk_c_enable_18)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_59_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_62_3_lut (.A(INPUT_DETECTED), .B(n842[1]), .C(n2985), 
         .Z(n4283)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_62_3_lut.init = 16'h8080;
    LUT4 i2101_4_lut (.A(n24), .B(n4295), .C(n4309), .D(n4155), .Z(n1500[0])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+((D)+!C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i2101_4_lut.init = 16'h2230;
    LUT4 i1_2_lut_4_lut_adj_5 (.A(CONTROL_WORD[0]), .B(n842[5]), .C(n4284), 
         .D(n3918), .Z(n3890)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_4_lut_adj_5.init = 16'h00dc;
    LUT4 i1_4_lut (.A(OPCODE[0]), .B(OPCODE[2]), .C(OPCODE[1]), .D(n3084), 
         .Z(n29)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'h8280;
    LUT4 i2133_2_lut_3_lut (.A(OPCODE[0]), .B(OPCODE[1]), .C(OPCODE[2]), 
         .Z(n76[14])) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i2133_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2932_2_lut_rep_77 (.A(n842[4]), .B(CONTROL_WORD[0]), .Z(n4298)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i2932_2_lut_rep_77.init = 16'h4444;
    LUT4 n3970_bdd_4_lut (.A(n4300), .B(OPCODE[2]), .C(OPCODE[0]), .D(OPCODE[1]), 
         .Z(n4252)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam n3970_bdd_4_lut.init = 16'h032c;
    FD1P3IX INTERRUPT_82 (.D(n4390), .SP(cpu_fpga_clk_c_enable_10), .CD(cpu_fpga_rst_c), 
            .CK(cpu_fpga_clk_c), .Q(cpu_fpga_int_n_c)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam INTERRUPT_82.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i0 (.D(n1500[0]), .SP(cpu_fpga_clk_c_enable_46), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(CONTROL_WORD[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i0.GSR = "DISABLED";
    LUT4 i41_4_lut (.A(OPCODE[2]), .B(OPCODE[0]), .C(OPCODE[1]), .D(n3084), 
         .Z(n24)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i41_4_lut.init = 16'h3a3e;
    LUT4 i1_4_lut_adj_6 (.A(REGISTER_VALID), .B(n36), .C(INTERRUPT_N_146[1]), 
         .D(STATUS_MASK[0]), .Z(n3990)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_6.init = 16'hc080;
    LUT4 n4264_bdd_3_lut (.A(n4264), .B(OPCODE[2]), .C(OPCODE[1]), .Z(n4265)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4264_bdd_3_lut.init = 16'hcaca;
    FD1S3IX STATE_FSM_i7 (.D(n4023), .CK(cpu_fpga_clk_c), .CD(cpu_fpga_rst_c), 
            .Q(n842[7]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i7.GSR = "DISABLED";
    FD1P3AX STATUS_MASK_i0_i0 (.D(n4031), .SP(cpu_fpga_clk_c_enable_26), 
            .CK(cpu_fpga_clk_c), .Q(STATUS_MASK[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam STATUS_MASK_i0_i0.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(n2985), .B(n4297), .C(n3088), .D(cpu_fpga_rst_c), 
         .Z(cpu_fpga_clk_c_enable_26)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_3_lut_4_lut.init = 16'hff02;
    FD1S3IX STATE_FSM_i5 (.D(n1536), .CK(cpu_fpga_clk_c), .CD(n1583), 
            .Q(n842[5]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i5.GSR = "DISABLED";
    FD1S3IX STATE_FSM_i4 (.D(n886), .CK(cpu_fpga_clk_c), .CD(n1583), .Q(n842[4]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i4.GSR = "DISABLED";
    FD1S3IX STATE_FSM_i3 (.D(n4290), .CK(cpu_fpga_clk_c), .CD(n1583), 
            .Q(n842[3]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i3.GSR = "DISABLED";
    FD1S3IX STATE_FSM_i2 (.D(n881), .CK(cpu_fpga_clk_c), .CD(n1583), .Q(n842[2]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i2.GSR = "DISABLED";
    FD1S3JX STATE_FSM_i1 (.D(n851[1]), .CK(cpu_fpga_clk_c), .PD(cpu_fpga_rst_c), 
            .Q(n842[1]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i1.GSR = "DISABLED";
    FD1P3AX STATUS_MASK_i0_i3 (.D(n3910), .SP(cpu_fpga_clk_c_enable_26), 
            .CK(cpu_fpga_clk_c), .Q(STATUS_MASK[3])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam STATUS_MASK_i0_i3.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_7 (.A(n4297), .B(OPCODE[1]), .C(OPCODE[2]), .D(OPCODE[0]), 
         .Z(n16)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'hfaee;
    LUT4 i1_2_lut_3_lut (.A(n842[4]), .B(CONTROL_WORD[0]), .C(MICROPROGRAM[29]), 
         .Z(n2)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i2738_2_lut_rep_79 (.A(OP[2]), .B(OP[1]), .Z(n4300)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2738_2_lut_rep_79.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4294), .B(n842[2]), .C(n24), .D(n4295), 
         .Z(n4043)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2928_3_lut (.A(n2985), .B(n14), .C(cpu_fpga_rst_c), .Z(cpu_fpga_clk_c_enable_32)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2928_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_3_lut_adj_8 (.A(OP[2]), .B(OP[1]), .C(OP[0]), .Z(n3920)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_8.init = 16'h4040;
    FD1P3AX MICROPROGRAM_i0_i14 (.D(n76[14]), .SP(cpu_fpga_clk_c_enable_20), 
            .CK(cpu_fpga_clk_c), .Q(MICROPROGRAM[14])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam MICROPROGRAM_i0_i14.GSR = "DISABLED";
    FD1P3AX MICROPROGRAM_i0_i18 (.D(n4252), .SP(cpu_fpga_clk_c_enable_16), 
            .CK(cpu_fpga_clk_c), .Q(MICROPROGRAM[18])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam MICROPROGRAM_i0_i18.GSR = "DISABLED";
    LUT4 i2913_2_lut_3_lut_3_lut (.A(n842[2]), .B(n842[3]), .C(n842[4]), 
         .Z(n4155)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i2913_2_lut_3_lut_3_lut.init = 16'h0101;
    FD1P3AX MICROPROGRAM_i0_i21 (.D(n4306), .SP(cpu_fpga_clk_c_enable_18), 
            .CK(cpu_fpga_clk_c), .Q(\MICROPROGRAM[21] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam MICROPROGRAM_i0_i21.GSR = "DISABLED";
    FD1P3AX MICROPROGRAM_i0_i24 (.D(n4303), .SP(cpu_fpga_clk_c_enable_18), 
            .CK(cpu_fpga_clk_c), .Q(\MICROPROGRAM[24] )) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam MICROPROGRAM_i0_i24.GSR = "DISABLED";
    FD1P3AX MICROPROGRAM_i0_i25 (.D(n3947), .SP(cpu_fpga_clk_c_enable_20), 
            .CK(cpu_fpga_clk_c), .Q(MICROPROGRAM[25])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam MICROPROGRAM_i0_i25.GSR = "DISABLED";
    FD1P3AX MICROPROGRAM_i0_i29 (.D(n76[29]), .SP(cpu_fpga_clk_c_enable_20), 
            .CK(cpu_fpga_clk_c), .Q(MICROPROGRAM[29])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam MICROPROGRAM_i0_i29.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n842[2]), .B(n4294), .C(OPCODE[1]), 
         .D(OPCODE[2]), .Z(n4138)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_74 (.A(n842[6]), .B(n842[5]), .Z(n4295)) /* synthesis lut_function=(A+(B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_rep_74.init = 16'heeee;
    LUT4 OPCODE_2__bdd_4_lut_2953 (.A(OPCODE[2]), .B(OPCODE[1]), .C(OPCODE[0]), 
         .D(n842[2]), .Z(n4248)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam OPCODE_2__bdd_4_lut_2953.init = 16'h0008;
    LUT4 i1871_4_lut_4_lut (.A(OPCODE[1]), .B(OPCODE[0]), .C(OPCODE[2]), 
         .D(n3084), .Z(n3088)) /* synthesis lut_function=(A (B (C))+!A !((C+!(D))+!B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(34[9:15])
    defparam i1871_4_lut_4_lut.init = 16'h8480;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n842[2]), .B(n3920), .C(n4289), .D(OPCODE[2]), 
         .Z(n4027)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i17_3_lut_rep_61_4_lut_4_lut_4_lut (.A(n842[4]), .B(CONTROL_WORD[0]), 
         .C(n842[3]), .D(n842[2]), .Z(n4282)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i17_3_lut_rep_61_4_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i1_3_lut_4_lut_adj_9 (.A(n842[6]), .B(n842[5]), .C(MICROPROGRAM[25]), 
         .D(n4282), .Z(n4018)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_3_lut_4_lut_adj_9.init = 16'h1000;
    LUT4 i1_2_lut_rep_65_3_lut_3_lut (.A(n842[2]), .B(OPCODE[1]), .C(OPCODE[2]), 
         .Z(n4286)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_rep_65_3_lut_3_lut.init = 16'h4040;
    LUT4 i2118_2_lut_3_lut (.A(n842[6]), .B(n842[5]), .C(n4274), .Z(n1500[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i2118_2_lut_3_lut.init = 16'h1010;
    LUT4 OPCODE_1__bdd_4_lut (.A(OPCODE[2]), .B(OP[1]), .C(OP[0]), .D(OP[2]), 
         .Z(n4264)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C)))) */ ;
    defparam OPCODE_1__bdd_4_lut.init = 16'h5414;
    LUT4 n4027_bdd_4_lut (.A(n4027), .B(n2), .C(n4294), .D(n4295), .Z(n4276)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n4027_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_rep_71 (.A(INPUT_DETECTED), .B(OPCODE[0]), .Z(n4292)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_71.init = 16'h8888;
    LUT4 i1_4_lut_adj_10 (.A(n4286), .B(n842[3]), .C(n842[4]), .D(OPCODE[0]), 
         .Z(n4092)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_10.init = 16'h0200;
    LUT4 i1_3_lut (.A(EDGE_VALID), .B(STATUS_MASK[3]), .C(\SECURE_EDGE_TABLE_REGOUT[15] ), 
         .Z(n36)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    LUT4 n4034_bdd_4_lut (.A(n4034), .B(OPCODE[1]), .C(OPCODE[2]), .D(OPCODE[0]), 
         .Z(n4234)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (D)))) */ ;
    defparam n4034_bdd_4_lut.init = 16'h0411;
    FD1P3AX STATUS_MASK_i0_i1 (.D(n4032), .SP(cpu_fpga_clk_c_enable_26), 
            .CK(cpu_fpga_clk_c), .Q(STATUS_MASK[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam STATUS_MASK_i0_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_11 (.A(n4066), .B(n3958), .C(n4108), .D(n3084), 
         .Z(n4023)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_4_lut_adj_11.init = 16'hfeee;
    LUT4 n5_bdd_4_lut_4_lut_then_3_lut (.A(n842[4]), .B(CONTROL_WORD[0]), 
         .C(\MICROPROGRAM[21] ), .Z(n4308)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam n5_bdd_4_lut_4_lut_then_3_lut.init = 16'h4040;
    FD1P3IX CONTROL_WORD__i1 (.D(n4018), .SP(cpu_fpga_clk_c_enable_44), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_REGISTER_STACK_WE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i1.GSR = "DISABLED";
    LUT4 n5_bdd_4_lut_4_lut_else_3_lut (.A(n842[4]), .B(CONTROL_WORD[0]), 
         .C(\MICROPROGRAM[24] ), .Z(n4307)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam n5_bdd_4_lut_4_lut_else_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(n842[6]), .B(n842[5]), .C(MICROPROGRAM[18]), 
         .D(n4282), .Z(n3945)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_13 (.A(n842[6]), .B(n842[5]), .C(MICROPROGRAM[29]), 
         .D(n4282), .Z(n4020)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_3_lut_4_lut_adj_13.init = 16'h1000;
    LUT4 i1_2_lut_4_lut_adj_14 (.A(n4285), .B(n2985), .C(cpu_fpga_rst_c), 
         .D(n1950), .Z(n44)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_14.init = 16'hff08;
    LUT4 i1_2_lut (.A(n2985), .B(n842[7]), .Z(n4066)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_4_lut_adj_15 (.A(n4285), .B(n2985), .C(cpu_fpga_rst_c), 
         .D(n4291), .Z(n45)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_15.init = 16'hff08;
    LUT4 i1_2_lut_4_lut_adj_16 (.A(n4278), .B(n36), .C(INTERRUPT_N_146[1]), 
         .D(n842[6]), .Z(n3958)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_4_lut_adj_16.init = 16'h7f00;
    LUT4 i2148_3_lut (.A(OPCODE[0]), .B(OPCODE[1]), .C(OPCODE[2]), .Z(n76[29])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(117[8] 173[17])
    defparam i2148_3_lut.init = 16'h1414;
    LUT4 i1_4_lut_4_lut (.A(cpu_fpga_clk_c_enable_42), .B(n4279), .C(OPCODE[2]), 
         .D(n44), .Z(cpu_fpga_clk_c_enable_46)) /* synthesis lut_function=(A (B+!(C (D)))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h8afa;
    FD1P3IX CONTROL_WORD__i11 (.D(n4234), .SP(cpu_fpga_clk_c_enable_46), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SRC_LABEL_REG_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i11.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_17 (.A(n4292), .B(OPCODE[1]), .C(OPCODE[2]), .D(n842[1]), 
         .Z(n4108)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_17.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(n842[6]), .B(n842[5]), .C(MICROPROGRAM[14]), 
         .D(n4282), .Z(n3944)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h1000;
    FD1S3IX STATE_FSM_i6 (.D(n3890), .CK(cpu_fpga_clk_c), .CD(n1583), 
            .Q(n842[6]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam STATE_FSM_i6.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i10 (.D(n4043), .SP(cpu_fpga_clk_c_enable_46), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(INPUT_REG_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i10.GSR = "DISABLED";
    LUT4 or_43_i1_2_lut_rep_57 (.A(REGISTER_VALID), .B(STATUS_MASK[0]), 
         .Z(n4278)) /* synthesis lut_function=(A+(B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(230[11:22])
    defparam or_43_i1_2_lut_rep_57.init = 16'heeee;
    FD1P3IX CONTROL_WORD__i9 (.D(n4014), .SP(cpu_fpga_clk_c_enable_44), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_EDGE_TABLE_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i9.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i3 (.D(n1500[3]), .SP(cpu_fpga_clk_c_enable_44), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_REGISTER_STACK_PTR_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i3.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_19 (.A(n842[7]), .B(n4293), .C(cpu_fpga_rst_c), 
         .D(n2985), .Z(cpu_fpga_clk_c_enable_42)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_19.init = 16'hf1ff;
    LUT4 i1_4_lut_adj_20 (.A(n4034), .B(OPCODE[2]), .C(n3920), .D(n4299), 
         .Z(n4037)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h0010;
    LUT4 i1_4_lut_adj_21 (.A(n4015), .B(n2985), .C(n4277), .D(n842[6]), 
         .Z(cpu_fpga_clk_c_enable_10)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_21.init = 16'h3fbb;
    FD1P3AX TIMER_CE_84 (.D(n4017), .SP(cpu_fpga_clk_c_enable_32), .CK(cpu_fpga_clk_c), 
            .Q(TIMER_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam TIMER_CE_84.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_22 (.A(INPUT_DETECTED), .B(OPCODE[0]), .C(OPCODE[1]), 
         .D(OPCODE[2]), .Z(n4098)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_22.init = 16'h0008;
    FD1P3JX OP_i0_i0 (.D(n993[0]), .SP(cpu_fpga_clk_c_enable_35), .PD(cpu_fpga_rst_c), 
            .CK(cpu_fpga_clk_c), .Q(OP[0])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam OP_i0_i0.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_23 (.A(cpu_fpga_clk_c_enable_42), .B(n4279), 
         .C(OPCODE[0]), .D(n45), .Z(cpu_fpga_clk_c_enable_44)) /* synthesis lut_function=(A (B+!(C (D)))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_4_lut_adj_23.init = 16'h8afa;
    LUT4 i1_4_lut_adj_24 (.A(n4289), .B(n3084), .C(OPCODE[2]), .D(n4297), 
         .Z(n4015)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_4_lut_adj_24.init = 16'h0008;
    LUT4 i1_4_lut_adj_25 (.A(n2985), .B(n10), .C(n842[6]), .D(cpu_fpga_rst_c), 
         .Z(n4017)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_25.init = 16'h0008;
    FD1P3JX OP_i0_i2 (.D(n994), .SP(cpu_fpga_clk_c_enable_35), .PD(cpu_fpga_rst_c), 
            .CK(cpu_fpga_clk_c), .Q(OP[2])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam OP_i0_i2.GSR = "DISABLED";
    FD1P3JX OP_i0_i1 (.D(n993[1]), .SP(cpu_fpga_clk_c_enable_35), .PD(cpu_fpga_rst_c), 
            .CK(cpu_fpga_clk_c), .Q(OP[1])) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam OP_i0_i1.GSR = "DISABLED";
    LUT4 or_43_i2_2_lut (.A(RETURN_VALID), .B(STATUS_MASK[1]), .Z(INTERRUPT_N_146[1])) /* synthesis lut_function=(A+(B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(230[11:22])
    defparam or_43_i2_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(CONTROL_WORD[0]), .B(\MICROPROGRAM[21] ), 
         .C(n4295), .D(n4294), .Z(n4014)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_26.init = 16'h0800;
    LUT4 i1_2_lut_rep_68 (.A(OPCODE[1]), .B(OPCODE[0]), .Z(n4289)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_68.init = 16'h4444;
    PFUMX i43 (.BLUT(n16), .ALUT(n3990), .C0(n842[6]), .Z(n14));
    LUT4 i1_2_lut_rep_60_3_lut (.A(OPCODE[1]), .B(OPCODE[0]), .C(OPCODE[2]), 
         .Z(n4281)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_rep_60_3_lut.init = 16'h0404;
    LUT4 i2159_4_lut (.A(n4281), .B(n1583), .C(n4277), .D(n842[6]), 
         .Z(TIMER_RST_N_159)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(90[4] 248[11])
    defparam i2159_4_lut.init = 16'hcfee;
    LUT4 i344_2_lut (.A(n842[4]), .B(CONTROL_WORD[0]), .Z(n1536)) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i344_2_lut.init = 16'h8888;
    LUT4 i106_2_lut (.A(CONTROL_WORD[0]), .B(n842[3]), .Z(n886)) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i106_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(OPCODE[1]), .B(OPCODE[0]), .C(OPCODE[2]), 
         .Z(n3947)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'h4040;
    LUT4 i103_2_lut_rep_69 (.A(CONTROL_WORD[0]), .B(n842[2]), .Z(n4290)) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i103_2_lut_rep_69.init = 16'h8888;
    LUT4 i101_4_lut (.A(n4041), .B(n842[1]), .C(INPUT_DETECTED), .D(n4019), 
         .Z(n881)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i101_4_lut.init = 16'hc888;
    LUT4 i1_4_lut_adj_28 (.A(n4098), .B(OP[0]), .C(OP[2]), .D(OP[1]), 
         .Z(n4041)) /* synthesis lut_function=(!((B (C+!(D))+!B (D))+!A)) */ ;
    defparam i1_4_lut_adj_28.init = 16'h0822;
    LUT4 i1_2_lut_rep_70 (.A(OPCODE[2]), .B(OPCODE[1]), .Z(n4291)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_70.init = 16'h8888;
    LUT4 i2930_2_lut_3_lut (.A(OPCODE[2]), .B(OPCODE[1]), .C(cpu_fpga_rst_c), 
         .Z(n4031)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2930_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i1_3_lut_adj_29 (.A(OPCODE[2]), .B(OPCODE[0]), .C(OPCODE[1]), 
         .Z(n4019)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(117[8] 173[17])
    defparam i1_3_lut_adj_29.init = 16'hfbfb;
    LUT4 i1_2_lut_adj_30 (.A(cpu_fpga_rst_c), .B(n2985), .Z(n1583)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_30.init = 16'hbbbb;
    LUT4 i93_2_lut_rep_72 (.A(INPUT_DETECTED), .B(n842[1]), .Z(n4293)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i93_2_lut_rep_72.init = 16'h4444;
    LUT4 i1_3_lut_adj_31 (.A(cpu_fpga_rst_c), .B(n2990), .C(n2985), .Z(cpu_fpga_clk_c_enable_35)) /* synthesis lut_function=(A+(B (C))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(15[4:16])
    defparam i1_3_lut_adj_31.init = 16'heaea;
    LUT4 i1_4_lut_adj_32 (.A(n2985), .B(n3956), .C(n3987), .D(n4293), 
         .Z(n851[1])) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(29[9:21])
    defparam i1_4_lut_adj_32.init = 16'haaa8;
    LUT4 i1_3_lut_adj_33 (.A(OP[1]), .B(n3910), .C(OP[2]), .Z(n4032)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_33.init = 16'hfdfd;
    LUT4 i1_2_lut_adj_34 (.A(n2990), .B(OPCODE[0]), .Z(n993[0])) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_adj_34.init = 16'h8888;
    LUT4 i1_4_lut_adj_35 (.A(n842[6]), .B(n842[5]), .C(n3918), .D(n1257), 
         .Z(n2990)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_4_lut_adj_35.init = 16'heafa;
    LUT4 i1_3_lut_rep_56_4_lut (.A(REGISTER_VALID), .B(STATUS_MASK[0]), 
         .C(INTERRUPT_N_146[1]), .D(n36), .Z(n4277)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(230[11:22])
    defparam i1_3_lut_rep_56_4_lut.init = 16'he000;
    LUT4 i1_2_lut_adj_36 (.A(n2990), .B(OPCODE[1]), .Z(n993[1])) /* synthesis lut_function=(A (B)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_2_lut_adj_36.init = 16'h8888;
    FD1P3IX CONTROL_WORD__i2 (.D(n3944), .SP(cpu_fpga_clk_c_enable_44), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_REGISTER_STACK_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i2.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i4 (.D(n4153), .SP(cpu_fpga_clk_c_enable_42), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_REGISTER_STACK_PTR_INC_DEC)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i4.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i5 (.D(n4020), .SP(cpu_fpga_clk_c_enable_44), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_LABEL_STACK_WE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i5.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i6 (.D(n3945), .SP(cpu_fpga_clk_c_enable_44), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_LABEL_STACK_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i6.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i7 (.D(n4276), .SP(cpu_fpga_clk_c_enable_46), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_LABEL_STACK_PTR_CE)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i7.GSR = "DISABLED";
    FD1P3IX CONTROL_WORD__i8 (.D(n4037), .SP(cpu_fpga_clk_c_enable_46), 
            .CD(n1583), .CK(cpu_fpga_clk_c), .Q(SECURE_LABEL_STACK_PTR_INC_DEC)) /* synthesis LSE_LINE_FILE_ID=23, LSE_LCOL=7, LSE_RCOL=35, LSE_LLINE=90, LSE_RLINE=90 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(89[3] 250[10])
    defparam CONTROL_WORD__i8.GSR = "DISABLED";
    LUT4 n3092_bdd_4_lut (.A(n4298), .B(MICROPROGRAM[25]), .C(n4248), 
         .D(n4294), .Z(n4274)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n3092_bdd_4_lut.init = 16'h88f0;
    LUT4 reduce_or_311_i1_2_lut_rep_64_3_lut (.A(INPUT_DETECTED), .B(n842[1]), 
         .C(n842[7]), .Z(n4285)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam reduce_or_311_i1_2_lut_rep_64_3_lut.init = 16'hf4f4;
    LUT4 i1_4_lut_adj_37 (.A(INTERRUPT_N_146[1]), .B(n36), .C(n4278), 
         .D(n842[6]), .Z(n3987)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_CONTROL_UNIT.vhd(108[5] 246[14])
    defparam i1_4_lut_adj_37.init = 16'h8000;
    LUT4 i1766_1_lut (.A(cpu_fpga_rst_c), .Z(n2984)) /* synthesis lut_function=(!(A)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(15[4:16])
    defparam i1766_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_adj_38 (.A(STATUS_MASK[0]), .B(STATUS_MASK[3]), .C(STATUS_MASK[1]), 
         .Z(n3918)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_38.init = 16'h8080;
    LUT4 i1_2_lut_rep_73 (.A(n842[4]), .B(n842[3]), .Z(n4294)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_73.init = 16'heeee;
    LUT4 i231_2_lut_3_lut_4_lut (.A(n842[4]), .B(n842[3]), .C(CONTROL_WORD[0]), 
         .D(n842[2]), .Z(n1257)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i231_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i1_3_lut_4_lut_adj_39 (.A(n842[4]), .B(n842[3]), .C(n842[2]), 
         .D(n4295), .Z(n4034)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_39.init = 16'hfffe;
    LUT4 i1_2_lut_rep_63_3_lut (.A(n842[4]), .B(n842[3]), .C(n842[2]), 
         .Z(n4284)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_63_3_lut.init = 16'hfefe;
    PFUMX i2967 (.BLUT(n4307), .ALUT(n4308), .C0(n842[3]), .Z(n4309));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module RAM_DQ_16x1024_U2
//

module RAM_DQ_16x1024_U2 (cpu_fpga_clk_c, SECURE_LABEL_STACK_CE, cpu_fpga_rst_c, 
            SECURE_LABEL_STACK_WE, SECURE_LABEL_STACK_PTR_OUT, INPUT_REGOUT, 
            \SECURE_LABEL_STACK_OUT[12] , \SECURE_LABEL_STACK_OUT[11] , 
            \SECURE_LABEL_STACK_OUT[10] , \SECURE_LABEL_STACK_OUT[9] , GND_net, 
            VCC_net, \SECURE_LABEL_STACK_OUT[8] , \SECURE_LABEL_STACK_OUT[7] , 
            \SECURE_LABEL_STACK_OUT[6] , \SECURE_LABEL_STACK_OUT[5] , \SECURE_LABEL_STACK_OUT[4] , 
            \SECURE_LABEL_STACK_OUT[3] , \SECURE_LABEL_STACK_OUT[2] , \SECURE_LABEL_STACK_OUT[1] , 
            \SECURE_LABEL_STACK_OUT[0] ) /* synthesis NGD_DRC_MASK=1 */ ;
    input cpu_fpga_clk_c;
    input SECURE_LABEL_STACK_CE;
    input cpu_fpga_rst_c;
    input SECURE_LABEL_STACK_WE;
    input [9:0]SECURE_LABEL_STACK_PTR_OUT;
    input [15:0]INPUT_REGOUT;
    output \SECURE_LABEL_STACK_OUT[12] ;
    output \SECURE_LABEL_STACK_OUT[11] ;
    output \SECURE_LABEL_STACK_OUT[10] ;
    output \SECURE_LABEL_STACK_OUT[9] ;
    input GND_net;
    input VCC_net;
    output \SECURE_LABEL_STACK_OUT[8] ;
    output \SECURE_LABEL_STACK_OUT[7] ;
    output \SECURE_LABEL_STACK_OUT[6] ;
    output \SECURE_LABEL_STACK_OUT[5] ;
    output \SECURE_LABEL_STACK_OUT[4] ;
    output \SECURE_LABEL_STACK_OUT[3] ;
    output \SECURE_LABEL_STACK_OUT[2] ;
    output \SECURE_LABEL_STACK_OUT[1] ;
    output \SECURE_LABEL_STACK_OUT[0] ;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    
    DP8KC RAM_DQ_16x1024_0_1_0 (.DIA0(INPUT_REGOUT[9]), .DIA1(INPUT_REGOUT[10]), 
          .DIA2(INPUT_REGOUT[11]), .DIA3(INPUT_REGOUT[12]), .DIA4(INPUT_REGOUT[13]), 
          .DIA5(INPUT_REGOUT[14]), .DIA6(INPUT_REGOUT[15]), .DIA7(GND_net), 
          .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(SECURE_LABEL_STACK_PTR_OUT[0]), .ADA4(SECURE_LABEL_STACK_PTR_OUT[1]), 
          .ADA5(SECURE_LABEL_STACK_PTR_OUT[2]), .ADA6(SECURE_LABEL_STACK_PTR_OUT[3]), 
          .ADA7(SECURE_LABEL_STACK_PTR_OUT[4]), .ADA8(SECURE_LABEL_STACK_PTR_OUT[5]), 
          .ADA9(SECURE_LABEL_STACK_PTR_OUT[6]), .ADA10(SECURE_LABEL_STACK_PTR_OUT[7]), 
          .ADA11(SECURE_LABEL_STACK_PTR_OUT[8]), .ADA12(SECURE_LABEL_STACK_PTR_OUT[9]), 
          .CEA(SECURE_LABEL_STACK_CE), .OCEA(SECURE_LABEL_STACK_CE), .CLKA(cpu_fpga_clk_c), 
          .WEA(SECURE_LABEL_STACK_WE), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_LABEL_STACK_OUT[9] ), .DOA1(\SECURE_LABEL_STACK_OUT[10] ), 
          .DOA2(\SECURE_LABEL_STACK_OUT[11] ), .DOA3(\SECURE_LABEL_STACK_OUT[12] )) /* synthesis MEM_LPC_FILE="RAM_DQ_16x1024.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=23, LSE_RCOL=49, LSE_LLINE=157, LSE_RLINE=157 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(157[23:49])
    defparam RAM_DQ_16x1024_0_1_0.DATA_WIDTH_A = 9;
    defparam RAM_DQ_16x1024_0_1_0.DATA_WIDTH_B = 9;
    defparam RAM_DQ_16x1024_0_1_0.REGMODE_A = "NOREG";
    defparam RAM_DQ_16x1024_0_1_0.REGMODE_B = "NOREG";
    defparam RAM_DQ_16x1024_0_1_0.CSDECODE_A = "0b000";
    defparam RAM_DQ_16x1024_0_1_0.CSDECODE_B = "0b111";
    defparam RAM_DQ_16x1024_0_1_0.WRITEMODE_A = "NORMAL";
    defparam RAM_DQ_16x1024_0_1_0.WRITEMODE_B = "NORMAL";
    defparam RAM_DQ_16x1024_0_1_0.GSR = "ENABLED";
    defparam RAM_DQ_16x1024_0_1_0.RESETMODE = "ASYNC";
    defparam RAM_DQ_16x1024_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam RAM_DQ_16x1024_0_1_0.INIT_DATA = "STATIC";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KC RAM_DQ_16x1024_0_0_1 (.DIA0(INPUT_REGOUT[0]), .DIA1(INPUT_REGOUT[1]), 
          .DIA2(INPUT_REGOUT[2]), .DIA3(INPUT_REGOUT[3]), .DIA4(INPUT_REGOUT[4]), 
          .DIA5(INPUT_REGOUT[5]), .DIA6(INPUT_REGOUT[6]), .DIA7(INPUT_REGOUT[7]), 
          .DIA8(INPUT_REGOUT[8]), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(SECURE_LABEL_STACK_PTR_OUT[0]), .ADA4(SECURE_LABEL_STACK_PTR_OUT[1]), 
          .ADA5(SECURE_LABEL_STACK_PTR_OUT[2]), .ADA6(SECURE_LABEL_STACK_PTR_OUT[3]), 
          .ADA7(SECURE_LABEL_STACK_PTR_OUT[4]), .ADA8(SECURE_LABEL_STACK_PTR_OUT[5]), 
          .ADA9(SECURE_LABEL_STACK_PTR_OUT[6]), .ADA10(SECURE_LABEL_STACK_PTR_OUT[7]), 
          .ADA11(SECURE_LABEL_STACK_PTR_OUT[8]), .ADA12(SECURE_LABEL_STACK_PTR_OUT[9]), 
          .CEA(SECURE_LABEL_STACK_CE), .OCEA(SECURE_LABEL_STACK_CE), .CLKA(cpu_fpga_clk_c), 
          .WEA(SECURE_LABEL_STACK_WE), .CSA0(GND_net), .CSA1(GND_net), 
          .CSA2(GND_net), .RSTA(cpu_fpga_rst_c), .DIB0(GND_net), .DIB1(GND_net), 
          .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
          .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), 
          .ADB1(GND_net), .ADB2(GND_net), .ADB3(GND_net), .ADB4(GND_net), 
          .ADB5(GND_net), .ADB6(GND_net), .ADB7(GND_net), .ADB8(GND_net), 
          .ADB9(GND_net), .ADB10(GND_net), .ADB11(GND_net), .ADB12(GND_net), 
          .CEB(VCC_net), .OCEB(VCC_net), .CLKB(GND_net), .WEB(GND_net), 
          .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
          .DOA0(\SECURE_LABEL_STACK_OUT[0] ), .DOA1(\SECURE_LABEL_STACK_OUT[1] ), 
          .DOA2(\SECURE_LABEL_STACK_OUT[2] ), .DOA3(\SECURE_LABEL_STACK_OUT[3] ), 
          .DOA4(\SECURE_LABEL_STACK_OUT[4] ), .DOA5(\SECURE_LABEL_STACK_OUT[5] ), 
          .DOA6(\SECURE_LABEL_STACK_OUT[6] ), .DOA7(\SECURE_LABEL_STACK_OUT[7] ), 
          .DOA8(\SECURE_LABEL_STACK_OUT[8] )) /* synthesis MEM_LPC_FILE="RAM_DQ_16x1024.lpc", MEM_INIT_FILE="INIT_ALL_0s", syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=23, LSE_RCOL=49, LSE_LLINE=157, LSE_RLINE=157 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(157[23:49])
    defparam RAM_DQ_16x1024_0_0_1.DATA_WIDTH_A = 9;
    defparam RAM_DQ_16x1024_0_0_1.DATA_WIDTH_B = 9;
    defparam RAM_DQ_16x1024_0_0_1.REGMODE_A = "NOREG";
    defparam RAM_DQ_16x1024_0_0_1.REGMODE_B = "NOREG";
    defparam RAM_DQ_16x1024_0_0_1.CSDECODE_A = "0b000";
    defparam RAM_DQ_16x1024_0_0_1.CSDECODE_B = "0b111";
    defparam RAM_DQ_16x1024_0_0_1.WRITEMODE_A = "NORMAL";
    defparam RAM_DQ_16x1024_0_0_1.WRITEMODE_B = "NORMAL";
    defparam RAM_DQ_16x1024_0_0_1.GSR = "ENABLED";
    defparam RAM_DQ_16x1024_0_0_1.RESETMODE = "ASYNC";
    defparam RAM_DQ_16x1024_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam RAM_DQ_16x1024_0_0_1.INIT_DATA = "STATIC";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam RAM_DQ_16x1024_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module \ADDER_GENERIC(4) 
//

module \ADDER_GENERIC(4)  (TIMER_REGOUT, cpu_fpga_clk_c, TIMER_CE, TIMER_RST);
    output [3:0]TIMER_REGOUT;
    input cpu_fpga_clk_c;
    input TIMER_CE;
    input TIMER_RST;
    
    wire cpu_fpga_clk_c /* synthesis SET_AS_NETWORK=cpu_fpga_clk_c, is_clock=1 */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/CFI_FPGA_TOP.vhd(13[4:16])
    wire [3:0]n21;
    
    LUT4 i2478_2_lut_3_lut (.A(TIMER_REGOUT[1]), .B(TIMER_REGOUT[0]), .C(TIMER_REGOUT[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam i2478_2_lut_3_lut.init = 16'h7878;
    LUT4 i2485_3_lut_4_lut (.A(TIMER_REGOUT[1]), .B(TIMER_REGOUT[0]), .C(TIMER_REGOUT[2]), 
         .D(TIMER_REGOUT[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam i2485_3_lut_4_lut.init = 16'h7f80;
    FD1P3DX Q_361__i0 (.D(n21[0]), .SP(TIMER_CE), .CK(cpu_fpga_clk_c), 
            .CD(TIMER_RST), .Q(TIMER_REGOUT[0]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam Q_361__i0.GSR = "DISABLED";
    LUT4 i2469_1_lut (.A(TIMER_REGOUT[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam i2469_1_lut.init = 16'h5555;
    LUT4 i2471_2_lut (.A(TIMER_REGOUT[1]), .B(TIMER_REGOUT[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam i2471_2_lut.init = 16'h6666;
    FD1P3DX Q_361__i1 (.D(n21[1]), .SP(TIMER_CE), .CK(cpu_fpga_clk_c), 
            .CD(TIMER_RST), .Q(TIMER_REGOUT[1]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam Q_361__i1.GSR = "DISABLED";
    FD1P3DX Q_361__i2 (.D(n21[2]), .SP(TIMER_CE), .CK(cpu_fpga_clk_c), 
            .CD(TIMER_RST), .Q(TIMER_REGOUT[2]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam Q_361__i2.GSR = "DISABLED";
    FD1P3DX Q_361__i3 (.D(n21[3]), .SP(TIMER_CE), .CK(cpu_fpga_clk_c), 
            .CD(TIMER_RST), .Q(TIMER_REGOUT[3]));   // /media/sf_Shared/cfi-fpga-monitor/rtl/ADDER_GENERIC.vhd(15[24:35])
    defparam Q_361__i3.GSR = "DISABLED";
    
endmodule
