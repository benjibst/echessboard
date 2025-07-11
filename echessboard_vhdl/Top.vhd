----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Benjamin Schmid Ties
-- 
-- Create Date: 03.06.2025 19:59:25
-- Design Name: 
-- Module Name: Top - Behavioral
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

entity TopLevel is
  port (
    CLK    : in  std_logic;
    RST    : in  std_logic;
    SCLK   : in  std_logic;
    CS_N   : in  std_logic;
    MOSI   : in  std_logic;

    MISO   : out std_logic;
    WINNER : out std_logic_vector(1 downto 0);
    ERROR  : out std_logic
  );
end entity;

architecture Structural of TopLevel is

  -- Segnali interni
  signal DATA_BOARD     : std_logic_vector(63 downto 0);
  signal PIECE          : std_logic_vector(2 downto 0);
  signal DATA_VALID_SPI : std_logic;
  signal SUBS_REQ       : std_logic;

  signal CONFIRM_MOVE       : std_logic;
  signal COLOR              : std_logic;
  signal DONE, VALID        : std_logic;
  signal ENABLE             : std_logic_vector(2 downto 0);
  signal START              : std_logic;
  signal BOARD_STATE        : pieces;
  signal START_POS, END_POS : unsigned(5 downto 0);

  signal ERROR_INT  : std_logic;
  signal WINNER_INT : std_logic_vector(1 downto 0);
  signal MISO_INT   : std_logic;

  signal START_KNIGHT, START_QUEEN, START_BISHOP, START_KING, START_ROOK, START_PAWN : std_logic;
  signal VALID_KNIGHT, VALID_QUEEN, VALID_BISHOP, VALID_KING, VALID_ROOK, VALID_PAWN : std_logic;
  signal DONE_KNIGHT, DONE_QUEEN, DONE_BISHOP, DONE_KING, DONE_ROOK, DONE_PAWN       : std_logic;
  signal S_POS_KNIGHT, S_POS_QUEEN, S_POS_BISHOP, S_POS_KING, S_POS_ROOK, S_POS_PAWN : unsigned(5 downto 0);
  signal E_POS_KNIGHT, E_POS_QUEEN, E_POS_BISHOP, E_POS_KING, E_POS_ROOK, E_POS_PAWN : unsigned(5 downto 0);
  signal HALL_QUEEN, HALL_BISHOP, HALL_ROOK, HALL_PAWN                               : std_logic_vector(63 downto 0);
  signal START_GAME, EAT_MOVE                                                        : std_logic;

begin

  -- Istanziazione ChessController (produce winner e wrong)
  CTRL: entity work.ChessController
    port map (
      --input
      clk          => CLK,
      reset        => START_GAME,
      valid_spi    => DATA_VALID_SPI,
      hall_input   => DATA_BOARD,
      done         => DONE,
      valid        => VALID,
      confirm_move => CONFIRM_MOVE,
      subs_piece   => PIECE,
      subs_needed  => SUBS_REQ,
      --output
      start        => START,
      board_state  => BOARD_STATE, -- to put as input in VGA controller
      start_pos    => START_POS,
      end_pos      => END_POS,
      error        => ERROR_INT,
      winner       => WINNER_INT,
      color        => COLOR,
      enable       => ENABLE,
      eat_move     =>EAT_MOVE
    );

  -- Istanziazione spi_slave (legge winner e wrong)
  SPI_IF: entity work.spi_slave
    port map (
      --input
      CLK          => CLK,
      RST          => RST,
      SCLK         => SCLK,
      CS_N         => CS_N,
      MOSI         => MOSI,
      MISO         => MISO_INT,
      WIN          => WINNER_INT,
      WRONG        => ERROR_INT,
      --output
      DATA_BOARD   => DATA_BOARD,
      DATA_CONFIRM => CONFIRM_MOVE,
      DATA_PIECE   => PIECE,
      DATA_VALID   => DATA_VALID_SPI,
      START_GAME   => START_GAME
    );

  --validator
  PAWN_VALIDATOR: entity work.pawn_validator
    port map (
      clk           => CLK,
      start         => START_PAWN,
      hall_input    => HALL_PAWN,
      start_pos     => S_POS_PAWN,
      end_pos       => E_POS_PAWN,
      color         => COLOR,
      eat_move      =>EAT_MOVE,

      subs_required => SUBS_REQ,
      done          => DONE_PAWN,
      valid         => VALID_PAWN
    );

  BISHOP_VALIDATOR: entity work.bishop_validator
    port map (
      clk        => CLK,
      start      => START_BISHOP,
      hall_input => HALL_BISHOP,
      start_pos  => S_POS_BISHOP,
      end_pos    => E_POS_BISHOP,

      done       => DONE_BISHOP,
      valid      => VALID_BISHOP
    );

  ROOK_VALIDATOR: entity work.rook_validator
    port map (
      clk        => CLK,
      start      => START_ROOK,
      hall_input => HALL_ROOK,
      start_pos  => S_POS_ROOK,
      end_pos    => E_POS_ROOK,

      done       => DONE_ROOK,
      valid      => VALID_ROOK
    );

  QUEEN_VALIDATOR: entity work.queen_validator
    port map (
      clk        => CLK,
      start      => START_QUEEN,
      hall_input => HALL_QUEEN,
      start_pos  => S_POS_QUEEN,
      end_pos    => E_POS_QUEEN,

      done       => DONE_QUEEN,
      valid      => VALID_QUEEN
    );

  KING_VALIDATOR: entity work.king_validator
    port map (
      clk       => CLK,
      start     => START_KING,
      start_pos => S_POS_KING,
      end_pos   => E_POS_KING,

      done      => DONE_KING,
      valid     => VALID_KING
    );

  KNIGHT_VALIDATOR: entity work.knight_validator
    port map (
      clk       => CLK,
      start     => START_KNIGHT,
      start_pos => S_POS_KNIGHT,
      end_pos   => E_POS_KNIGHT,

      done      => DONE_KNIGHT,
      valid     => VALID_KNIGHT
    );

  ----Controller of validators ---------------------------------------------------------------------------
  MUX_START: entity work.six_mux
    port map (
      clk      => CLK,
      sign     => START,
      sel      => ENABLE,
      s_knight => START_KNIGHT,
      s_queen  => START_QUEEN,
      s_bishop => START_BISHOP,
      s_king   => START_KING,
      s_rook   => START_ROOK,
      s_pawn   => START_PAWN
    );

  MUX_DONE: entity work.six_demux
    port map (
      clk      => CLK,
      sign     => DONE,
      sel      => ENABLE,
      s_knight => DONE_KNIGHT,
      s_queen  => DONE_QUEEN,
      s_bishop => DONE_BISHOP,
      s_king   => DONE_KING,
      s_rook   => DONE_ROOK,
      s_pawn   => DONE_PAWN
    );

  MUX_VALID: entity work.six_demux
    port map (
      clk      => CLK,
      sign     => VALID,
      sel      => ENABLE,
      s_knight => VALID_KNIGHT,
      s_queen  => VALID_QUEEN,
      s_bishop => VALID_BISHOP,
      s_king   => VALID_KING,
      s_rook   => VALID_ROOK,
      s_pawn   => VALID_PAWN
    );

  MUX_S_POS: entity work.six_mux_vector
    port map (
      clk      => CLK,
      sign     => START_POS,
      sel      => ENABLE,
      s_knight => S_POS_KNIGHT,
      s_queen  => S_POS_QUEEN,
      s_bishop => S_POS_BISHOP,
      s_king   => S_POS_KING,
      s_rook   => S_POS_ROOK,
      s_pawn   => S_POS_PAWN
    );

  MUX_E_POS: entity work.six_mux_vector
    port map (
      clk      => CLK,
      sign     => END_POS,
      sel      => ENABLE,
      s_knight => E_POS_KNIGHT,
      s_queen  => E_POS_QUEEN,
      s_bishop => E_POS_BISHOP,
      s_king   => E_POS_KING,
      s_rook   => E_POS_ROOK,
      s_pawn   => E_POS_PAWN
    );

  MUX_HALL: entity work.four_mux_vector
    port map (
      clk      => CLK,
      sign     => DATA_BOARD,
      sel      => ENABLE,
      s_queen  => HALL_QUEEN,
      s_bishop => HALL_BISHOP,
      s_rook   => HALL_ROOK,
      s_pawn   => HALL_PAWN
    );

  -- Output top-level
  ERROR  <= ERROR_INT;
  WINNER <= WINNER_INT;
  MISO   <= MISO_INT;

end architecture;

