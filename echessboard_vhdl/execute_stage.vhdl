library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity ExecuteStage is
  port (
    ex_clk            : in  std_logic := '0';
    ex_rs1_val        : in  word:=(others=>'0');
    ex_rs2_val        : in  word:=(others=>'0');
    ex_curr_pc        : in  word:=(others=>'0');
    ex_imm_val        : in  word:=(others=>'0');
    ex_alu_op         : in  alu_op_t;
    ex_comp_op        : in  comp_op_t;
    ex_a_sel          : in  std_logic := '0';
    ex_b_sel          : in  std_logic := '0';
    ex_alu_result     : out word:=(others=>'0');
    ex_alu_result_pre : out word:=(others=>'0');
    ex_branch_cond    : out STD_LOGIC
  );
end entity;

architecture RTL of ExecuteStage is
  signal alu_a : word:=(others=>'0');
  signal alu_b : word:=(others=>'0');
begin
  rs1_pc_mux: entity work.Multiplexer2_1(RTL) generic map (
    WIDTH => 32
  ) port map (
    mp_a   => ex_rs1_val,
    mp_b   => ex_curr_pc,
    mp_s   => ex_a_sel,
    mp_out => alu_a
  );
  rs2_imm_mux: entity work.Multiplexer2_1(RTL) generic map (
    WIDTH => 32
  ) port map (
    mp_a   => ex_rs2_val,
    mp_b   => ex_imm_val,
    mp_s   => ex_b_sel,
    mp_out => alu_b
  );
  alu: entity work.ALU(RTL) port map (
    alu_clk        => ex_clk,
    alu_a          => alu_a,
    alu_b          => alu_b,
    alu_op         => ex_alu_op,
    alu_result     => ex_alu_result,
    alu_result_pre => ex_alu_result_pre
  );
  comparator: entity work.ComparatorUnit(RTL) port map (
    cu_clk     => ex_clk,
    cu_rs1_val => ex_rs1_val,
    cu_rs2_val => ex_rs2_val,
    cu_comp_op => ex_comp_op,
    cu_result  => ex_branch_cond
  );
end architecture;
