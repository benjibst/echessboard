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
    CLK        : in  std_logic;
    RST        : in  std_logic;
    SCLK       : in  std_logic;
    CS_N       : in  std_logic;
    MOSI       : in  std_logic;
    START_GAME : in  std_logic;

    MISO       : out std_logic;
    WINNER     : out std_logic_vector(1 downto 0);
    ERROR      : out std_logic
  );
end entity;

architecture Structural of TopLevel is

  -- Segnali interni
  signal DATA_BOARD     : std_logic_vector(63 downto 0);
  signal PIECE          : std_logic_vector(7 downto 0);
  signal DATA_VALID_SPI : std_logic;
  signal SUBS_REQ       : std_logic;

  signal CONFIRM_MOVE       : std_logic;
  signal COLOR              : std_logic;
  signal DONE_CHECK, CHECK  : std_logic := '0';
  signal DONE, VALID        : std_logic;
  signal ENABLE             : std_logic_vector(7 downto 0);
  signal ENABLE_CV          : std_logic_vector(2 downto 0);
  signal START, START_CHECK : std_logic;
  signal BOARD_STATE        : pieces;
  signal START_POS, END_POS : unsigned(5 downto 0);

  signal ERROR_INT  : std_logic;
  signal WINNER_INT : std_logic_vector(1 downto 0);
  signal MISO_INT   : std_logic;

  signal START_KNIGHT, START_QUEEN, START_BISHOP, START_KING, START_ROOK, START_PAWN, START_CV, START_MUX : std_logic;
  signal VALID_KNIGHT, VALID_QUEEN, VALID_BISHOP, VALID_KING, VALID_ROOK, VALID_PAWN, VALID_CV, VALID_MUX : std_logic;
  signal DONE_KNIGHT, DONE_QUEEN, DONE_BISHOP, DONE_KING, DONE_ROOK, DONE_PAWN, DONE_CV, DONE_MUX        : std_logic;
  signal S_POS_KNIGHT, S_POS_QUEEN, S_POS_BISHOP, S_POS_KING, S_POS_ROOK, S_POS_PAWN, S_POS_CV, S_POS_MUX : unsigned(5 downto 0);
  signal E_POS_KNIGHT, E_POS_QUEEN, E_POS_BISHOP, E_POS_KING, E_POS_ROOK, E_POS_PAWN, E_POS_CV, E_POS_MUX : unsigned(5 downto 0);
  signal HALL_QUEEN, HALL_BISHOP, HALL_ROOK, HALL_PAWN, HALL_CV, HALL_MUX                      : std_logic_vector (63 downto 0);

  signal SEL_CONT :std_logic;
  signal ENABLE_MUX: std_logic_vector(2 downto 0);
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
      done_check   => DONE_CHECK,  -- output that comes from CHECK validator
      valid        => VALID,
      check        => CHECK,       -- output that comes from CHECK validator
      confirm_move => CONFIRM_MOVE,
      subs_piece   => PIECE,
      subs_needed  => SUBS_REQ,
      sel_cont     => SEL_CONT,
      --output
      start        => START,
      start_check  => START_CHECK, -- to put as input to CHECK validator
      board_state  => BOARD_STATE, -- to put as input in VGA controller
      start_pos    => START_POS,
      end_pos      => END_POS,
      error        => ERROR_INT,
      winner       => WINNER_INT,
      color        => COLOR,
      enable       => ENABLE
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
      DATA_VALID   => DATA_VALID_SPI
    );
  
  --cHECK CONTROLLER

  CHECK_CONTROLLER: entity work.check_controller
    port map (
    clk           =>CLK,
    start_check   =>START_CHECK,
    end_pos       =>END_POS,
    color         =>COLOR,
    hall_input    =>DATA_BOARD,
    board_state   =>BOARD_STATE,
    done_check    =>DONE_CHECK,
    check         =>CHECK,

    start         =>START_CV,
    hall_input_CV =>HALL_CV,
    start_pos_CV  =>S_POS_CV,
    end_pos_CV    =>E_POS_CV,
    enable        =>ENABLE_CV,

    done          =>DONE_CV,
    valid         =>VALID_CV
    );

--main mux
  SELECTOR: entity work.two_mux
    port map (
    clk    =>CLK,
    sel_controller =>SEL_CONT,
    sel_validator  =>ENABLE_MUX,
    CC=> ENABLE,
    CV => ENABLE_CV,
    
    start=> START,
    start_CV => START_CV,
    valid=> VALID,
    valid_CV => VALID_CV,
    done => DONE,
    done_CV => DONE_CV,
    s_pos=> START_POS,
    s_pos_CV => S_POS_CV,
    e_pos=> END_POS,
    e_pos_CV =>E_POS_CV,
    hall =>DATA_BOARD,
    hall_CV=>HALL_CV,
    
    start_val => START_MUX,
    valid_val => VALID_MUX,
    done_val => DONE_MUX,
    s_pos_val=> S_POS_MUX,
    e_pos_val => E_POS_MUX,
    hall_val=> HALL_MUX
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
        clk    =>  CLK,  
        sign=> START_MUX,
        sel=> ENABLE_MUX,
        s_knight => START_KNIGHT,
        s_queen=> START_QUEEN,
        s_bishop=>START_BISHOP,
        s_king =>START_KING,
        s_rook=>START_ROOK,
        s_pawn=>START_PAWN
    );

MUX_DONE: entity work.six_demux
port map (
        clk    =>  CLK,  
        sign=> DONE_MUX,
        sel=> ENABLE_MUX,
        s_knight => DONE_KNIGHT,
        s_queen=> DONE_QUEEN,
        s_bishop=>DONE_BISHOP,
        s_king =>DONE_KING,
        s_rook=>DONE_ROOK,
        s_pawn=>DONE_PAWN
    );
    
    MUX_VALID: entity work.six_demux
port map (
        clk    =>  CLK,  
        sign=> VALID_MUX,
        sel=> ENABLE_MUX,
        s_knight => VALID_KNIGHT,
        s_queen=> VALID_QUEEN,
        s_bishop=>VALID_BISHOP,
        s_king =>VALID_KING,
        s_rook=>VALID_ROOK,
        s_pawn=>VALID_PAWN
    );
    
 MUX_S_POS: entity work.six_mux_vector
port map (
        clk    =>  CLK,  
        sign=> S_POS_MUX,
        sel=> ENABLE_MUX,
        s_knight => S_POS_KNIGHT,
        s_queen=> S_POS_QUEEN,
        s_bishop=>S_POS_BISHOP,
        s_king =>S_POS_KING,
        s_rook=>S_POS_ROOK,
        s_pawn=>S_POS_PAWN
    );
    
    MUX_E_POS: entity work.six_mux_vector
port map (
        clk    =>  CLK,  
        sign=> E_POS_MUX,
        sel=> ENABLE_MUX,
        s_knight => E_POS_KNIGHT,
        s_queen=> E_POS_QUEEN,
        s_bishop=>E_POS_BISHOP,
        s_king =>E_POS_KING,
        s_rook=>E_POS_ROOK,
        s_pawn=>E_POS_PAWN
    );
    
   MUX_HALL: entity work.four_mux_vector
port map (
        clk    =>  CLK,  
        sign=> HALL_MUX,
        sel=> ENABLE_MUX,
        s_queen=> HALL_QUEEN,
        s_bishop=>HALL_BISHOP,
        s_rook=>HALL_ROOK,
        s_pawn=>HALL_PAWN
    );    

  -- Output top-level
  ERROR  <= ERROR_INT;
  WINNER <= WINNER_INT;
  MISO   <= MISO_INT;

end architecture;

