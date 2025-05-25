library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.riscv_types_pkg.comp_op;

entity ComparatorUnit is
  port (
    cu_clk     : in  STD_LOGIC;
    cu_rs1_val : in  STD_LOGIC_VECTOR(31 downto 0);
    cu_rs2_val : in  STD_LOGIC_VECTOR(31 downto 0);
    cu_comp_op : in  comp_op;
    cu_result  : out STD_LOGIC
  );
end entity;

architecture RTL of ComparatorUnit is
  signal result : STD_LOGIC;
  signal lt     : STD_LOGIC;
  signal eq     : STD_LOGIC;
  signal ltu    : STD_LOGIC;
begin
  process (cu_rs1_val, cu_rs2_val)
  begin
    lt <= '1' when signed(cu_rs1_val) < signed(cu_rs2_val) else '0';
    eq <= '1' when signed(cu_rs1_val) = signed(cu_rs2_val) else '0';
    ltu <= '1' when unsigned(cu_rs1_val) < unsigned(cu_rs2_val) else '0';
  end process;

  process (cu_rs1_val, cu_rs2_val, cu_comp_op, eq, lt, ltu)
  begin
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
  end process;

  process (cu_clk)
  begin
    if (rising_edge(cu_clk)) then
      cu_result <= result;
    end if;
  end process;
end architecture;

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity ComparatorUnitTB is
end entity;

architecture RTL of ComparatorUnitTB is
  signal clk_period : TIME := 10 ns;

  signal tb_clk        : STD_LOGIC                     := '0';
  signal tb_rs1_val    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
  signal tb_rs2_val    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
  signal tb_comp_op    : comp_op                       := comp_eq;
  signal tb_result     : STD_LOGIC                     := '0';
  signal comp_op_logic : integer;
begin
  uut: entity work.ComparatorUnit(RTL) port map (
    cu_clk     => tb_clk,
    cu_rs1_val => tb_rs1_val,
    cu_rs2_val => tb_rs2_val,
    cu_comp_op => tb_comp_op,
    cu_result  => tb_result
  );
  comp_op_logic <= comp_op'pos(tb_comp_op);

  process
  begin
    wait for 1 ns;
    while true loop
      tb_clk <= '1';
      wait for clk_period / 2;
      tb_clk <= '0';
      wait for clk_period / 2;
    end loop;
  end process;

  process
  begin
    tb_rs1_val <= x"00000001";
    tb_rs2_val <= x"00000002";
    tb_comp_op <= comp_eq;
    wait for clk_period;
    assert tb_result = '0' report "Test failed: Expected 0" severity error;

    tb_rs1_val <= x"00000001";
    tb_rs2_val <= x"00000001";
    tb_comp_op <= comp_eq;
    wait for clk_period;
    assert tb_result = '1' report "Test failed: Expected 1" severity error;

    tb_rs1_val <= x"00000001";
    tb_rs2_val <= x"00000002";
    tb_comp_op <= comp_ne;
    wait for clk_period;
    assert tb_result = '1' report "Test failed: Expected 1" severity error;

    tb_rs1_val <= x"00000001";
    tb_rs2_val <= x"00000001";
    tb_comp_op <= comp_ne;
    wait for clk_period;
    assert tb_result = '0' report "Test failed: Expected 0" severity error;

    tb_rs1_val <= x"FFFFFFFF"; -- -1
    tb_rs2_val <= x"00000002";
    tb_comp_op <= comp_lt;
    wait for clk_period;
    assert tb_result = '1' report "Test failed: Expected 1" severity error;

    tb_rs1_val <= x"00000002";
    tb_rs2_val <= x"00000001";
    tb_comp_op <= comp_lt;
    wait for clk_period;
    assert tb_result = '0' report "Test failed: Expected 0" severity error;

    tb_rs1_val <= x"00000001";
    tb_rs2_val <= x"00000002";
    tb_comp_op <= comp_ge;
    wait for clk_period;
    assert tb_result = '0' report "Test failed: Expected 0" severity error;

    tb_rs1_val <= x"00000002";
    tb_rs2_val <= x"FFFFFFFF";
    tb_comp_op <= comp_ge;
    wait for clk_period;
    assert tb_result = '1' report "Test failed: Expected 1" severity error;

    tb_rs1_val <= x"FFFFFFFF";
    tb_rs2_val <= x"00000001";
    tb_comp_op <= comp_ltu;
    wait for clk_period;
    assert tb_result = '0' report "Test failed: Expected 0" severity error;

    tb_rs1_val <= x"7FFFFFFF";
    tb_rs2_val <= x"FFFFFFFF";
    tb_comp_op <= comp_ltu;
    wait for clk_period;
    assert tb_result = '1' report "Test failed: Expected 1" severity error;

    tb_rs1_val <= x"FFFFFFFF";
    tb_rs2_val <= x"00000001";
    tb_comp_op <= comp_geu;
    wait for clk_period;
    assert tb_result = '1' report "Test failed: Expected 1" severity error;

    tb_rs1_val <= x"00000001";
    tb_rs2_val <= x"FFFFFFFF";
    tb_comp_op <= comp_geu;
    wait for clk_period;
    assert tb_result = '0' report "Test failed: Expected 0" severity error;
  end process;
end architecture;
