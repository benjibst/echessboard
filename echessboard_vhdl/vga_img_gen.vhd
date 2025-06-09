library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity VGAImageGenerator is
  port (
    ig_disp_ena : in  STD_LOGIC;                     --display enable ('1' = display time, '0' = blanking time)
    ig_x        : in  unsigned(9 downto 0);
    ig_y        : in  unsigned(8 downto 0);          --row pixel coordinate
    ig_fb_data  : in  word;
    ig_fb_addr  : out std_logic_vector(14 downto 0); --column pixel coordinate
    ig_red      : out STD_LOGIC_VECTOR(3 downto 0);  --red magnitude output to DAC
    ig_green    : out STD_LOGIC_VECTOR(3 downto 0);  --green magnitude output to DAC
    ig_blue     : out STD_LOGIC_VECTOR(3 downto 0)); --blue magnitude output to DAC
end entity;

architecture RTL of VGAImageGenerator is
  type color_lut_array is array (0 to 3) of std_logic_vector(11 downto 0);
  constant color_lut : color_lut_array := (
    x"375", --black square
    x"eee", --white square
    x"db6", --white piece
    x"431" --black piece
  );
begin
  process (ig_x)
    variable fb_addr        : unsigned(14 downto 0):="000000000000000";   -- framebuffer address
    variable pixel_in_word  : unsigned(3 downto 0);    --pixel index in word (32 bits
    variable fb_pixel_color : std_logic_vector(1 downto 0);
    variable lut_idx        : unsigned(1 downto 0);    --index for color lookup table
    variable fb_data        : word := (others => '0'); -- framebuffer data input
  begin
    pixel_in_word := ig_x(3 downto 0);
    if (ig_x(3 downto 0) = "0000") then --reset pixel index in word after every 16 pixels
      fb_data := ig_fb_data; --read framebuffer data from input before address gets updated
    end if;
    if (ig_x(3 downto 0) = "0100") then --update a few clock cycles later(doesnt matter exactly when)
      fb_addr := fb_addr + 1; 
      if (fb_addr = 19200) then --reset framebuffer address after 19200 pixels (640x480/16)
        fb_addr := "000000000000000";
      end if;
    end if;
    ig_fb_addr <= std_logic_vector(fb_addr); --output framebuffer address
    case pixel_in_word is
      when x"0" => fb_pixel_color := fb_data(31 downto 30); --first pixel in word (MSB)
      when x"1" => fb_pixel_color := fb_data(29 downto 28);
      when x"2" => fb_pixel_color := fb_data(27 downto 26);
      when x"3" => fb_pixel_color := fb_data(25 downto 24);
      when x"4" => fb_pixel_color := fb_data(23 downto 22);
      when x"5" => fb_pixel_color := fb_data(21 downto 20);
      when x"6" => fb_pixel_color := fb_data(19 downto 18);
      when x"7" => fb_pixel_color := fb_data(17 downto 16);
      when x"8" => fb_pixel_color := fb_data(15 downto 14);
      when x"9" => fb_pixel_color := fb_data(13 downto 12);
      when x"A" => fb_pixel_color := fb_data(11 downto 10);
      when x"B" => fb_pixel_color := fb_data(9 downto 8);
      when x"C" => fb_pixel_color := fb_data(7 downto 6);
      when x"D" => fb_pixel_color := fb_data(5 downto 4);
      when x"E" => fb_pixel_color := fb_data(3 downto 2);
      when others => fb_pixel_color := fb_data(1 downto 0); --last pixel in word (LSB)
    end case;
    lut_idx := unsigned(fb_pixel_color); --convert pixel color to index for color lookup table
    if (ig_disp_ena = '1') then --display time
      ig_red <= color_lut(to_integer(lut_idx))(11 downto 8); --extract red component from color lookup table
      ig_green <= color_lut(to_integer(lut_idx))(7 downto 4); --extract green component from color lookup table
      ig_blue <= color_lut(to_integer(lut_idx))(3 downto 0); --extract blue component from color lookup table
    else --blanking time
      ig_red <= (others => '0');
      ig_green <= (others => '0');
      ig_blue <= (others => '0');
    end if;
  end process;
end architecture;
