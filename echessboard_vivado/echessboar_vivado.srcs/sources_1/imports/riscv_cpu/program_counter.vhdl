library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;

entity ProgramCounter is
  port (
    pc_clk     : in  STD_LOGIC                     := '0';             -- clock input
    pc_load_en : in  STD_LOGIC                     := '0';             -- TODO: implement load enable
    pc_in      : in  STD_LOGIC_VECTOR(11 downto 0) := (others => '0'); -- TODO: implement load enable
    pc_curr    : out STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
    pc_next    : out STD_LOGIC_VECTOR(11 downto 0) := (others => '0')
  );
end entity;

architecture RTL of ProgramCounter is
  signal pc_num : UNSIGNED(11 downto 0);
begin
  process (pc_clk)
  begin
    if rising_edge(pc_clk) then
      pc_num <= unsigned(pc_in);
    end if;
  end process;

  pc_curr <= STD_LOGIC_VECTOR(pc_num);     -- forward current value
  pc_next <= STD_LOGIC_VECTOR(pc_num + 4); -- append trailing zeros
end architecture;
