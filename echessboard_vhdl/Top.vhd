----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.constant_pkg.all;
use work.type_pkg.all;
use work.init_pkg.all;

entity TopLevel is
    Port (
        CLK     : in  std_logic;
        RST     : in  std_logic;
        SCLK    : in  std_logic;
        CS_N    : in  std_logic;
        MOSI    : in  std_logic;
        -- Outputs visibili esternamente se servono
        led     : out std_logic_vector(1 downto 0);
        winner  : out std_logic
    );
end TopLevel;

architecture Behavioral of TopLevel is

    -- Signals to connect internal components
    signal data_board    : std_logic_vector(63 downto 0);
    signal data_confirm  : std_logic_vector(7 downto 0);
    signal data_piece    : std_logic_vector(7 downto 0);
    signal data_valid_spi: std_logic;

    signal confirm_move  : std_logic;
    signal subs_piece    : std_logic_vector(2 downto 0);
    signal valid_spi     : std_logic;

    signal done, done_check, check, check_mate, valid : std_logic := '0'; -- Puoi collegarli ad altri blocchi o fissarli
    signal start, start_check, error : std_logic;
    signal hall_input : std_logic_vector(63 downto 0);
    signal board_state : pieces;
    signal start_pos, end_pos : unsigned(5 downto 0);

begin

    -- Instanziazione SPI slave
    SPI_IF : entity work.spi_slave
        port map (
            CLK          => CLK,
            RST          => RST,
            SCLK         => SCLK,
            CS_N         => CS_N,
            MOSI         => MOSI,
            DATA_BOARD   => data_board,
            DATA_CONFIRM => data_confirm,
            DATA_PIECE   => data_piece,
            DATA_VALID   => data_valid_spi
        );

    -- Mappatura dei segnali
    confirm_move <= data_confirm(0);
    subs_piece    <= data_piece(2 downto 0);
    valid_spi     <= data_valid_spi;
    hall_input    <= data_board;

    -- Instanziazione controller scacchi
    CTRL : entity work.ChessController
        port map (
            clk           => CLK,
            reset         => RST,
            hall_input    => hall_input,
            valid         => valid,
            done          => done,
            done_check    => done_check,
            subs_piece    => subs_piece,
            valid_spi     => data_valid_spi,
            check         => check,
            check_mate    => check_mate,
            confirm_move  => confirm_move,
            start         => start,
            start_check   => start_check,
            board_state   => board_state,
            start_pos     => start_pos,
            end_pos       => end_pos,
            error         => error,
            led           => led,
            winner        => winner
        );

end Behavioral;

