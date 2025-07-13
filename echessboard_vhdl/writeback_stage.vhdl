library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity WriteBackStage is
  port (
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
    wb_spi_mem_data       : in  word;
    wb_spi_mem_addr       : in  unsigned(4 downto 0);
    wb_spi_mem_we         : in  std_logic_vector(3 downto 0);
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
  signal we                 : STD_LOGIC_VECTOR(3 downto 0);
begin
  with wb_mem_op_sz select
    we <= "0001" when sz_byte,
          "0011" when sz_half,
          "1111" when sz_word,
          "0000" when others;

  write_data_mem <= we when (wb_class = op_store and wb_stage = ex_execute and wb_alu_result_pre(31) = '0') else
                      (others => '0');

  write_framebuf_mem <= we when (wb_class = op_store and wb_stage = ex_execute and wb_alu_result_pre(31) = '1') else
                          (others => '0');

  -- port A of the framebuffer memory is written to by CPU and port B is read from by the VGA controller
  framebuf: entity work.vga_framebuf_mem
    port map (
      clka  => wb_clk,
      wea   => write_framebuf_mem,
      addra => wb_alu_result_pre(16 downto 2),
      dina  => wb_rs2_val,
      douta => open,
      clkb  => wb_vga_framebuf_clkb,
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
      clkb  => wb_clk,
      web   => wb_spi_mem_we, --0 because vga controller never writes to framebuf
      addrb => "0000000"&std_logic_vector(wb_spi_mem_addr),
      dinb  => wb_spi_mem_data,
      doutb => open);
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
  wb_pc_out <= x"00000000" when wb_stage = ex_reset else pc_out;
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

  mem_out <= mem_data_out_raw                         when wb_mem_op_sz = sz_word else
             mem_sign_ext_byte                        when wb_mem_op_sz = sz_byte and wb_mem_op_signed = '1' else
             x"000000" & mem_data_out_raw(7 downto 0) when wb_mem_op_sz = sz_byte and wb_mem_op_signed = '0' else
             mem_sign_ext_half                        when wb_mem_op_sz = sz_half and wb_mem_op_signed = '1' else
             x"0000" & mem_data_out_raw(15 downto 0)  when wb_mem_op_sz = sz_half and wb_mem_op_signed = '0' else
               (others => '0'); -- Default/fallback

end architecture;
