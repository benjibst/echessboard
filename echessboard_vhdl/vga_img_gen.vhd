library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity VGAImageGenerator is
  port (
    ig_disp_ena : in  STD_LOGIC:='0';                                       --display enable ('1' = display time, '0' = blanking time)
    ig_x        : in  INTEGER range 0 to 640       := 0;
    ig_y        : in  INTEGER range 0 to 480       := 0;               --row pixel coordinate
    ig_fb_data  : in  std_logic_vector(31 downto 0):=(others => '0');
    ig_fb_addr  : out std_logic_vector(14 downto 0):=(others => '0');                   --column pixel coordinate
    ig_red      : out STD_LOGIC_VECTOR(3 downto 0) := (others => '0'); --red magnitude output to DAC
    ig_green    : out STD_LOGIC_VECTOR(3 downto 0) := (others => '0'); --green magnitude output to DAC
    ig_blue     : out STD_LOGIC_VECTOR(3 downto 0) := (others => '0')); --blue magnitude output to DAC
end entity;

architecture RTL of VGAImageGenerator is
  signal x_vector       : std_logic_vector(9 downto 0);
  signal y_vector       : std_logic_vector(8 downto 0);
  signal fb_data        : std_logic_vector(31 downto 0);
  signal fb_addr        : integer := 0; -- framebuffer address
  signal pixel_in_word  : integer := 0;
  signal fb_pixel_color : std_logic_vector(1 downto 0);
  type color_lut_array is array (0 to 3) of std_logic_vector(11 downto 0);
  constant color_lut : color_lut_array := (
    x"375", --black square
    x"eee", --white square
    x"db6", --white piece
    x"431" --black piece
  );
  signal lut_idx : integer := 0; --index for color lookup table
begin
  fb_data <= ig_fb_data; -- framebuffer data input
  pixel_in_word <= to_integer(unsigned(x_vector(3 downto 0)));
  ig_fb_addr <= std_logic_vector(to_unsigned(fb_addr,15));
  lut_idx <= to_integer(unsigned(fb_pixel_color)); --get index for color lookup table
  
  process (ig_x)
  begin
    x_vector <= std_logic_vector(to_unsigned(ig_x, x_vector'length)); --convert column to std_logic_vector
    y_vector <= std_logic_vector(to_unsigned(ig_y, y_vector'length)); --convert row to std_logic_vector
    if (x_vector(3 downto 0) = "0000") then --in memory every word (32 bits) stores 16 pixels (every pixel is 1 of 4 colors)
      fb_addr <= fb_addr + 1;
      if (fb_addr = 19200) then --reset framebuffer address after 19200 pixels (640x480/16)
        fb_addr <= 0;
      end if;
    end if;
    case pixel_in_word is
      when 0 => fb_pixel_color <= fb_data(1 downto 0); --first pixel in word
      when 1 => fb_pixel_color <= fb_data(3 downto 2);
      when 2 => fb_pixel_color <= fb_data(5 downto 4);
      when 3 => fb_pixel_color <= fb_data(7 downto 6);
      when 4 => fb_pixel_color <= fb_data(9 downto 8);
      when 5 => fb_pixel_color <= fb_data(11 downto 10);
      when 6 => fb_pixel_color <= fb_data(13 downto 12);
      when 7 => fb_pixel_color <= fb_data(15 downto 14);
      when 8 => fb_pixel_color <= fb_data(17 downto 16);
      when 9 => fb_pixel_color <= fb_data(19 downto 18);
      when 10 => fb_pixel_color <= fb_data(21 downto 20);
      when 11 => fb_pixel_color <= fb_data(23 downto 22);
      when 12 => fb_pixel_color <= fb_data(25 downto 24);
      when 13 => fb_pixel_color <= fb_data(27 downto 26);
      when 14 => fb_pixel_color <= fb_data(29 downto 28);
      when others => fb_pixel_color <= fb_data(31 downto 30); --last pixel in word
    end case;
    

    if (ig_disp_ena = '1') then --display time
      ig_red <= color_lut(lut_idx)(11 downto 8); --extract red component from color lookup table
      ig_green <= color_lut(lut_idx)(7 downto 4); --extract green component from color lookup table
      ig_blue <= color_lut(lut_idx)(3 downto 0); --extract blue component from color lookup table
    else --blanking time
      ig_red <= (others => '0');
      ig_green <= (others => '0');
      ig_blue <= (others => '0');
    end if;

  end process;
end architecture;
