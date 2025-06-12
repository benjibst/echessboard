library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity ALU is
  port (
    alu_reset      : in std_logic;
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
  signal delay : std_logic;
  signal cnt : unsigned(1 downto 0);
begin
  alu_result_pre <= result;

  process (alu_clk)
  begin
    if(rising_edge(alu_clk)) then
    --reset at beginning
    --delay by 1 clock cycle
    --execute once every 4 clock cycles
    if alu_reset = '0' then
        delay <= '0';
        result <= x"00000000";
        cnt <= "11";
    elsif delay = '0' then
        delay <= '1';
    elsif cnt = "11" then
        cnt <= "00";
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
            result <= x"00000001" when signed(alu_a) < signed(alu_b)
          else
          x"00000000";
          when alu_sltu =>
            result <= x"00000001" when unsigned(alu_a) < unsigned(alu_b)
          else
          x"00000000";
          when alu_xor =>
            result <= alu_a xor alu_b;
          when alu_or =>
            result <= alu_a or alu_b;
          when alu_and =>
            result <= alu_a and alu_b;
          when alu_lui =>
            result <= alu_b;
        end case;
     else
        cnt <= cnt+1;
     end if;
     end if;
  end process;

  process (alu_clk)
  begin
    if (rising_edge(alu_clk)) then
      alu_result <= result;
    end if;
  end process;
end architecture;
