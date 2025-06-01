library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity WriteBackStage is
  port (
    wb_clk                : in  STD_LOGIC;
    wb_class              : in  op_class_t;
    wb_branch_cond        : in  STD_LOGIC;
    wb_mem_op_sz          : in  mem_op_sz_t;
    wb_next_pc            : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_alu_result         : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_alu_result_pre     : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_rs2_val            : in  STD_LOGIC_VECTOR(31 downto 0);
    wb_mem_we             : in  STD_LOGIC;
    wb_vga_framebuf_clkb  : in  std_logic;
    wb_vga_framebuf_addrb : in  std_logic_vector(14 downto 0);
    wb_pc_out             : out STD_LOGIC_VECTOR(31 downto 0);
    wb_rd_val             : out STD_LOGIC_VECTOR(31 downto 0);
    wb_vga_framebuf_doutb : out std_logic_vector(31 downto 0)

  );
end entity;

architecture RTL of WriteBackStage is
  signal cpu_mem_data_out   : STD_LOGIC_VECTOR(31 downto 0);
  signal write_data_mem     : STD_LOGIC;
  signal write_framebuf_mem : STD_LOGIC_VECTOR(3 downto 0);
  signal we                 : STD_LOGIC_VECTOR(3 downto 0);
begin
  process (wb_mem_op_sz) is
  begin
    case wb_mem_op_sz is
      when sz_byte =>
        we <= "0001";
      when sz_half =>
        we <= "0011";
      when sz_word =>
        we <= "1111";
      when others =>
        we <= (others => '0'); -- Default case, no write
    end case;
  end process;
  -- MSB of alu is used to distinguish between VGA framebuffer and normal data memory.   
  --In assembly this is like having base adress 0x80000000 for VGA framebuffer
  write_data_mem     <= wb_mem_we and STD_LOGIC((wb_class = op_store)) and (not wb_alu_result_pre(31));
  write_framebuf_mem <= we when (STD_LOGIC((wb_class = op_store)) and wb_alu_result_pre(31)) else "0000";
  -- port A of the framebuffer memory is written to by CPU and port B is read from by the VGA controller
  framebuf: entity work.vga_framebuf_mem
    port map (
      clka  => wb_clk,
      wea   => write_framebuf_mem,
      addra => wb_alu_result_pre(16 downto 2),
      dina  => wb_rs2_val,
      douta => open,   -- open because not necessary to read from framebuf
      clkb  => wb_vga_framebuf_clkb,
      web   => "0000", --0 because vga controller never writes to framebuf
      addrb => wb_vga_framebuf_addrb,
      dinb  => open,
      doutb => wb_vga_framebuf_doutb
    );
  dest_reg_mux: entity work.DestRegMux(RTL) port map (
    drm_class      => wb_class,
    drm_next_pc    => wb_next_pc,
    drm_alu_result => wb_alu_result_pre,
    drm_mem_data   => cpu_mem_data_out,
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
