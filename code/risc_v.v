


// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
// CREATED		"Tue Oct 24 16:49:03 2023"

module risc_v(
	clk,
	rst,
	imem_wr_en,
	imem_data_in,
	rd_valid,
	imm_valid,
	func3_valid,
	func7_valid,
	final_output,
	funct3,
	funct7,
	s1,
	s2,
	s3,
	s4,
	s5,
	s6,
	s7,
	s8
);


input wire	clk;
input wire	rst;
input wire	imem_wr_en;
input wire	[31:0] imem_data_in;
output wire	rd_valid;
output wire	imm_valid;
output wire	func3_valid;
output wire	func7_valid;
output wire	[31:0] final_output;
output wire	[2:0] funct3;
output wire	[6:0] funct7;
output wire	[6:0] s1;
output wire	[6:0] s2;
output wire	[6:0] s3;
output wire	[6:0] s4;
output wire	[6:0] s5;
output wire	[6:0] s6;
output wire	[6:0] s7;
output wire	[6:0] s8;

wire	SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_31;
wire	[46:0] SYNTHESIZED_WIRE_2;
wire	[31:0] SYNTHESIZED_WIRE_32;
wire	[31:0] SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_5;
wire	[31:0] SYNTHESIZED_WIRE_6;
wire	[31:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[6:0] SYNTHESIZED_WIRE_34;
wire	[46:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_35;
wire	[31:0] SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_18;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_36;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	[31:0] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_28;

assign	final_output = SYNTHESIZED_WIRE_36;




ALU	b2v_inst(
	.clk(clk),
	.ALUenabled(SYNTHESIZED_WIRE_0),
	.imm(SYNTHESIZED_WIRE_31),
	.instructions(SYNTHESIZED_WIRE_2),
	.rs1(SYNTHESIZED_WIRE_32),
	.rs2(SYNTHESIZED_WIRE_33),
	.ALUoutput(SYNTHESIZED_WIRE_7));


PC	b2v_inst1(
	.clk(clk),
	.reset(rst),
	.j_signal(SYNTHESIZED_WIRE_5),
	.jump(SYNTHESIZED_WIRE_6),
	.out(SYNTHESIZED_WIRE_35));


control_unit	b2v_inst2(
	.clk(clk),
	.rst(rst),
	.ALUoutput(SYNTHESIZED_WIRE_7),
	.imm(SYNTHESIZED_WIRE_31),
	.mem_read(SYNTHESIZED_WIRE_9),
	.opcode(SYNTHESIZED_WIRE_34),
	.out_signal(SYNTHESIZED_WIRE_11),
	.pc_input(SYNTHESIZED_WIRE_35),
	.rs1_input(SYNTHESIZED_WIRE_32),
	.rs2_input(SYNTHESIZED_WIRE_33),
	.wr_en(SYNTHESIZED_WIRE_17),
	.rd_en(SYNTHESIZED_WIRE_16),
	.j_signal(SYNTHESIZED_WIRE_5),
	.ALUenabled(SYNTHESIZED_WIRE_0),
	.wr_en_rf(SYNTHESIZED_WIRE_23),
	.addr(SYNTHESIZED_WIRE_18),
	.final_output(SYNTHESIZED_WIRE_36),
	.instructions(SYNTHESIZED_WIRE_2),
	.jump(SYNTHESIZED_WIRE_6),
	.mem_write(SYNTHESIZED_WIRE_19));
	defparam	b2v_inst2.A = 0;
	defparam	b2v_inst2.B = 1;


decoder	b2v_inst3(
	.clk(clk),
	.instr(SYNTHESIZED_WIRE_15),
	.rd_valid(rd_valid),
	.rs1_valid(SYNTHESIZED_WIRE_21),
	.rs2_valid(SYNTHESIZED_WIRE_22),
	.imm_valid(imm_valid),
	.func3_valid(func3_valid),
	.func7_valid(func7_valid),
	.func3(funct3),
	.func7(funct7),
	.imm(SYNTHESIZED_WIRE_31),
	.opcode(SYNTHESIZED_WIRE_34),
	.out_signal(SYNTHESIZED_WIRE_11),
	.rd(SYNTHESIZED_WIRE_24),
	.rs1(SYNTHESIZED_WIRE_26),
	.rs2(SYNTHESIZED_WIRE_27));


dmem	b2v_inst4(
	.clk(clk),
	.rd_en(SYNTHESIZED_WIRE_16),
	.wr_en(SYNTHESIZED_WIRE_17),
	.addr(SYNTHESIZED_WIRE_18),
	.in_data(SYNTHESIZED_WIRE_19),
	.out_data(SYNTHESIZED_WIRE_9));


imem	b2v_inst5(
	.clk(clk),
	.wr_en(imem_wr_en),
	.addr(SYNTHESIZED_WIRE_35),
	.data_in(imem_data_in),
	.data_out(SYNTHESIZED_WIRE_15));


registerf	b2v_inst6(
	.clk(clk),
	.rs1_valid(SYNTHESIZED_WIRE_21),
	.rs2_valid(SYNTHESIZED_WIRE_22),
	.wr_en(SYNTHESIZED_WIRE_23),
	.rd(SYNTHESIZED_WIRE_24),
	.result(SYNTHESIZED_WIRE_36),
	.rs1(SYNTHESIZED_WIRE_26),
	.rs2(SYNTHESIZED_WIRE_27),
	.src1_value(SYNTHESIZED_WIRE_32),
	.src2_value(SYNTHESIZED_WIRE_33));


seven_seg	b2v_inst7(
	.clk(clk),
	.bcd(SYNTHESIZED_WIRE_28),
	.opcode(SYNTHESIZED_WIRE_34),
	.s1(s1),
	.s2(s2),
	.s3(s3),
	.s4(s4),
	.s5(s5),
	.s6(s6),
	.s7(s7),
	.s8(s8));


bin_to_bcd	b2v_inst8(
	.clk(clk),
	.bin(SYNTHESIZED_WIRE_36),
	.bcd(SYNTHESIZED_WIRE_28));


endmodule
