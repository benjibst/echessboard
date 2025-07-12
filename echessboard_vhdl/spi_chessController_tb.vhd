library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_chessController_tb is
end spi_chessController_tb;

architecture behavior of spi_chessController_tb is

    -- Component DUT
    component TopLevel
        Port (
            CLK     : in  std_logic;
            RST     : in  std_logic;
            SCLK    : in  std_logic;
            CS_N    : in  std_logic;
            MOSI    : in  std_logic;
            MISO    : out std_logic;
            error     : out std_logic;
            winner  : out std_logic_vector(1 downto 0)
        );
    end component;

    -- Signals
    signal CLK     : std_logic := '0';
    signal RST     : std_logic := '1';
    signal SCLK    : std_logic := '1';
    signal CS_N    : std_logic := '1';
    signal MOSI    : std_logic := '0';
    signal MISO    : std_logic;
    signal error     : std_logic := '0';
    signal winner  : std_logic_vector(1 downto 0) := "01";

    -- Clock constants
    constant CLK_PERIOD   : time := 10 ns;
    constant SCLK_PERIOD  : time := 100 ns;


    -- SPI transmit + receive procedure
    procedure send_and_receive_spi_byte(signal CS : out std_logic;
                                        signal MOSI : out std_logic;
                                        signal MISO : in std_logic;
                                        constant TX_DATA : std_logic_vector(7 downto 0);
                                        variable   RX_DATA : out std_logic_vector(7 downto 0)) is
    begin
        for i in 7 downto 0 loop
            -- Dato pronto PRIMA del fronte di salita
            MOSI <= TX_DATA(i);

            -- Fase 1: fronte di discesa: cambio del bit
            wait for SCLK_PERIOD / 2;

            -- Fase 2: fronte di salita: campionamento
            RX_DATA(i) := MISO;
            wait for SCLK_PERIOD / 2;
        end loop;
    end procedure;

begin

    -- Instantiate DUT
    DUT: TopLevel
        port map (
            CLK     => CLK,
            RST     => RST,
            SCLK    => SCLK,
            CS_N    => CS_N,
            MOSI    => MOSI,
            MISO    => MISO,
            error     => error,
            winner  => winner
        );

    -- Clock generation for CLK (system clock)
    clk_process: process
    begin
        while true loop
            CLK <= not CLK;
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- SCLK clock generation (SPI clock)
    sclk_process: process
    begin
        while true loop
            -- Generate SCLK clock
            SCLK <= '1';
            wait for SCLK_PERIOD / 2;
            SCLK <= '0';
            wait for SCLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus
    stim_proc: process
        variable temp_rx : std_logic_vector(7 downto 0);
    begin
    
        -- Reset
        wait for 20 ns;
        RST <= '0';
        wait for 20 ns;

        -- SPI transfer
        CS_N <= '0';  -- Select slave

        -- Send a command byte and receive via MISO
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11111111", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        -- Send another byte
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10010011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);

        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000010", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000001", temp_rx);
---------------------------------------------------------------------------------------------------------        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        -- Send another byte
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000001", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10010011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001001", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10010011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);

        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000010", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000001", temp_rx);
        
 ---------------------------------------------------------------------------------------------------------        
       
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        -- Send another byte
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001001", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000001", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001001", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000010", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000001", temp_rx);
        
 ---------------------------------------------------------------------------------------------------------        
       
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        -- Send another byte
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000010", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000001", temp_rx);
         ---------------------------------------------------------------------------------------------------------        

        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        -- Send another byte
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "01000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10100011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "01000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000010", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000001", temp_rx);
        
         ---------------------------------------------------------------------------------------------------------        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        -- Send another byte
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "01000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10100011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "01000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000000", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11001000", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "10100011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "01000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "11000011", temp_rx);
        
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000010", temp_rx);
        send_and_receive_spi_byte(CS_N, MOSI, MISO, "00000001", temp_rx);

        -- End SPI transfer
        wait for SCLK_PERIOD;
        CS_N <= '1';
        

        wait for 200 ns;

        -- Stop simulation
        wait;
    end process;
end architecture;

