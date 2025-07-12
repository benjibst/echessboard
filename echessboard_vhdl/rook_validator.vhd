
library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.type_pkg.all;
  use work.constant_pkg.all;

entity rook_validator is
  port (
    clk        : in  std_logic;
    start      : in  std_logic;
    hall_input : in  std_logic_vector(63 downto 0);
    start_pos  : in  unsigned(5 downto 0);
    end_pos    : in  unsigned(5 downto 0);

    done       : out std_logic;
    valid      : out std_logic
  );
end entity;

architecture Behavioral of rook_validator is
  type state_type is (IDLE, CHECK_MOVE, DONE_STATE);
  signal state : state_type := IDLE;
begin
  process (clk)
    variable empty_reg : std_logic_vector(7 downto 0);
    variable start_i   : unsigned(5 downto 0);
    variable end_i     : unsigned(5 downto 0);
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
                  state <= DONE_STATE;

          empty_reg := (others => '0');

            from_row := to_unsigned(to_integer(start_pos) / 8, 3);
            from_col := to_unsigned(to_integer(start_pos) mod 8, 3);
            
            to_row := to_unsigned(to_integer(end_pos) / 8, 3);
            to_col := to_unsigned(to_integer(end_pos) mod 8, 3);


          start_i := start_pos;
          end_i := end_pos;
          --diagonal move
          -- straight move
            --vertical
            if to_col = from_col then
                if start_i > end_i then
                  for i in 0 to 7 loop
                    if (start_i - i * 8) > end_i and (start_i - i * 8)>=0  then               --a livello di sintesi bisgona garantire che non escano dall'indice indipendentemente dall'input
                      empty_reg(i) := hall_input(to_integer(start_i) - i * 8);
                    end if;
                  end loop;
                else
                  for i in 0 to 7 loop
                    if (start_i + i * 8) < end_i and (start_i + i * 8)<=63  then               --a livello di sintesi bisgona garantire che non escano dall'indice indipendentemente dall'input
                      empty_reg(i) := hall_input(to_integer(start_i) + i * 8);
                    end if;
                  end loop;
                end if;
            end if;
          --horizzontal
            if to_row = from_row then
              if start_i > end_i then
                for i in 0 to 7 loop
                  if (start_i - i) > end_i  and (start_i - i)>=0 then
                    empty_reg(i) := hall_input(to_integer(start_i) - i);
                  end if;
                end loop;
              else
                for i in 0 to 7 loop
                  if (start_i + i) < end_i  and (start_i + i)<=63 then
                    empty_reg(i) := hall_input(to_integer(start_i) + i);
                  end if;
                end loop;
              end if;
            end if;
            
          if empty_reg = "00000000" then
            valid <= '0';
          else
            valid <= '1';
          end if;

        when DONE_STATE => done <= '1';
                           state <= IDLE;

      end case;
    end if;
  end process;
end architecture;
