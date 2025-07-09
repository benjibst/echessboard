library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.numeric_std.all;
  use work.type_pkg.all;
  use work.constant_pkg.all;

entity check_controller is
  port (
    clk           : in  std_logic;
    start_check   : in  std_logic;
    end_pos       : in  unsigned(5 downto 0);
    color         : in  std_logic;
    hall_input    : in std_logic_vector(63 downto 0);
    board_state   : in pieces;
    done_check    : out std_logic;
    check         : out std_logic;

    start         : out  std_logic;
    hall_input_CV : out  std_logic_vector(63 downto 0);
    start_pos_CV  : out  unsigned(5 downto 0);
    end_pos_CV    : out  unsigned(5 downto 0);
    enable        : out std_logic_vector (2 downto 0);

    done          : in std_logic;
    valid         : in std_logic
  );
end entity;

architecture Behavioral of check_controller is
  type state_type is (IDLE, CHECK_MOVE, WAIT_VALIDATOR, DONE_STATE);
  signal state : state_type := IDLE;
  signal i     : integer range 0 to 63 := 0;
  signal check_found : std_logic := '0'; -- accumula il risultato
begin
  process (clk)
  begin
    if rising_edge(clk) then
      hall_input_CV <= hall_input;
      end_pos_CV <= end_pos;
      start <= '0';

      case state is

        when IDLE =>
          done_check <= '0';
          check <= '0';
          check_found <= '0';
          i <= 0;

          if start_check = '1' then
            state <= CHECK_MOVE;
          end if;

        when CHECK_MOVE =>
          if i < 64 then
            if board_state(i).color /= color then
              case board_state(i).shape is
                when PAWN   => enable <= PAWN;
                when ROOK   => enable <= ROOK;
                when BISHOP => enable <= BISHOP;
                when QUEEN  => enable <= QUEEN;
                when KING   => enable <= KING;
                when KNIGHT => enable <= KNIGHT;
                when others => enable <= "000";
              end case;

              start_pos_CV <= to_unsigned(i, 6); -- assicurati che `start_pos_CV` sia 6 bit
              start <= '1';
              state <= WAIT_VALIDATOR;

            else
              i <= i + 1; -- passa al prossimo pezzo
            end if;
          else
            state <= DONE_STATE;
          end if;


        when WAIT_VALIDATOR =>
          if done = '1' then
            if valid = '1' then
              check_found <= '1'; 
            end if;
            i <= i + 1; -- continua col prossimo pezzo
            state <= CHECK_MOVE;
          end if;


          when DONE_STATE =>
          check <= check_found;
          done_check <= '1';
          state <= IDLE;

      end case;
    end if;
  end process;
end architecture;
