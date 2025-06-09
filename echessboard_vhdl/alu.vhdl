library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity ALU is
  port (
    alu_clk        : in  std_logic;
    alu_a          : in  word;
    alu_b          : in  word;
    alu_op         : in  alu_op_t; -- Default operation is addition
    alu_result     : out word;
    alu_result_pre : out word
  );
end entity;

architecture RTL of ALU is
  signal result : word;
begin
  alu_result_pre <= result;

  process (alu_a, alu_b, alu_op)
  begin
    result <= (others => '0'); -- Default value
    case alu_op is
      when alu_add =>
        result <= std_logic_vector(signed(alu_a) + signed(alu_b));
      when alu_sub =>
        result <= std_logic_vector(signed(alu_a) - signed(alu_b));
      when alu_sll =>
        result <= std_logic_vector(signed(alu_a) sll to_integer(unsigned(alu_b)));
      when alu_srl =>
        result <= std_logic_vector(signed(alu_a) srl to_integer(unsigned(alu_b)));
      when alu_sra =>
        result <= std_logic_vector(shift_right(signed(alu_a), to_integer(unsigned((alu_b)))));
      when alu_slt =>
        result(0) <= '1' when signed(alu_a) < signed(alu_b)
      else
      '0';
      when alu_sltu =>
        result(0) <= '1' when unsigned(alu_a) < unsigned(alu_b)
      else
      '0';
      when alu_xor =>
        result <= alu_a xor alu_b;
      when alu_or =>
        result <= alu_a or alu_b;
      when alu_and =>
        result <= alu_a and alu_b;
      when alu_lui =>
        result <= alu_b;
    end case;
  end process;

  process (alu_clk)
  begin
    if (rising_edge(alu_clk)) then
      alu_result <= result;
    end if;
  end process;
end architecture;
