library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity FetchStage is
  port (
    if_stage       : in  ex_stage; -- Current execution stage
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
    pc_stage => if_stage,
    pc_reset => if_reset,
    pc_clk   => if_clk,
    pc_in    => if_pc_in,
    pc_curr  => if_pc_curr_reg,
    pc_next  => if_pc_next_reg
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
