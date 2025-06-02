library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.riscv_types_pkg.all;

entity DataPath is
  port (
    dp_clk         : in  STD_LOGIC := '0';             -- clock input
    dp_pc_load_en  : in  STD_LOGIC := '0';             -- load enable for program counter
    dp_spi_clk     : in STD_LOGIC;
    dp_spi_addr    : in std_logic_vector(11 downto 0);
    dp_spi_data    : in std_logic_vector(31 downto 0);
    dp_vga_clk     : in  STD_LOGIC := '0';             -- VGA clock input
    dp_vga_reset_n : in  STD_LOGIC := '0';             -- VGA reset signal
    dp_vga_h_sync  : out STD_LOGIC;                    -- VGA horizontal sync output
    dp_vga_v_sync  : out STD_LOGIC;                    -- VGA vertical sync output
    dp_vga_disp_en : out STD_LOGIC;                    -- VGA display enable output
    dp_vga_n_blank : out STD_LOGIC;                    -- VGA blanking signal
    dp_vga_n_sync  : out STD_LOGIC;                    -- VGA sync signal
    dp_vga_red     : out STD_LOGIC_VECTOR(3 downto 0); -- VGA red color output
    dp_vga_green   : out STD_LOGIC_VECTOR(3 downto 0); -- VGA green color output
    dp_vga_blue    : out STD_LOGIC_VECTOR(3 downto 0)  -- VGA blue color output
  );
end entity;

architecture RTL of DataPath is
  signal next_pc        : std_logic_vector(11 downto 0);
  signal curr_pc        : std_logic_vector(11 downto 0);
  signal curr_pc_se     : std_logic_vector(31 downto 0);
  signal next_pc_se     : std_logic_vector(31 downto 0);
  signal curr_instr     : std_logic_vector(31 downto 0);
  signal reg_we         : std_logic;
  signal reg_rs1_val    : std_logic_vector(31 downto 0);
  signal reg_rs2_val    : std_logic_vector(31 downto 0);
  signal imm_val        : std_logic_vector(31 downto 0);
  signal op_class       : op_class_t;
  signal mem_op_signed  : std_logic;
  signal mem_op_sz      : mem_op_sz_t;
  signal a_sel, b_sel   : std_logic;
  signal alu_op         : alu_op_t;
  signal comp_op        : comp_op_t;
  signal alu_result     : std_logic_vector(31 downto 0);
  signal alu_result_pre : std_logic_vector(31 downto 0);
  signal branch_cond    : std_logic;
  signal pc_out         : std_logic_vector(31 downto 0);
  signal rd_val         : std_logic_vector(31 downto 0);
  signal vga_disp_en    : std_logic;
  signal vga_img_x      : integer;
  signal vga_img_y      : integer;
  signal fb_data        : std_logic_vector(31 downto 0);
  signal fb_addr        : std_logic_vector(14 downto 0);
  signal error          : std_logic;
begin

  fetch_stage: entity work.FetchStage(RTL) port map (
    if_clk         => dp_clk,
    if_load_en     => dp_pc_load_en,
    if_pc_in       => pc_out(11 downto 0),
    if_instruction => curr_instr,
    if_pc_curr     => curr_pc,
    if_pc_next     => next_pc
  );
  decode_stage: entity work.DecodeStage(RTL) port map (
    id_clk           => dp_clk,
    id_instruction   => curr_instr,
    id_rd_write_en   => reg_we,
    id_rd_val        => rd_val,
    id_pc_curr       => curr_pc,
    id_pc_next       => next_pc,
    id_pc_curr_se    => curr_pc_se,
    id_pc_next_se    => next_pc_se,
    id_rs1_val       => reg_rs1_val,
    id_rs2_val       => reg_rs2_val,
    id_imm_val       => imm_val,
    id_opclass       => op_class,
    id_mem_op_signed => mem_op_signed,
    id_mem_op_sz     => mem_op_sz,
    id_a_sel         => a_sel,
    id_b_sel         => b_sel,
    id_alu_op        => alu_op,
    id_comp_op       => comp_op,
    id_error         => error
  );
  execute_stage: entity work.ExecuteStage(RTL) port map (
    ex_clk            => dp_clk,
    ex_rs1_val        => reg_rs1_val,
    ex_rs2_val        => reg_rs1_val,
    ex_curr_pc        => curr_pc_se,
    ex_imm_val        => imm_val,
    ex_alu_op         => alu_op,
    ex_comp_op        => comp_op,
    ex_a_sel          => a_sel,
    ex_b_sel          => b_sel,
    ex_alu_result     => alu_result,
    ex_alu_result_pre => alu_result_pre,
    ex_branch_cond    => branch_cond
  );
  writeback_stage: entity work.WritebackStage port map (
    wb_clk                => dp_clk,
    wb_class              => op_class,
    wb_branch_cond        => branch_cond,
    wb_mem_op_sz          => mem_op_sz,
    wb_mem_op_signed => mem_op_signed,
    wb_next_pc            => next_pc_se,
    wb_alu_result         => alu_result,
    wb_alu_result_pre     => alu_result_pre,
    wb_rs2_val            => reg_rs2_val,
    wb_mem_we             => '1',
    wb_vga_framebuf_clkb  => dp_vga_clk,
    wb_vga_framebuf_addrb => fb_addr,
    wb_spi_mem_clk   =>  dp_spi_clk,
    wb_spi_mem_data => dp_spi_data,
    wb_spi_mem_addr => dp_spi_addr,
    wb_pc_out             => pc_out,
    wb_rd_val             => rd_val,
    wb_vga_framebuf_doutb => fb_data
  );
  vga_controller: entity work.VGAController(RTL) port map (
    vga_pixel_clk => dp_vga_clk,
    vga_reset_n   => dp_vga_reset_n,
    vga_h_sync    => dp_vga_h_sync,
    vga_v_sync    => dp_vga_v_sync,
    vga_disp_en   => dp_vga_disp_en,
    vga_img_x     => vga_img_x,
    vga_img_y     => vga_img_y);
  vga_img_gen: entity work.VGAImageGenerator(RTL) port map (
    ig_disp_ena => dp_vga_disp_en,
    ig_y        => vga_img_y,
    ig_x        => vga_img_x,
    ig_fb_data  => fb_data,
    ig_fb_addr  => fb_addr,
    ig_red      => dp_vga_red,
    ig_green    => dp_vga_green,
    ig_blue     => dp_vga_blue);

end architecture;
