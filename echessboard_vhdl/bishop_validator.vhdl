library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.type_pkg.all;
  use work.constant_pkg.all;


entity bishop_validator is
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

architecture Behavioral of bishop_validator is
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
          if abs( to_integer(to_col) -  to_integer(from_col)) = abs(to_integer(to_row) - to_integer(from_row)) then

            if from_row > to_row then 

              if from_col > to_col then -- ↗
                for i in 0 to 7 loop
                  if (to_integer(start_i) - 9*i) >=0 and (start_i - 9*i) > end_i  then
                    empty_reg(i) := hall_input(to_integer(start_i) - 9*i);
                  end if;
                end loop;

              else -- ↖
                for i in 0 to 7 loop
                  if (to_integer(start_i) - 7*i) >=0 and (start_i - 7*i) > end_i  then
                    empty_reg(i) := hall_input(to_integer(start_i) - 7*i);
                  end if;
                end loop;
              end if;

            else 
            
              if from_col > to_col then -- ↙
                for i in 0 to 7 loop
                  if (to_integer(start_i)+ 7*i) <= 63 and (start_i + 7*i)<end_pos then
                    empty_reg(i) := hall_input(to_integer(start_i) + 7*i);
                  end if;
                end loop;

              else -- ↘
               for i in 0 to 7 loop
                  if (to_integer(start_i)+ 9*i) <= 63 and (start_i + 9*i)<end_pos then
                    empty_reg(i) := hall_input(to_integer(start_i) + 9*i);
                  end if;
                end loop;
              end if;
            end if;
         end if;


            if empty_reg = "00000000" then
              valid <= '1';
            else
              valid <= '0';
            end if;

        when DONE_STATE => 
          done <= '1';
          state <= IDLE;
          

      end case;
    end if;
  end process;
end Behavioral;