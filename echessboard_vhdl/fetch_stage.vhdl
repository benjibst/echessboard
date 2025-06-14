library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity FetchStage is
  port (
    if_stage       : in  ex_stage; -- Current execution stage
    if_clk         : in  STD_LOGIC;
    if_pc_in       : in  STD_LOGIC_VECTOR(11 downto 0);
    if_instruction : out word;
    if_pc_curr     : out STD_LOGIC_VECTOR(11 downto 0);
    if_pc_next     : out STD_LOGIC_VECTOR(11 downto 0)
  );
end entity;

architecture RTL of FetchStage is
begin
  pc: entity work.ProgramCounter(RTL) port map (
    pc_stage => if_stage,
    pc_clk   => if_clk,
    pc_in    => if_pc_in,
    pc_curr  => if_pc_curr,
    pc_next  => if_pc_next
  );
  im: entity work.instr_mem
    port map (
      clka  => if_clk,
      addra => if_pc_curr(11 downto 2),
      douta => if_instruction
    );

end architecture;
