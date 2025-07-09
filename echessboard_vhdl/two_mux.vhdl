
--comes from chess controller when it activates check controller, it detaches and attaches check controller

library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.constant_pkg.all;


entity two_mux is
  port (
    clk    : in  std_logic;
    sign   : out  std_logic;
    sel_C  : in  std_logic;     
    CC, CV : in std_logic

  );
end entity;

architecture RTL of two_mux is
begin
  process (clk)
  begin
    if rising_edge(clk) then
      sign <= '0';

      case sel_C is
        when PAWN => sign <= CC;
        when ROOK => sign <= CV;

        when others => null;
      end case;
    end if;
  end process;
end architecture;


