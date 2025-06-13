library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;
  use work.riscv_types_pkg.all;

entity ProgramCounter is
  port (
    pc_stage : in  ex_stage; -- Current execution stage
    pc_clk   : in  STD_LOGIC;
    pc_in    : in  STD_LOGIC_VECTOR(11 downto 0);
    pc_curr  : out STD_LOGIC_VECTOR(11 downto 0);
    pc_next  : out STD_LOGIC_VECTOR(11 downto 0)
  );
end entity;

architecture RTL of ProgramCounter is
  signal pc_num : UNSIGNED(11 downto 0);
begin
  process (pc_clk)
  begin
    if rising_edge(pc_clk) then
      if (pc_stage = ex_reset) then
        pc_num <= x"000";
      elsif (pc_stage = ex_writeback) then
        pc_num <= unsigned(pc_in);
      end if;
    end if;
  end process;

  pc_curr <= STD_LOGIC_VECTOR(pc_num);     -- forward current value
  pc_next <= STD_LOGIC_VECTOR(pc_num + 4); -- append trailing zeros
end architecture;
