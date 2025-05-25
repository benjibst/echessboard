library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.op_class;

entity WriteBackStage is
  port (
    wb_clk            : in  STD_LOGIC;

    wb_class          : in  op_class;
    wb_branch_cond    : in  STD_LOGIC;
    wb_next_pc        : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_alu_result     : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_alu_result_pre : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_rs2_val        : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_mem_we         : in  STD_LOGIC;
    wb_pc_out         : out STD_LOGIC_VECTOR(31 downto 0);
    wb_rd_val         : out STD_LOGIC_VECTOR(31 downto 0)
  );
end entity;

architecture RTL of WriteBackStage is
  signal we_and_store : STD_LOGIC;
  signal mem_data_out : STD_LOGIC_VECTOR(31 downto 0);
begin
  we_and_store <= wb_mem_we and (wb_class = op_store);
  data_memory: entity work.DataMemory(RTL) port map (
    dm_clk   => wb_clk,
    dm_addr  => wb_alu_result(13 downto 2),
    dm_wdata => wb_rs2_val,
    dm_wen   => we_and_store,
    dm_rdata => mem_data_out
  );
  dest_reg_mux: entity work.DestRegMux(RTL) port map (
    drm_class      => wb_class,
    drm_next_pc    => wb_next_pc,
    drm_alu_result => wb_alu_result_pre,
    drm_mem_data   => mem_data_out,
    drm_rd_val     => wb_rd_val
  );
  pc_mux: entity work.PCOutMux(RTL) port map (
    pom_class       => wb_class,
    pom_branch_cond => wb_branch_cond,
    pom_next_pc     => wb_next_pc,
    pom_alu_result  => wb_alu_result,
    pom_pc_out      => wb_pc_out
  );
end architecture;
