--generic sign extension
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity SignExtension is
  generic (
    se_input_width  : INTEGER;
    se_output_width : INTEGER
  );
  port (
    se_in  : in  STD_LOGIC_VECTOR(se_input_width downto 0)  := (others => '0');
    se_out : out STD_LOGIC_VECTOR(se_output_width downto 0) := (others => '0')
  );
end entity;

architecture RTL of SignExtension is
begin
  process (se_in)
    variable temp_in  : signed(se_input_width - 1 downto 0);
    variable temp_out : signed(se_output_width - 1 downto 0);
  begin
    temp_in := signed(se_in);
    temp_out := resize(temp_in, se_output_width);
    se_out <= std_logic_vector(temp_out);
  end process;
end architecture;
