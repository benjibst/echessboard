library IEEE;
  use IEEE.STD_LOGIC_1164.all;

entity data_path is

end entity;

architecture RTL of data_path is

begin

  fetch_stage: entity work.InstructionFetch(RTL) port map (
    if_clk         => x,
    if_load_en     => x,
    if_pc_in       => x,
    if_instruction => x,
    if_pc_curr     => x,
    if_pc_next     => x
  );
  decode_stage: entity work.DecodeStage(RTL) port map (
    id_clk         => x,
    id_instruction => x,
    id_rd_write_en => x,
    id_rd_val      => x,
    id_pc_curr     => x,
    id_pc_next     => x,
    id_pc_curr_se  => x,
    id_pc_next_se  => x,
    id_rs1_val     => x,
    id_rs2_val     => x,
    id_imm_val     => x,
    id_opclass     => x,
    id_a_sel       => x,
    id_b_sel       => x,
    id_alu_op      => x,
    id_comp_op     => x
  );
  execute_stage: entity work.ExecuteStage(RTL) port map (
    ex_clk            => x,
    ex_rs1_val        => x,
    ex_rs2_val        => x,
    ex_curr_pc        => x,
    ex_imm_val        => x,
    ex_alu_op         => x,
    ex_comp_op        => x,
    ex_a_sel          => x,
    ex_b_sel          => x,
    ex_alu_result     => x,
    ex_alu_result_pre => x,
    ex_branch_cond    => x
  );
  writeback_stage: entity work.WritebackStage(RTL) port map (
    wb_clk                => x,
    wb_class              => x,
    wb_branch_cond        => x,
    wb_mem_op_sz          => x,
    wb_next_pc            => x,
    wb_alu_result         => x,
    wb_alu_result_pre     => x,
    wb_rs2_val            => x,
    wb_mem_we             => x,
    wb_vga_framebuf_clkb  => x,
    wb_vga_framebuf_addrb => x,
    wb_pc_out             => x,
    wb_rd_val             => x,
    wb_vga_framebuf_doutb => x
  );

end architecture;
