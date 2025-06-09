--adapted from https://forum.digikey.com/t/vga-controller-vhdl/12794

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity VGAController is
  port (
    vga_pixel_clk : in  STD_LOGIC;
    vga_reset_n   : in  STD_LOGIC;
    vga_h_sync    : out STD_LOGIC;
    vga_v_sync    : out STD_LOGIC;
    vga_disp_en   : out STD_LOGIC;
    vga_img_x     : out unsigned(9 downto 0); --x coordinate of image as input to image generator   
    vga_img_y     : out unsigned(8 downto 0)); --y coordinate of image as input to image generator);
end entity;

architecture RTL of VGAController is
  constant h_pixels      : unsigned(9 downto 0) := to_unsigned(640, 10);                --640 pixels
  constant h_front_porch : unsigned(4 downto 0) := to_unsigned(16, 5);
  constant h_sync_pulse  : unsigned(6 downto 0) := to_unsigned(96, 7);
  constant h_back_porch  : unsigned(5 downto 0) := to_unsigned(48, 6);
  constant v_pixels      : unsigned(8 downto 0) := to_unsigned(480, 9);
  constant v_front_porch : unsigned(3 downto 0) := to_unsigned(10, 4);
  constant v_sync_pulse  : unsigned(1 downto 0) := to_unsigned(2, 2);
  constant v_back_porch  : unsigned(5 downto 0) := to_unsigned(33, 6);
  constant h_len_tot     : unsigned(9 downto 0) := to_unsigned(640 + 16 + 96 + 48, 10); -- 800
  constant v_len_tot     : unsigned(9 downto 0) := to_unsigned(480 + 10 + 2 + 33, 10);  -- 525
begin

  process (vga_pixel_clk, vga_reset_n)
    variable h_count : unsigned(9 downto 0); --horizontal counter (counts the columns)
    variable v_count : unsigned(9 downto 0); --vertical counter (counts the rows)
  begin
    if (vga_reset_n = '0') then
      h_count:="0000000000";
      v_count:="0000000000";
      vga_img_x <= "0000000000";
      vga_img_y <= "000000000";
      vga_h_sync <= '1'; --negative polarity so active low sync
      vga_v_sync <= '1';
      vga_disp_en <= '0'; --disable display

    elsif (rising_edge(vga_pixel_clk)) then
      if (h_count < h_len_tot - 1) then
        h_count := h_count + 1;
      else
        h_count:="0000000000";
        if (v_count < v_len_tot - 1) then
          v_count := v_count + 1;
        else
          v_count:="0000000000";
        end if;
      end if;
      if (h_count < h_pixels + h_front_porch or h_count >= h_pixels + h_front_porch + h_sync_pulse) then
        vga_h_sync <= '1';
      else
        vga_h_sync <= '0';
      end if;
      if (v_count < v_pixels + v_front_porch or v_count >= v_pixels + v_front_porch + v_sync_pulse) then
        vga_v_sync <= '1';
      else
        vga_v_sync <= '0';
      end if;
      if (h_count < h_pixels) then
        vga_img_x <= h_count;
      end if;
      if (v_count < v_pixels) then
        vga_img_y <= v_count(8 downto 0);
      end if;
      if (h_count < h_pixels and v_count < v_pixels) then
        vga_disp_en <= '1';
      else
        vga_disp_en <= '0';
      end if;
    end if;
  end process;
end architecture;
