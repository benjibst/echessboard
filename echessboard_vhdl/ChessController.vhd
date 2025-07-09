
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2025 21:55:41
-- Design Name: 
-- Module Name: ChessController - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;
  use work.constant_pkg.all;
  use work.type_pkg.all;
  use work.init_pkg.all;

entity ChessController is
  port (
    clk          : in  std_logic;
    reset        : in  std_logic; --connected to start game button
    valid_spi    : in  std_logic;
    hall_input   : in  std_logic_vector(63 downto 0);
    done         : in  std_logic;
    done_check   : in  std_logic;
    valid        : in  std_logic;
    check        : in  std_logic;
    confirm_move : in  std_logic;
    subs_piece   : in  std_logic_vector(7 downto 0);
    subs_needed  : in  std_logic;
    start        : out std_logic;
    start_check  : out std_logic;
    board_state  : out pieces;
    start_pos    : out unsigned(5 downto 0);
    end_pos      : out unsigned(5 downto 0);
    error        : out std_logic;
    winner       : out std_logic_vector(1 downto 0);
    color        : out std_logic := white;
    enable       : out std_logic_vector(2 downto 0);
    sel_cont     : out std_logic:='0'

  );
end entity;

architecture Behavioral of ChessController is

  type state_type is (INPUT_DETECTION, PIECE_DEDUCTION, CONFIRMED_MOVE, VALIDATOR_LOGIC, START_VALIDATOR, WAIT_VALIDATOR, WAIT_SPI, WAIT_CHECK, ERROR_STATE, WIN);
  signal state          : state_type                    := INPUT_DETECTION;
  signal hall_copy      : std_logic_vector(63 downto 0) := (63 downto 48 => '1',
                                                       47 downto 16 => '0',
                                                       15 downto 0  => '1');
  signal board_copy     : pieces                        := init_piece;
  signal check_counter  : unsigned(4 downto 0)          := (others => '0');
  signal check_color    : std_logic;
  signal white_king_pos : unsigned(5 downto 0);
  signal black_king_pos : unsigned(5 downto 0);
  signal flag           : unsigned(1 downto 0)          := (others => '0');
  signal shape_sign     : std_logic_vector(2 downto 0)  := EMPTY;
  signal to_pos_sign    : unsigned(5 downto 0)          := (others => '0');
  signal from_pos_sign  : unsigned(5 downto 0)          := (others => '0');
  signal eat_pos_sign   : unsigned(5 downto 0)          := (others => '0');

  signal start_d       : std_logic                    := '1';
  signal start_check_d : std_logic                    := '1';
  signal start_pos_d   : unsigned(5 downto 0)         := (others => '0');
  signal end_pos_d     : unsigned(5 downto 0)         := (others => '0');
  signal error_d       : std_logic                    := '0';
  signal winner_d      : std_logic_vector(1 downto 0) := "01";

begin
  -- Output assignments
  start       <= start_d;
  start_check <= start_check_d;
  board_state <= board_copy;
  start_pos   <= start_pos_d;
  end_pos     <= end_pos_d;
  error       <= error_d;
  winner      <= winner_d;

  process (clk, reset)
    variable detect   : std_logic                     := '0';
    variable diff     : std_logic_vector(63 downto 0) := (others => '0');
    variable idx      : unsigned(5 downto 0)          := (others => '0');
    variable from_pos : unsigned(5 downto 0)          := (others => '0');
    variable to_pos   : unsigned(5 downto 0)          := (others => '0');
    variable eat_pos  : unsigned(5 downto 0)          := (others => '0');
    variable shape    : std_logic_vector(2 downto 0)  := EMPTY;

  begin

    if reset = '1' then
      state <= WAIT_SPI;
      board_copy <= init_piece;
      hall_copy <= (63 downto 48 => '1',
                    47 downto 16 => '0',
                    15 downto 0  => '1');
      start_d <= '1';
      start_check_d <= '1';
      winner_d <= "01"; -- partita in corso
      error_d <= '0';
      flag <= (others => '0');

    elsif rising_edge(clk) then
      detect := '0';
      shape := shape_sign;
      to_pos := to_pos_sign;
      from_pos := from_pos_sign;
      eat_pos := eat_pos_sign;
      winner_d <= winner_d;
      error_d <= error_d;

      case state is

        when WAIT_SPI =>
          if valid_spi = '1' then
            state <= INPUT_DETECTION;
          else
            state <= WAIT_SPI;
          end if;

        when WAIT_VALIDATOR =>
          if done = '0' then
            if subs_needed = '1' and subs_piece = "000" then
              state <= WAIT_SPI;
            else
              state <= START_VALIDATOR;
            end if;
          else
            state <= WAIT_VALIDATOR;
          end if;

        when INPUT_DETECTION =>
          hall_copy <= hall_input;
          winner_d <= "00";
          diff := hall_copy xor hall_input;
          for i in 0 to 63 loop
            if diff(i) = '1' then
              idx := to_unsigned(i, 6);
              detect := '1';
            end if;
          end loop;
          if detect = '0' then
            state <= INPUT_DETECTION;
          else
            if hall_input(to_integer(idx)) = '1' then --XXX sto guardando il precedente
              if flag = 0 then
                state <= ERROR_STATE;
              elsif flag = 1 then
                to_pos := idx;
                to_pos_sign <= to_pos;
                flag <= to_unsigned(0, 2);
                state <= CONFIRMED_MOVE;
              elsif flag = 2 then
                to_pos := idx;
                to_pos_sign <= to_pos;
                flag <= to_unsigned(1, 2);
                state <= CONFIRMED_MOVE;
              end if;
            else
              if flag = 1 then
                eat_pos := idx;
                eat_pos_sign <= eat_pos;
                flag <= to_unsigned(2, 2);
                state <= INPUT_DETECTION;
              else
                from_pos := idx;
                from_pos_sign <= from_pos;
                start_pos_d <= from_pos_sign;
                state <= INPUT_DETECTION;
                flag <= to_unsigned(1, 2);
              end if;
            end if;
          end if;

        when CONFIRMED_MOVE =>
          if confirm_move = '1' then
            if flag = 0 then
              state <= PIECE_DEDUCTION;
            elsif flag = 1 then
              if eat_pos = to_pos then
                state <= PIECE_DEDUCTION;
              else
                state <= ERROR_STATE;
              end if;
            else
              state <= ERROR_STATE;
            end if;
          else
            state <= CONFIRMED_MOVE;
          end if;

        when PIECE_DEDUCTION =>
          if board_copy(to_integer(from_pos)).color = color then
            shape := board_copy(to_integer(from_pos)).shape;
            shape_sign <= shape;
            case shape is
              when EMPTY =>
                state <= ERROR_STATE;
              when others =>
                start_d <= '1';
                enable <= shape;
                state <= WAIT_VALIDATOR;
            end case;
          else
            state <= ERROR_STATE;
          end if;

        when START_VALIDATOR =>
          start_d <= '0';
          if valid = '0' then
            if enable = KING then
              if color = white then
                white_king_pos <= to_pos;
              else
                black_king_pos <= to_pos;
              end if;
            end if;
            check_color <= not color;
            start_check_d <= '1';
            sel_cont<='1';
            state <= WAIT_CHECK;
          else
            state <= ERROR_STATE;
          end if;

        when WAIT_CHECK =>
          if done_check = '1' then
            start_check_d <= '0';
            sel_cont<='0';
            if check = '1' then
              check_counter <= check_counter + 1;
              state <= WIN;
            else
              state <= VALIDATOR_LOGIC;
            end if;
          else
            state <= WAIT_CHECK;
          end if;

        when VALIDATOR_LOGIC =>
          if check_color = color and check_counter > 0 then
            if color = white then
              end_pos_d <= white_king_pos;
            else
              end_pos_d <= black_king_pos;
            end if;
            start_check_d <= '1';
            sel_cont<='1';
            state <= WAIT_CHECK;
          else
            board_copy(to_integer(from_pos)).shape <= EMPTY;
            board_copy(to_integer(from_pos)).first_move <= '0';
            board_copy(to_integer(from_pos)).color <= '0';

            if subs_needed = '1' then
              shape := subs_piece;
            else
              shape := shape_sign;
            end if;

            board_copy(to_integer(to_pos)).shape <= shape;
            board_copy(to_integer(to_pos)).first_move <= '0';
            board_copy(to_integer(to_pos)).color <= color;

            color <= not color;
            start_pos_d <= from_pos;
            end_pos_d <= to_pos;
            state <= INPUT_DETECTION;
          end if;

        when WIN =>
          winner_d <= (not color) & (not color); --00 vince il nero, 11 vince il bianco
          state <= INPUT_DETECTION;

        when ERROR_STATE =>
          error_d <= '1'; --led acceso
          state <= INPUT_DETECTION;

      end case;
    end if;
  end process;
end architecture;
