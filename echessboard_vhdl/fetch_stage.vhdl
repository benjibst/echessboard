library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity FetchStage is
  port (
    if_reset       : in  std_logic;
    if_clk         : in  STD_LOGIC;
    if_pc_in       : in  STD_LOGIC_VECTOR(11 downto 0);
    if_instruction : out word;
    if_pc_curr     : out STD_LOGIC_VECTOR(11 downto 0);
    if_pc_next     : out STD_LOGIC_VECTOR(11 downto 0)
  );
end entity;

architecture RTL of FetchStage is
  signal if_pc_curr_reg : STD_LOGIC_VECTOR(11 downto 0);
  signal if_pc_next_reg : STD_LOGIC_VECTOR(11 downto 0);
begin
  pc: entity work.ProgramCounter(RTL) port map (
    pc_reset   => if_reset,
    pc_clk     => if_clk,
    pc_in      => if_pc_in,
    pc_curr    => if_pc_curr_reg,
    pc_next    => if_pc_next_reg
  );
  im: entity work.instr_mem
    port map (
      clka  => if_clk,
      addra => if_pc_curr_reg(11 downto 2),
      douta => if_instruction
    );

  process (if_clk) is
  begin
    if (rising_edge(if_clk)) then
      if_pc_curr <= if_pc_curr_reg;
      if_pc_next <= if_pc_next_reg;
    end if;
  end process;
end architecture;

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity FetchStageTB is
end entity;
architecture RTL of FetchStageTB is
  signal clk_period : TIME := 10 ns;
  signal tb_reset : std_logic;
  signal tb_clk         : STD_LOGIC;
  signal tb_load_en     : STD_LOGIC;
  signal tb_pc_in       : STD_LOGIC_VECTOR(11 downto 0);
  signal tb_instruction : word;
  signal tb_pc_curr     : STD_LOGIC_VECTOR(11 downto 0);
  signal tb_pc_next     : STD_LOGIC_VECTOR(11 downto 0);
begin
  tb_pc_in <= tb_pc_next;
  uut: entity work.FetchStage(RTL) port map (
    if_reset => tb_reset,
    if_clk         => tb_clk,
    if_pc_in       => tb_pc_in,
    if_instruction => tb_instruction,
    if_pc_curr     => tb_pc_curr,
    if_pc_next     => tb_pc_next
  );

  process
  begin
    while true loop
      tb_clk <= '1';
      wait for clk_period / 2;
      tb_clk <= '0';
      wait for clk_period / 2;
    end loop;
  end process;
end architecture;
