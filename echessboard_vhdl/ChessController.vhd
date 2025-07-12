
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
    valid        : in  std_logic;
    confirm_move : in  std_logic;
    subs_piece   : in  std_logic_vector(2 downto 0);
    subs_needed  : in  std_logic;
    start        : out std_logic;
    board_state  : out pieces;
    start_pos    : out unsigned(5 downto 0);
    end_pos      : out unsigned(5 downto 0);
    error        : out std_logic;
    winner       : out std_logic_vector(1 downto 0);
    color        : out std_logic := white;
    enable       : out std_logic_vector(2 downto 0);
    memory_ready : out std_logic;
    eat_move     : out std_logic
  );
end entity;

architecture Behavioral of ChessController is

  type state_type is (INPUT_DETECTION, PIECE_DEDUCTION, CONFIRMED_MOVE, VALIDATOR_LOGIC, WAIT_VALIDATOR, WAIT_SPI, ERROR_STATE, WIN);
  signal state      : state_type                    := INPUT_DETECTION;
  signal hall_copy  : std_logic_vector(63 downto 0) := (63 downto 48 => '1',
                                                       47 downto 16 => '0',
                                                       15 downto 0  => '1');
  signal board_copy : pieces                        := init_piece;
  signal flag       : unsigned(1 downto 0)          := (others => '0');
  signal shape_sign : std_logic_vector(2 downto 0)  := EMPTY;

  signal start_d     : std_logic                    := '0';
  signal start_pos_d : unsigned(5 downto 0)         := (others => '0');
  signal end_pos_d   : unsigned(5 downto 0)         := (others => '0');
  signal error_d     : std_logic                    := '0';
  signal winner_d    : std_logic_vector(1 downto 0) := "01";
  signal color_d     : std_logic                    := white;
  signal enable_d    : std_logic_vector(2 downto 0) := (others => '0');
  signal eat_move_d :  std_logic:='0';
  signal captured :  std_logic:='0';


begin
  -- Output assignments
  start       <= start_d;
  board_state <= board_copy;
  start_pos   <= start_pos_d;
  end_pos     <= end_pos_d;
  error       <= error_d;
  winner      <= winner_d;
  color       <= color_d;
  enable      <= enable_d;
  eat_move    <=eat_move_d;

  process (clk,reset)
    variable detect    : std_logic                     := '0';
    variable diff      : std_logic_vector(63 downto 0) := (others => '0');
    variable idx       : unsigned(5 downto 0)          := (others => '0');
    variable to_pos    : unsigned(5 downto 0)          := (others => '0');
    variable shape     : std_logic_vector(2 downto 0)  := EMPTY;
  begin

    if reset = '1' then --  START_GAME
      state <= WAIT_SPI;
      board_copy <= init_piece;
      hall_copy <= (63 downto 48 => '1',
                    47 downto 16 => '0',
                    15 downto 0  => '1');
      start_d <= '0';
      winner_d <= "01"; -- partita in corso
      error_d <= '0';
      flag <= (others => '0');
      enable_d <= (others => '0');
      memory_ready <= '0';

    elsif rising_edge(clk) then
      detect := '0';
      shape := shape_sign;
      winner_d <= winner_d;
      error_d <= error_d;

      case state is

        when WAIT_SPI =>
        memory_ready<='0';
        eat_move_d<=captured;
          if valid_spi = '1' then
            captured<='0';
            state <= INPUT_DETECTION;
          else
            state <= WAIT_SPI;
          end if;

        when INPUT_DETECTION =>
          hall_copy <= hall_input; --update the hall configuration for next cylce
          winner_d <= "01"; -- set default winner to game in play
          diff := hall_copy xor hall_input; --compute the difference between current and next hall configuration to detect moves
          for i in 0 to 63 loop
            if diff(i) = '1' then
              idx := to_unsigned(i, 6); --save the position of the moved piece
              detect := '1'; -- 1 if one piece is detected
            end if;
          end loop;
          if detect = '1' then
            if hall_input(to_integer(idx)) = '1' then --if the change is that a piece was set
              if flag = 0 then -- but no pieces were lifted
                state <= ERROR_STATE; --error
              elsif flag = 1 then --if one piece was lifted
                end_pos_d <= idx; --final position is the detected change
                flag <= to_unsigned(0, 2); --set flag to 0
                state <= WAIT_SPI;
              elsif flag = 2 then --if two pieces were lifted (eat move)
                captured<='1';
                flag <= to_unsigned(0, 2); --set the flag to 1
                state <= WAIT_SPI;
              end if;
            else --if the change is that a piece was lift
              if flag = 1 then --if one was already lift (eat move)
                flag <= to_unsigned(2, 2); --set flag to 2
                state <= WAIT_SPI; --wait for the piece to be set 
              else
                start_pos_d <= idx; --starting position is the detected change
                state <= WAIT_SPI; --start position doesn't change (first lifted)
                flag <= to_unsigned(1, 2); --set flag to 1 and wait for the piece to be set  
              end if;
            end if;
      
          elsif (confirm_move = '1') or (subs_piece /= "000") then
            state <= CONFIRMED_MOVE; --wait for a change (if there is no move, I donìt care about confirmation moves or piece substitution)
          end if;

        when CONFIRMED_MOVE =>
        if confirm_move='1' then
            if flag = 0 or flag = 1 then --the flag was zero (number of ipeces lifted=number of pieces set) or if one piece is still lifted (eat move)
              state <= PIECE_DEDUCTION;
            else
              state <= ERROR_STATE; --move is not allowed, error
            end if;
        else 
            state<=CONFIRMED_MOVE;
        end if;


        when PIECE_DEDUCTION =>
          if board_copy(to_integer(start_pos_d)).color = color_d then --check if the turn is the right one (color of piece lifted= color of turn)
            shape := board_copy(to_integer(start_pos_d)).shape; --variable for shape of last board_copy (the one lifted or set) for the comparations
            shape_sign <= shape; --signal for shape, updated at next clk cycle
            case shape is
              when EMPTY => --if the square of the board was empty
                state <= ERROR_STATE; --error state
              when others =>
                start_d <= '1'; --otherwise start the validator
                enable_d <= shape; --enable the right validator base on the shape of lifted piece
                state <= WAIT_VALIDATOR; --wait for the validator response
            end case;
          else
            state <= ERROR_STATE; --otherwise, wrong color, move not allowed
          end if;

        when WAIT_VALIDATOR =>
          start_d <= '0'; --if the validator has finished
          if done = '1' then
            if subs_needed = '1' and subs_piece = "000" then -- if sobstituting piece is needed (only for pawn validator), wait for it
              state <= WAIT_SPI; --wait for the piece
            else
              if valid='1' then
                state <= VALIDATOR_LOGIC;
              else
                state <= ERROR_STATE;
              end if;
            end if;
          else
            state <= WAIT_VALIDATOR; --if validator has not finished, wait for it
          end if;

        when VALIDATOR_LOGIC => --update the configuration of the board for the vga
          if board_copy(to_integer(end_pos_d)).shape = KING then --if on the end position there is the King, it means win                                     
            state <= WIN;
          else
            memory_ready <= '1';
            state <= WAIT_SPI; --otherwise go back to wait for next move
          end if;
          board_copy(to_integer(start_pos_d)).shape <= EMPTY;
          board_copy(to_integer(start_pos_d)).first_move <= '0';
          board_copy(to_integer(start_pos_d)).color <= '0';

          if subs_needed = '1' then --if there was a chege of piece, show the new piece
            shape := subs_piece;
          else
            shape := shape_sign;
          end if;

          board_copy(to_integer(end_pos_d)).shape <= shape;
          board_copy(to_integer(end_pos_d)).first_move <= '0';
          board_copy(to_integer(end_pos_d)).color <= color_d;

          color_d <= not color_d; --change turn 

        when WIN =>
          winner_d <= (not color_d) & (not color_d); --if the check was made by the withe on the black king, show the led n black king, otherwise on white
          state <= WAIT_SPI;

        when ERROR_STATE => --the configuration of the board dosen't change so you can move agin and redo the move
          error_d <= '1'; --led acceso
          state <= WAIT_SPI;

      end case;
    end if;
  end process;
end architecture;
