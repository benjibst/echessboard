library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity PCOutMux is
  port (
    pom_class       : in  op_class_t;
    pom_branch_cond : in  std_logic;
    pom_next_pc     : in  word;
    pom_alu_result  : in  word;
    pom_pc_out      : out word
  );
end entity;

architecture RTL of PCOutMux is
begin
  process (pom_class, pom_next_pc, pom_alu_result, pom_branch_cond)
  begin
    case pom_class is
      when op_alu | op_store | op_load =>
        pom_pc_out <= pom_next_pc;
      when op_jump =>
        pom_pc_out <= pom_alu_result;
      when op_branch =>
        pom_pc_out <= pom_alu_result when pom_branch_cond = '1'
      else
      pom_next_pc;
    end case;
  end process;
end architecture;
