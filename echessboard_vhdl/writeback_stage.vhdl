library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity WriteBackStage is
  port (
    wb_reset              : in  std_logic;
    wb_stage              : in  ex_stage;  -- Current execution stage
    wb_clk                : in  std_logic;
    wb_class              : in  op_class_t;
    wb_branch_cond        : in  std_logic;
    wb_mem_op_sz          : in  mem_op_sz_t;
    wb_next_pc            : in  word;
    wb_alu_result         : in  word;
    wb_alu_result_pre     : in  word;
    wb_rs2_val            : in  word;
    wb_vga_framebuf_clkb  : in  std_logic;
    wb_vga_framebuf_addrb : in  std_logic_vector(14 downto 0);
    wb_mem_op_signed      : in  std_logic; -- Sign extension for load/store
    wb_spi_mem_clk        : in  std_logic;
    wb_spi_mem_data       : in  word;
    wb_spi_mem_addr       : in  STD_LOGIC_VECTOR(11 downto 0);
    wb_pc_out             : out word;
    wb_rd_val             : out word;
    wb_vga_framebuf_doutb : out word
  );
end entity;

architecture RTL of WriteBackStage is
  signal write_data_mem     : STD_LOGIC_vector(3 downto 0);
  signal write_framebuf_mem : STD_LOGIC_VECTOR(3 downto 0);
  signal mem_data_out_raw   : word;
  signal mem_sign_ext_byte  : word;
  signal mem_sign_ext_half  : word;
  signal mem_out            : word;
  signal pc_out             : word;
begin
  process (wb_stage) is
    variable we : STD_LOGIC_VECTOR(3 downto 0);
  begin
    case wb_mem_op_sz is
      when sz_byte =>
        we := "0001";
      when sz_half =>
        we := "0011";
      when sz_word =>
        we := "1111";
      when others =>
        we := (others => '0'); -- Default case, no write
    end case;
    if wb_class = op_store and wb_stage = ex_decode then
      write_data_mem <= we when not wb_alu_result_pre(31) else "0000"; -- Normal data memory
      write_framebuf_mem <= we when wb_alu_result_pre(31) else "0000"; -- Framebuffer memory
    else
      write_data_mem <= (others => '0'); -- No write in other stages
      write_framebuf_mem <= (others => '0'); -- No write in other stages
    end if;
  end process;
  -- port A of the framebuffer memory is written to by CPU and port B is read from by the VGA controller
  framebuf: entity work.vga_framebuf_mem
    port map (
      clka  => wb_clk,
      wea   => write_framebuf_mem,
      addra => wb_alu_result_pre(16 downto 2),
      dina  => wb_rs2_val,
      douta => open,
      clkb  => wb_clk,
      web   => "0000", --0 because vga controller never writes to framebuf
      addrb => wb_vga_framebuf_addrb,
      dinb  => x"00000000",
      doutb => wb_vga_framebuf_doutb
    );
  --port a is read from and written to by CPU and port B is only written to by SPI controller
  data_mem: entity work.data_mem
    port map (
      clka  => wb_clk,
      wea   => write_data_mem,
      addra => wb_alu_result_pre(13 downto 2),
      dina  => wb_rs2_val,
      douta => mem_data_out_raw,
      clkb  => wb_spi_mem_clk,
      web   => "1111", --0 because vga controller never writes to framebuf
      addrb => wb_spi_mem_addr,
      dinb  => wb_spi_mem_data,
      doutb => wb_vga_framebuf_doutb);
  dest_reg_mux: entity work.DestRegMux(RTL) port map (
    drm_class      => wb_class,
    drm_next_pc    => wb_next_pc,
    drm_alu_result => wb_alu_result_pre,
    drm_mem_data   => mem_out,
    drm_rd_val     => wb_rd_val
  );
  pc_mux: entity work.PCOutMux(RTL) port map (
    pom_class       => wb_class,
    pom_branch_cond => wb_branch_cond,
    pom_next_pc     => wb_next_pc,
    pom_alu_result  => wb_alu_result,
    pom_pc_out      => pc_out
  );
  wb_pc_out <= pc_out when wb_reset = '1' else x"00000000";
  byte_sign_extend: entity work.SignExtension
    generic map (
      se_input_width  => 8,
      se_output_width => 32
    )
    port map (
      se_in  => mem_data_out_raw(7 downto 0),
      se_out => mem_sign_ext_byte(31 downto 0)
    );
  half_sign_extend: entity work.SignExtension
    generic map (
      se_input_width  => 16,
      se_output_width => 32
    )
    port map (
      se_in  => mem_data_out_raw(15 downto 0),
      se_out => mem_sign_ext_half(31 downto 0)
    );

  process (mem_data_out_raw) is
  begin
    if wb_mem_op_sz = sz_word then
      mem_out <= mem_data_out_raw;
    elsif wb_mem_op_sz = sz_byte then
      if wb_mem_op_signed then
        mem_out <= mem_sign_ext_byte;
      else
        mem_out <= x"000000" & mem_data_out_raw(7 downto 0);
      end if;
    elsif wb_mem_op_sz = sz_half then
      if wb_mem_op_signed then
        mem_out <= mem_sign_ext_half;
      else
        mem_out <= x"0000" & mem_data_out_raw(15 downto 0);
      end if;
    end if;
  end process;
end architecture;
