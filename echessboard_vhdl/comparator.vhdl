library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.riscv_types_pkg.all;

entity ComparatorUnit is
  port (
    cu_stage   : in  ex_stage; -- Current execution stage
    cu_rs1_val : in  word;
    cu_rs2_val : in  word;
    cu_comp_op : in  comp_op_t;
    cu_result  : out STD_LOGIC
  );
end entity;

architecture RTL of ComparatorUnit is
  signal result : std_logic;
begin
  process (cu_stage, cu_rs1_val, cu_rs2_val, cu_comp_op)
    variable lt  : std_logic;
    variable eq  : std_logic;
    variable ltu : std_logic;
  begin
    if (cu_stage = ex_execute) then
      lt := '1' when signed(cu_rs1_val) < signed(cu_rs2_val) else '0';
      eq := '1' when signed(cu_rs1_val) = signed(cu_rs2_val) else '0';
      ltu := '1' when unsigned(cu_rs1_val) < unsigned(cu_rs2_val) else '0';
      case cu_comp_op is
        when comp_eq => -- BEQ
          result <= eq;
        when comp_ne => -- BNE
          result <= not eq;
        when comp_lt => -- BLT
          result <= lt;
        when comp_ge => -- BGE
          result <= not lt;
        when comp_ltu => -- BLTU
          result <= ltu;
        when comp_geu => -- BGEU
          result <= not ltu;
        when others =>
          result <= '0';
      end case;
    elsif (cu_stage = ex_writeback) then
      cu_result <= result;
    end if;
  end process;
end architecture;
