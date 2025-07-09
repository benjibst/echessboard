
library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.type_pkg.all;
  use work.constant_pkg.all;

entity king_validator is
  port (
    clk        : in  std_logic;
    start      : in  std_logic;
    start_pos  : in  unsigned(5 downto 0);
    end_pos    : in  unsigned(5 downto 0);

    done       : out std_logic;
    valid      : out std_logic
  );
end entity;

architecture Behavioral of king_validator is
  type state_type is (IDLE, CHECK_MOVE, DONE_STATE);
  signal state : state_type := IDLE;

begin
  process (clk)
  begin
    if rising_edge(clk) then
      case state is

        when IDLE =>
          valid <= '0';
          done <= '0';

          if start = '1' then
            state <= CHECK_MOVE;
          end if;

        when CHECK_MOVE =>

        if abs(to_integer(start_pos)-to_integer(end_pos))=1 or 
        abs(to_integer(start_pos)-to_integer(end_pos))=8 or 
        abs(to_integer(start_pos)-to_integer(end_pos))=7 or 
        abs(to_integer(start_pos)-to_integer(end_pos))=9 then
          valid<='1';
        else
          valid<='0';
        end if;

        when DONE_STATE => 
          done <= '1';
          state <= IDLE;
          

      end case;
    end if;
  end process;
end Behavioral;