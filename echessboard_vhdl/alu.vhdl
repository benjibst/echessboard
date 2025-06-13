library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity ALU is
  port (
    alu_ex_stage   : in  ex_stage; -- Current execution stage
    alu_a          : in  word;
    alu_b          : in  word;
    alu_op         : in  alu_op_t; -- Default operation is addition
    alu_result     : out word;
    alu_result_pre : out word
  );
end entity;

architecture RTL of ALU is
begin
  process (alu_ex_stage, alu_a, alu_b, alu_op) is
    variable result : word;
  begin
    if (alu_ex_stage = ex_execute) then --next clock cycle stage will be execute and thats when alu runs
      case alu_op is
        when alu_add =>
          result := std_logic_vector(signed(alu_a) + signed(alu_b));
        when alu_sub =>
          result := std_logic_vector(signed(alu_a) - signed(alu_b));
        when alu_sll =>
          result := std_logic_vector(signed(alu_a) sll to_integer(unsigned(alu_b)));
        when alu_srl =>
          result := std_logic_vector(signed(alu_a) srl to_integer(unsigned(alu_b)));
        when alu_sra =>
          result := std_logic_vector(shift_right(signed(alu_a), to_integer(unsigned((alu_b)))));
        when alu_slt =>
          result := x"00000001" when signed(alu_a) < signed(alu_b)
        else
        x"00000000";
        when alu_sltu =>
          result := x"00000001" when unsigned(alu_a) < unsigned(alu_b)
        else
        x"00000000";
        when alu_xor =>
          result := alu_a xor alu_b;
        when alu_or =>
          result := alu_a or alu_b;
        when alu_and =>
          result := alu_a and alu_b;
        when alu_lui =>
          result := alu_b;
      end case;
      alu_result_pre <= result;
    elsif (alu_ex_stage = ex_writeback) then
      alu_result <= alu_result_pre;
    end if;
  end process;

end architecture;
