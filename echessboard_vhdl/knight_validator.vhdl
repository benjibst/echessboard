
library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.type_pkg.all;
  use work.constant_pkg.all;

entity knight_validator is
  port (
    clk        : in  std_logic;
    start      : in  std_logic;
    start_pos  : in  unsigned(5 downto 0);
    end_pos    : in  unsigned(5 downto 0);

    done       : out std_logic;
    valid      : out std_logic
  );
end entity;

architecture Behavioral of knight_validator is
  type state_type is (IDLE, CHECK_MOVE, DONE_STATE);
  signal state : state_type := IDLE;

begin
  process (clk)
    variable from_col  : unsigned(2 downto 0);
    variable from_row  : unsigned(2 downto 0);
    variable to_col    : unsigned(2 downto 0);
    variable to_row    : unsigned(2 downto 0);
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
        --state <= DONE_STATE;
        from_row := to_unsigned(to_integer(start_pos) / 8, 3);
        from_col := to_unsigned(to_integer(start_pos) mod 8, 3);

        to_row := to_unsigned(to_integer(end_pos) / 8, 3);
        to_col := to_unsigned(to_integer(end_pos) mod 8, 3);


        if (abs(to_integer(from_row)-to_integer(to_row))=1 and abs(to_integer(from_col)-to_integer(to_col))=2) or 
        (abs(to_integer(from_row)-to_integer(to_row))=2 and abs(to_integer(from_col)-to_integer(to_col))=1) then
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