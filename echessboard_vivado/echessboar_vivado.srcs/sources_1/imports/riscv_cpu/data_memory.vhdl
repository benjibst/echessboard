library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity DataMemory is
  port (
    dm_clk   : in  STD_LOGIC;
    dm_addr  : in  STD_LOGIC_VECTOR(11 downto 0);
    dm_wdata : in  STD_LOGIC_VECTOR(31 downto 0);
    dm_wen   : in  STD_LOGIC;
    dm_rdata : out STD_LOGIC_VECTOR(31 downto 0)
  );
end entity;

architecture RTL of DataMemory is
  type ram_type is array (0 to 4095) of STD_LOGIC_VECTOR(7 downto 0);
  signal ram : ram_type;
begin
  process (dm_clk)
  begin
    if rising_edge(dm_clk) then
      if dm_wen = '1' then
        ram(to_integer(unsigned(dm_addr))) <= dm_wdata;
      end if;
      dm_rdata <= ram(to_integer(unsigned(dm_addr)));
    end if;
  end process;
end architecture;
