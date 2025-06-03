--adapted from https://forum.digikey.com/t/vga-controller-vhdl/12794

library ieee;
  use ieee.std_logic_1164.all;

entity VGAController is
  generic (
    h_pixels      : INTEGER := 640;
    h_front_porch : INTEGER := 16;
    h_sync_pulse  : INTEGER := 96;
    h_back_porch  : INTEGER := 48;
    v_pixels      : INTEGER := 480;
    v_front_porch : INTEGER := 10;
    v_sync_pulse  : INTEGER := 2;
    v_back_porch  : INTEGER := 33);
  port (
    vga_pixel_clk : in  STD_LOGIC:= '0';
    vga_reset_n   : in  STD_LOGIC:= '0';
    vga_h_sync    : out STD_LOGIC:= '0';
    vga_v_sync    : out STD_LOGIC:= '0';
    vga_disp_en   : out STD_LOGIC:= '0';
    vga_img_x     : out INTEGER range 0 to h_pixels:= 0; --x coordinate of image as input to image generator   
    vga_img_y     : out INTEGER range 0 to v_pixels:= 0); --y coordinate of image as input to image generator);
end entity;

architecture RTL of VGAController is
  constant h_len_tot : INTEGER := h_sync_pulse + h_back_porch + h_pixels + h_front_porch; --total number of pixel clocks in a row
  constant v_len_tot : INTEGER := v_sync_pulse + v_back_porch + v_pixels + v_front_porch; --total number of rows in column
begin

  process (vga_pixel_clk, vga_reset_n)
    variable h_count : INTEGER range 0 to h_len_tot - 1 := 0; --horizontal counter (counts the columns)
    variable v_count : INTEGER range 0 to v_len_tot - 1 := 0; --vertical counter (counts the rows)
  begin

    if (vga_reset_n = '0') then
      h_count := 0;
      v_count := 0;
      vga_img_x <= 0;
      vga_img_y <= 0;
      vga_h_sync <= '1'; --negative polarity so active low sync
      vga_v_sync <= '1';
      vga_disp_en <= '0'; --disable display

    elsif (rising_edge(vga_pixel_clk)) then
      if (h_count < h_len_tot - 1) then
        h_count := h_count + 1;
      else
        h_count := 0;
        if (v_count < v_len_tot - 1) then
          v_count := v_count + 1;
        else
          v_count := 0;
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
        vga_img_y <= v_count;
      end if;

      if (h_count < h_pixels and v_count < v_pixels) then
        vga_disp_en <= '1';
      else
        vga_disp_en <= '0';
      end if;

    end if;
  end process;

end architecture;
