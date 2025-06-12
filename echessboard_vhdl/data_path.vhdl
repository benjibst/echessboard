library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.riscv_types_pkg.all;
  use ieee.numeric_std.all;

entity DataPath is
  port (
    dp_reset       : in  STD_LOGIC;
    dp_clk         : in  STD_LOGIC;                              -- clock input
    dp_spi_clk     : in  std_logic;
    dp_spi_addr    : in  STD_LOGIC_VECTOR(11 downto 0);
    dp_spi_data    : in  word;
    dp_vga_clk     : in  STD_LOGIC;                              -- VGA clock input
    dp_vga_reset_n : in  STD_LOGIC;                              -- VGA reset signal
    dp_vga_h_sync  : out std_logic;                              -- VGA horizontal sync output
    dp_vga_v_sync  : out std_logic;                              -- VGA vertical sync output
    dp_vga_disp_en : out std_logic;                              -- VGA display enable output
    dp_vga_n_blank : out std_logic;                              -- VGA blanking signal
    dp_vga_n_sync  : out std_logic;                              -- VGA sync signal
    dp_vga_red     : out STD_LOGIC_VECTOR(3 downto 0) := "0000"; -- VGA red color output
    dp_vga_green   : out STD_LOGIC_VECTOR(3 downto 0) := "0000"; -- VGA green color output
    dp_vga_blue    : out STD_LOGIC_VECTOR(3 downto 0) := "0000"  -- VGA blue color output
  );
end entity;

architecture RTL of DataPath is
  signal next_pc        : std_logic_vector(11 downto 0);
  signal curr_pc        : std_logic_vector(11 downto 0);
  signal curr_pc_se     : word;
  signal next_pc_se     : word;
  signal curr_instr     : word;
  signal reg_we         : std_logic;
  signal reg_rs1_val    : word;
  signal reg_rs2_val    : word;
  signal imm_val        : word;
  signal op_class       : op_class_t;                    -- Default operation class
  signal mem_op_signed  : std_logic;
  signal mem_op_sz      : mem_op_sz_t;                   -- Default memory operation size
  signal a_sel, b_sel   : std_logic;
  signal alu_op         : alu_op_t;                      -- Default operation is addition
  signal comp_op        : comp_op_t;                     -- Default comparison operation
  signal alu_result     : word;
  signal alu_result_pre : word;
  signal branch_cond    : std_logic;
  signal pc_out         : word;
  signal rd_val         : word;
  signal vga_disp_en    : std_logic;
  signal vga_img_x      : unsigned(9 downto 0);          -- x coordinate of image as input to image generator
  signal vga_img_y      : unsigned(8 downto 0);          -- y coordinate of image as input to image generator
  signal fb_data        : word;
  signal fb_addr        : std_logic_vector(14 downto 0); -- framebuffer address
  signal error          : std_logic;
  signal stage          : ex_stage;                      -- Current stage of the pipeline: 
begin
  process (dp_clk) is
  begin
    if (rising_edge(dp_clk)) then
      if (dp_reset = '0') then
        stage <= ex_fetch;
      elsif (stage = ex_fetch) then
        stage <= ex_decode;
      elsif (stage = ex_decode) then
        stage <= ex_execute;
      elsif (stage = ex_execute) then
        stage <= ex_writeback;
      elsif (stage = ex_writeback) then
        stage <= ex_fetch; -- Loop back to fetch stage
      end if;
    end if;
  end process;
  fetch_stage: entity work.FetchStage
    port map (
      if_stage       => stage,
      if_reset       => dp_reset,
      if_clk         => dp_clk,
      if_pc_in       => pc_out(11 downto 0),
      if_instruction => curr_instr,
      if_pc_curr     => curr_pc,
      if_pc_next     => next_pc
    );
  decode_stage: entity work.DecodeStage
    port map (
      id_ex_stage      => stage,
      id_clk           => dp_clk,
      id_instruction   => curr_instr,
      id_rd_val        => rd_val,
      id_pc_curr       => curr_pc,
      id_pc_next       => next_pc,
      id_pc_curr_se    => curr_pc_se,
      id_pc_next_se    => next_pc_se,
      id_rs1_val       => reg_rs1_val,
      id_rs2_val       => reg_rs2_val,
      id_reg_we        => reg_we,
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
  execute_stage: entity work.ExecuteStage
    port map (
      ex_ex_stage       => stage,
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
  writeback_stage: entity work.WritebackStage
    port map (
      wb_reset              => dp_reset,
      wb_clk                => dp_clk,
      wb_class              => op_class,
      wb_branch_cond        => branch_cond,
      wb_mem_op_sz          => mem_op_sz,
      wb_mem_op_signed      => mem_op_signed,
      wb_next_pc            => next_pc_se,
      wb_alu_result         => alu_result,
      wb_alu_result_pre     => alu_result_pre,
      wb_rs2_val            => reg_rs2_val,
      wb_stage              => stage,
      wb_vga_framebuf_clkb  => dp_vga_clk,
      wb_vga_framebuf_addrb => fb_addr,
      wb_spi_mem_clk        => dp_spi_clk,
      wb_spi_mem_data       => dp_spi_data,
      wb_spi_mem_addr       => dp_spi_addr,
      wb_pc_out             => pc_out,
      wb_rd_val             => rd_val,
      wb_vga_framebuf_doutb => fb_data
    );
  vga_controller: entity work.VGAController
    port map (
      vga_pixel_clk => dp_vga_clk,
      vga_reset_n   => dp_vga_reset_n,
      vga_h_sync    => dp_vga_h_sync,
      vga_v_sync    => dp_vga_v_sync,
      vga_disp_en   => dp_vga_disp_en,
      vga_img_x     => vga_img_x,
      vga_img_y     => vga_img_y);

  vga_img_gen: entity work.VGAImageGenerator
    port map (
      ig_disp_ena => dp_vga_disp_en,
      ig_y        => vga_img_y,
      ig_x        => vga_img_x,
      ig_fb_data  => fb_data,
      ig_fb_addr  => fb_addr,
      ig_red      => dp_vga_red,
      ig_green    => dp_vga_green,
      ig_blue     => dp_vga_blue);

end architecture;

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity DataPathTB is
end entity;

architecture RTL of DataPathTB is
  signal tb_clk   : std_logic;        -- Testbench clock signal
  signal tb_reset : std_logic := '0'; -- Testbench reset signal, can be controlled in the testbench
begin
  process
    constant clk_period : time := 10 ns; -- Clock period for the testbench
  begin
    tb_reset <= '0'; -- Initialize reset to '0'
    tb_clk <= '0'; -- Initialize clock to '0'
    wait for clk_period / 2; -- Wait for half the clock period
    tb_clk <= '1'; -- Set clock to '1'
    wait for clk_period / 2; -- Wait for half the clock period
    tb_reset <= '1';
    wait for clk_period / 2; -- Wait for one clock period before starting the test
    tb_clk <= '0'; -- Set clock to '0'
    wait for clk_period / 2; -- Wait for half the clock period
    while true loop
      tb_clk <= '1';
      wait for clk_period / 2;
      tb_clk <= '0';
      wait for clk_period / 2;
    end loop;
  end process;

  uut: entity work.DataPath
    port map (
      dp_reset       => tb_reset,        -- Reset signal, can be controlled in the testbench
      dp_clk         => tb_clk,          -- Clock will be generated in the testbench
      dp_spi_clk     => '0',             -- SPI clock input
      dp_spi_addr    => (others => '0'), -- SPI address input
      dp_spi_data    => (others => '0'), -- SPI data input
      dp_vga_clk     => tb_clk,          -- VGA clock input
      dp_vga_reset_n => '1',             -- VGA reset signal
      dp_vga_h_sync  => open,            -- VGA horizontal sync output
      dp_vga_v_sync  => open,            -- VGA vertical sync output
      dp_vga_disp_en => open,            -- VGA display enable output
      dp_vga_n_blank => open,            -- VGA blanking signal
      dp_vga_n_sync  => open,            -- VGA sync signal
      dp_vga_red     => open,            -- VGA red color output
      dp_vga_green   => open,            -- VGA green color output
      dp_vga_blue    => open -- VGA blue color output
    );
end architecture;
