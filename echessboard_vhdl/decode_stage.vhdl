library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.riscv_types_pkg.all;

entity DecodeStage is
  port (
    id_clk           : in  std_logic                     := '0';
    id_instruction   : in  word := (others => '0');
    id_rd_write_en   : in  std_logic                     := '0';
    id_rd_val        : in  word := (others => '0');
    id_pc_curr       : in  STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    id_pc_next       : in  STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    id_pc_curr_se    : out word := (others => '0');
    id_pc_next_se    : out word := (others => '0');
    id_rs1_val       : out word := (others => '0');
    id_rs2_val       : out word := (others => '0');
    id_imm_val       : out word := (others => '0');
    id_opclass       : out op_class_t                    := op_alu;  -- Default operation class
    id_mem_op_signed : out std_logic                     := '0';
    id_mem_op_sz     : out mem_op_sz_t                   := sz_word; -- Default memory operation size
    id_a_sel         : out std_logic                     := '0';
    id_b_sel         : out std_logic                     := '0';
    id_alu_op        : out alu_op_t                      := alu_add; -- Default operation is addition
    id_comp_op       : out comp_op_t                     := comp_eq; -- Default comparison operation
    id_reg_we        : out std_logic                     := '0';     -- Register write enable
    id_error         : out STD_LOGIC                     := '0'      -- Error signal
  );
end entity;

architecture RTL of DecodeStage is
  signal rd     : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
  signal rs1    : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
  signal rs2    : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
  signal opcode : std_logic_vector(6 downto 0) := (others => '0');
  signal funct3 : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
  signal funct7 : std_logic_vector(6 downto 0) := (others => '0');
begin
  rs1    <= id_instruction(19 downto 15);
  rs2    <= id_instruction(24 downto 20);
  rd     <= id_instruction(11 downto 7);
  funct3 <= id_instruction(14 downto 12);
  funct7 <= id_instruction(31 downto 25);
  opcode <= id_instruction(6 downto 0);

  current_pc_se: entity work.SignExtension(RTL) generic map (
    se_input_width  => 12,
    se_output_width => 32
  ) port map (
    se_in  => id_pc_curr,
    se_out => id_pc_curr_se
  );
  next_pc_se: entity work.SignExtension(RTL) generic map (
    se_input_width  => 12,
    se_output_width => 32
  ) port map (
    se_in  => id_pc_next,
    se_out => id_pc_next_se
  );
  reg_file: entity work.RegisterAccess(RTL) port map (
    ra_clk      => id_clk,
    ra_rdaddr   => rd,
    ra_rs1addr  => rs1,
    ra_rs2addr  => rs2,
    ra_write_en => id_rd_write_en,
    ra_rdval    => id_rd_val,
    ra_rs1val   => id_rs1_val,
    ra_rs2val   => id_rs2_val
  );
  immediate_ext: entity work.ImmediateExtension(RTL) port map (
    ie_clk     => id_clk,
    ie_instr   => id_instruction,
    ie_imm_out => id_imm_val
  );
  decode_unit: entity work.DecodeUnit(RTL) port map (
    du_clk           => id_clk,
    du_funct3        => funct3,
    du_funct7        => funct7,
    du_opcode        => opcode,
    du_a_sel         => id_a_sel,
    du_b_sel         => id_b_sel,
    du_alu_op        => id_alu_op,
    du_comp_op       => id_comp_op,
    du_opclass       => id_opclass,
    du_mem_op_signed => id_mem_op_signed,
    du_mem_op_sz     => id_mem_op_sz,
    du_reg_we        => id_reg_we,
    du_error         => id_error
  );
end architecture;
