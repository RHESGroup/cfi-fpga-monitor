# PROLEPSIS - FPGA-based Control-Flow Integrity for ARM Microcontrollers
## CFI Hardware Monitor

This folder contains the FPGA-based monitor to be used for the ARM implementation of the PROLEPSIS framework ( https://github.com/RHESGroup/prolepsis ), designed for control-flow integrity of embedded systems. The folder contains the VHDL sources of the monitor, together with schematics and scripts and project file for simulation and syhtnesis. The monitor is designed to run on MachXO2 FPGA from Lattice Semiconductor. The monitor is thought to work connected to the Flexible Memory Controller (FMC) of the STM32429 chip from ST Microelectronics™, which features an ARM Cortex-M4 processor. 

## Sources and Documentation

All VHDL files of the CFI monitor are inside the `/rtl` folder. Top-level schematics of the monitor can be found in the folder `/doc`.

## Simulation

The simulation environment is based on the testbench file `TB_CFI_FPGA.vhd` present in folder `/tb`, which instantiate the monitor and sends commands to emulate read/write from the ARM CPU. To run the simulation, just move inside `/tb` and run `vsim`. When open, type `source sim_CFI.tcl` on the ModelSim console. This file contains TCL commands to compile VHDL files and show waveforms. Feel free to customize these two files. Make sure that you have support for Lattice libraries in your ModelSim version ( for more info refer to https://www.latticesemi.com/support/answerdatabase/3/7/3/3739 ).

## Synthesis

To synthesize the project, move inside folder `/syn` and run `diamond` (after having properly installed Lattice Diamond: https://www.latticesemi.com/latticediamond ). Open the project `CFI.ldf` inside the folder. Make sure that all files inside `/rtl` are present in the `Input Files`, plus `RAM_DQ_16x1024.vhd` and `ROM_16x8192.vhd` in their respective folders. Make sure that `CFI.lpf` is your Lattice Preference (LPF) Constraint File. Under tab `Process`, make sure to tick the following labels: `Synthesize Design`, `Map Trace`, `Place & Route Trace`, `I/O Timing Analysis`. Select `Bitstream File` to produce compilable C file with the FPGA bitstream to be inserted in your custom project. Run all the targets to see synthesis results.

# Integration

To make the monitor work, it has to be connected in parallel to the FMC pins of a STM32F429 microcontroller. Check `/syn/CFI.lpf` for required pin connections. At https://github.com/RHESGroup/cfi-faulty-application , there is an example of a faulty application that could be attacked via ROP attack and could be protected with the monitor. At https://github.com/RHESGroup/cfi-bootloader , there is an example code on how to setup a proper bootloader for the firmware being protected by the monitor.   

## Disclaimer and Copyright

All code and material is released under LGPL v3.0 ( https://www.gnu.org/licenses/lgpl-3.0.txt ). Copyright (C) 2022 RHES Group Torino.
