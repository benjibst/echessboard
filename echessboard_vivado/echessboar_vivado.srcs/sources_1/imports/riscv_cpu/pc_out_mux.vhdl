library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity PCOutMux is
  port (
    pom_class       : in  op_class;
    pom_branch_cond : in  STD_LOGIC;
    pom_next_pc     : in  STD_LOGIC_VECTOR(31 downto 0);
    pom_alu_result  : in  STD_LOGIC_VECTOR(31 downto 0);
    pom_pc_out      : out STD_LOGIC_VECTOR(31 downto 0)
  );
end entity;

architecture RTL of PCOutMux is
begin
  process (pom_class, pom_next_pc, pom_alu_result, pom_branch_cond)
  begin
    case pom_class is
      when op_class.op_alu | op_class.op_store =>
        pom_pc_out <= pom_next_pc;
      when op_class.op_jump =>
        pom_pc_out <= pom_alu_result;
      when op_class.op_branch =>
        pom_pc_out <= pom_alu_result when pom_branch_cond = '1'
      else
      pom_next_pc;
    end case;
  end process;
end architecture;
