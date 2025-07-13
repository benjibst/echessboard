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
    TOP_CLK100     : in  std_logic;
    RST            : in  std_logic;

    CS_N           : in  std_logic;
    SCLK           : in  std_logic;
    MISO           : out std_logic;
    MOSI           : in  std_logic;

    top_vga_h_sync : out std_logic;
    top_vga_v_sync : out std_logic;
    top_vga_red0   : out std_logic;
    top_vga_red1   : out std_logic;
    top_vga_red2   : out std_logic;
    top_vga_red3   : out std_logic;
    top_vga_green0 : out std_logic;
    top_vga_green1 : out std_logic;
    top_vga_green2 : out std_logic;
    top_vga_green3 : out std_logic;
    top_vga_blue0  : out std_logic;
    top_vga_blue1  : out std_logic;
    top_vga_blue2  : out std_logic;
    top_vga_blue3  : out std_logic;
    top_error  : out std_logic
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

  signal WR_DATA     : std_logic_vector(31 downto 0);
  signal WR_ADDRESS  : unsigned(7 downto 0);
  signal WR_ENABLE   : std_logic_vector(3 downto 0);
  signal START_WRITE : std_logic;

  signal clkcnt    : unsigned(3 downto 0);
  signal clk25  : std_logic;
  signal clkcpu : std_logic;
begin
  top_error <= ERROR_INT;
  process (TOP_CLK100) is
  begin
    if (rising_edge(TOP_CLK100)) then
      if (RST = '0') then
        clkcnt <= "1010";
        clkcpu <= '0';
        clk25 <= '0';
      else
        clkcnt <= clkcnt + 1;
        clkcpu <= clkcnt(3); -- Divide clock by 16
        clk25 <= clkcnt(1); -- Divide clock by 4
      end if;
    end if;
  end process;

  DATA_PATH: entity work.DataPath
    port map (
      dp_reset      => RST,
      dp_clkcpu     => clkcpu,
      dp_clk25      => clk25,

      dp_spi_addr   => WR_ADDRESS,
      dp_spi_data   => WR_DATA,
      dp_spi_we     => WR_ENABLE,

      dp_vga_h_sync => top_vga_h_sync,
      dp_vga_v_sync => top_vga_v_sync,
      dp_vga_red0   => top_vga_red0,
      dp_vga_red1   => top_vga_red1,
      dp_vga_red2   => top_vga_red2,
      dp_vga_red3   => top_vga_red3,
      dp_vga_green0 => top_vga_green0,
      dp_vga_green1 => top_vga_green1,
      dp_vga_green2 => top_vga_green2,
      dp_vga_green3 => top_vga_green3,
      dp_vga_blue0  => top_vga_blue0,
      dp_vga_blue1  => top_vga_blue1,
      dp_vga_blue2  => top_vga_blue2,
      dp_vga_blue3  => top_vga_blue3
    );

  --Memory writer
  MEM_WRITE: entity work.MemoryWriter
    port map (
      clk         => clkcpu,
      reset       => START_GAME,

      -- Segnali dalla FSM
      board_state => BOARD_STATE,
      from_pos    => START_POS,
      to_pos      => END_POS,
      ready       => START_WRITE,

      -- Interfaccia con la memoria
      wr_data     => WR_DATA,
      wr_addr     => WR_ADDRESS,
      wr_en       => WR_ENABLE
    );

  -- Istanziazione ChessController (produce winner e wrong)
  CTRL: entity work.ChessController
    port map (
      --input
      clk          => clkcpu,
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
      eat_move     => EAT_MOVE,
      memory_ready => START_WRITE

    );

  -- Istanziazione spi_slave (legge winner e wrong)
  SPI_IF: entity work.spi_slave
    port map (
      --input
      CLK          => clkcpu,
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
      clk           => clkcpu,
      start         => START_PAWN,
      hall_input    => HALL_PAWN,
      start_pos     => S_POS_PAWN,
      end_pos       => E_POS_PAWN,
      color         => COLOR,
      eat_move      => EAT_MOVE,

      subs_required => SUBS_REQ,
      done          => DONE_PAWN,
      valid         => VALID_PAWN
    );

  BISHOP_VALIDATOR: entity work.bishop_validator
    port map (
      clk        => clkcpu,
      start      => START_BISHOP,
      hall_input => HALL_BISHOP,
      start_pos  => S_POS_BISHOP,
      end_pos    => E_POS_BISHOP,

      done       => DONE_BISHOP,
      valid      => VALID_BISHOP
    );

  ROOK_VALIDATOR: entity work.rook_validator
    port map (
      clk        => clkcpu,
      start      => START_ROOK,
      hall_input => HALL_ROOK,
      start_pos  => S_POS_ROOK,
      end_pos    => E_POS_ROOK,

      done       => DONE_ROOK,
      valid      => VALID_ROOK
    );

  QUEEN_VALIDATOR: entity work.queen_validator
    port map (
      clk        => clkcpu,
      start      => START_QUEEN,
      hall_input => HALL_QUEEN,
      start_pos  => S_POS_QUEEN,
      end_pos    => E_POS_QUEEN,

      done       => DONE_QUEEN,
      valid      => VALID_QUEEN
    );

  KING_VALIDATOR: entity work.king_validator
    port map (
      clk       => clkcpu,
      start     => START_KING,
      start_pos => S_POS_KING,
      end_pos   => E_POS_KING,

      done      => DONE_KING,
      valid     => VALID_KING
    );

  KNIGHT_VALIDATOR: entity work.knight_validator
    port map (
      clk       => clkcpu,
      start     => START_KNIGHT,
      start_pos => S_POS_KNIGHT,
      end_pos   => E_POS_KNIGHT,

      done      => DONE_KNIGHT,
      valid     => VALID_KNIGHT
    );

  ----Controller of validators ---------------------------------------------------------------------------
  MUX_START: entity work.six_mux
    port map (
      clk      => clkcpu,
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
      clk      => clkcpu,
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
      clk      => clkcpu,
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
      clk      => clkcpu,
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
      clk      => clkcpu,
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
      clk      => clkcpu,
      sign     => DATA_BOARD,
      sel      => ENABLE,
      s_queen  => HALL_QUEEN,
      s_bishop => HALL_BISHOP,
      s_rook   => HALL_ROOK,
      s_pawn   => HALL_PAWN
    );

  -- Output top-level
  MISO   <= MISO_INT;

end architecture;

