----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2025 22:14:24
-- Design Name: 
-- Module Name: SPI_tb - Behavioral
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

entity tb_spi_slave_cmd is
end tb_spi_slave_cmd;

architecture sim of tb_spi_slave_cmd is

    -- Component under test
    component spi_slave_cmd
        Port (
            CLK             : in  std_logic;
            RST             : in  std_logic;
            SCLK            : in  std_logic;
            CS_N            : in  std_logic;
            MOSI            : in  std_logic;
            DATA_BOARD      : out std_logic_vector(63 downto 0);
            DATA_CONFIRM    : out std_logic_vector(7 downto 0);
            DATA_PIECE      : out std_logic_vector(7 downto 0);
            DATA_VALID      : out std_logic
        );
    end component;

    -- Signals
    signal CLK         : std_logic := '0';
    signal RST         : std_logic := '1';
    signal SCLK        : std_logic := '0';
    signal CS_N        : std_logic := '1';
    signal MOSI        : std_logic := '0';

    signal DATA_BOARD  : std_logic_vector(63 downto 0);
    signal DATA_CONFIRM: std_logic_vector(7 downto 0);
    signal DATA_PIECE  : std_logic_vector(7 downto 0);
    signal DATA_VALID  : std_logic;

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

    -- Instantiate DUT
    UUT: spi_slave_cmd
        port map (
            CLK          => CLK,
            RST          => RST,
            SCLK         => SCLK,
            CS_N         => CS_N,
            MOSI         => MOSI,
            DATA_BOARD   => DATA_BOARD,
            DATA_CONFIRM => DATA_CONFIRM,
            DATA_PIECE   => DATA_PIECE,
            DATA_VALID   => DATA_VALID
        );

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
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");
        send_spi_byte(CS_N, SCLK, MOSI, "11000011");

        -- End transfer
        wait for SCLK_PERIOD;
        CS_N <= '1';

        -- Wait and observe result
        wait for 500 ns;

        -- Stop simulation
        wait;
    end process;

end sim;
