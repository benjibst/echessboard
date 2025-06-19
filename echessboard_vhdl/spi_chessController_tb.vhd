----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2025 19:05:18
-- Design Name: 
-- Module Name: spi_chessController_tb - Behavioral
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

entity spi_chessController_tb is
end spi_chessController_tb;

architecture behavior of spi_chessController_tb is

    -- Componenti DUT
    component TopLevel
        Port (
            CLK     : in  std_logic;
            RST     : in  std_logic;
            SCLK    : in  std_logic;
            CS_N    : in  std_logic;
            MOSI    : in  std_logic;
            led     : out std_logic_vector(1 downto 0);
            winner  : out std_logic
        );
    end component;

    -- Segnali di test
    signal CLK     : std_logic := '0';
    signal RST     : std_logic := '1';
    signal SCLK    : std_logic := '0';
    signal CS_N    : std_logic := '1';
    signal MOSI    : std_logic := '0';
    signal led     : std_logic_vector(1 downto 0);
    signal winner  : std_logic;

    -- Clock
    -- Clock constants
    constant CLK_PERIOD   : time := 10 ns;
    constant SCLK_PERIOD  : time := 100 ns;

    -- Stimulus
    procedure send_spi_byte(signal CS : out std_logic;
                            signal SCLK : out std_logic;
                            signal MOSI : out std_logic;
                            data : std_logic_vector(7 downto 0)) is
    begin
        for i in 7 downto 0 loop
            MOSI <= data(i);
            wait for SCLK_PERIOD / 2;
            SCLK <= '1';
            wait for SCLK_PERIOD / 2;
            SCLK <= '0';
        end loop;
    end procedure;

begin

    -- Istanza del DUT
    DUT: TopLevel
        port map (
            CLK     => CLK,
            RST     => RST,
            SCLK    => SCLK,
            CS_N    => CS_N,
            MOSI    => MOSI,
            led     => led,
            winner  => winner
        );

    -- Clock di sistema
     -- Clock generation
    clk_process: process
    begin
        while true loop
            CLK <= not CLK;
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset
        wait for 20 ns;
        RST <= '0';
        wait for 20 ns;

        -- SPI transfer
        CS_N <= '0';  -- Select slave

        -- Send command: 0x00 (indica che seguono 8 byte posizione)
        send_spi_byte(CS_N, SCLK, MOSI, "00000000");

        -- Send 8 data bytes (es: 0x01 to 0x08)
        send_spi_byte(CS_N, SCLK, MOSI, "11000101");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000101");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");

        -- End transfer
        wait for SCLK_PERIOD;
        CS_N <= '1';

        -- Wait and observe result
        wait for 500 ns;

        -- Stop simulation
        wait;
    end process;

end behavior;

