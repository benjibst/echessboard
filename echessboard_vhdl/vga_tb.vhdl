library ieee;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;

entity VGATestbench is
end entity;

architecture RTL of VGATestbench is
  signal clk     : STD_LOGIC;
  signal x       : unsigned(9 downto 0);
  signal y       : unsigned(8 downto 0);
  signal h_sync  : STD_LOGIC;
  signal v_sync  : STD_LOGIC;
  signal disp_en : STD_LOGIC;
  signal fb_addr : std_logic_vector(14 downto 0);
  signal red     : std_logic_vector(3 downto 0);
  signal green   : std_logic_vector(3 downto 0);
  signal blue    : std_logic_vector(3 downto 0);
begin
  process
  begin
    clk<='0';
    wait for 10 ns;
    while true loop
      clk <= not clk after 5 ns;
      wait for 5 ns;
    end loop;
  end process;
  vga_ctrl: entity work.VGAController
    port map (
      vga_pixel_clk => clk,
      vga_reset_n   => '1',
      vga_h_sync    => h_sync,
      vga_v_sync    => v_sync,
      vga_disp_en   => disp_en,
      vga_img_x     => x,
      vga_img_y     => y
    );
  vga_img: entity work.VGAImageGenerator
    port map (
      ig_disp_ena => disp_en,
      ig_x        => x,
      ig_y        => y,
      ig_fb_data  => x"ffffffff", -- Placeholder for framebuffer data
      ig_fb_addr  => fb_addr,
      ig_red      => red,
      ig_green    => green,
      ig_blue     => blue
    );
end architecture;
