
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_slave is
    Port (
        CLK             : in  std_logic;  -- Clock di sistema
        RST             : in  std_logic;  -- Reset sincrono
        SCLK            : in  std_logic;  -- SPI clock
        CS_N            : in  std_logic;  -- SPI chip select
        MOSI            : in  std_logic;  -- SPI master-out-slave-in

        DATA_BOARD      : out std_logic_vector(63 downto 0);  -- Dati ricevuti
        DATA_CONFIRM    : out std_logic_vector(7 downto 0);   -- Conferma
        DATA_PIECE      : out std_logic_vector(7 downto 0);   -- Pezzo
        DATA_VALID      : out std_logic                       -- Dati validi
    );
end spi_slave;

architecture Behavioral of spi_slave is

    type state_type is (IDLE, READ_CMD, READ_DATA, PROCESS_DATA);
    signal state : state_type := IDLE;

    -- Sincronizzazione segnali SPI sul clock di sistema
    signal sclk_meta, sclk_reg     : std_logic;
    signal cs_n_meta, cs_n_reg     : std_logic;
    signal mosi_meta, mosi_reg     : std_logic;

    signal sclk_fedge              : std_logic;

    -- SPI shift register
    signal shift_reg   : std_logic_vector(7 downto 0) := (others => '0');
    signal byte_shift  : std_logic_vector(63 downto 0) := (others => '0');
    signal byte_buffer : std_logic_vector(63 downto 0) := (others => '0');
    signal bit_counter : integer range 0 to 7 := 0;
    signal byte_counter: integer range 0 to 8 := 0;

    -- Comando ricevuto
    signal command     : std_logic_vector(7 downto 0) := (others => '0');
    signal bytes_needed : integer range 0 to 8 := 0;

    -- Output signals (reg)
    signal data_valid_reg : std_logic := '0';
    signal data_board_reg : std_logic_vector(63 downto 0) := (others => '0');
    signal confirm_reg    : std_logic_vector(7 downto 0) := (others => '0');
    signal piece_reg      : std_logic_vector(7 downto 0) := (others => '0');
    
    function expected_bytes(cmd : std_logic_vector(7 downto 0)) return integer is
    begin
        case cmd is
            when "00000000" => return 8; -- posizione completa
            when "00000001" => return 1; -- conferma
            when "00000010" => return 1; -- pezzo
            when others     => return 0;
        end case;
    end function;
    
    begin
    
    -- Output assignments
    DATA_VALID   <= data_valid_reg;
    DATA_BOARD   <= data_board_reg;
    DATA_CONFIRM <= confirm_reg;
    DATA_PIECE   <= piece_reg;

    -- Sincronizzazione segnali SPI
    process(CLK)
    begin
        if rising_edge(CLK) then
            sclk_meta <= SCLK;
            sclk_reg  <= sclk_meta;
            cs_n_meta <= CS_N;
            cs_n_reg  <= cs_n_meta;
            mosi_meta <= MOSI;
            mosi_reg  <= mosi_meta;
        end if;
    end process;

    -- Falling edge detection
    sclk_fedge <=  not sclk_reg and sclk_meta;

    -- FSM principale + SPI decoding
    process(CLK)
    variable shift_temp : std_logic_vector(7 downto 0);
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                state           <= IDLE;
                shift_reg       <= (others => '0');
                byte_buffer     <= (others => '0');
                byte_shift      <= (others => '0');
                command         <= (others => '1');
                bit_counter     <= 0;
                byte_counter    <= 0;
                data_board_reg  <= (others => '0');
                confirm_reg     <= (others => '0');
                piece_reg       <= (others => '0');
                data_valid_reg  <= '1';
            else
                data_valid_reg <= '1'; -- default
                case state is

                    when IDLE =>
                        if cs_n_reg = '0' then
                            state <= READ_CMD;
                            bit_counter <= 0;
                            byte_counter <= 0;
                        end if;

                    when READ_CMD =>
                        if cs_n_reg = '1' then
                            state <= IDLE;
                        elsif sclk_fedge = '1' then
                            shift_reg(bit_counter) <= mosi_reg;
                            bit_counter <= bit_counter + 1;
                            
                            bytes_needed <= expected_bytes(shift_reg(7 downto 1) & mosi_reg);

                            if bit_counter = 7 then
                                command <= shift_reg(7 downto 1) & mosi_reg; 
                                bit_counter <= 0;
                                byte_counter <= 0;
                                state <= READ_DATA;
                            end if;
                        end if;

                    when READ_DATA =>
                    if cs_n_reg = '1' then
                        state <= IDLE;
                    elsif sclk_fedge = '1' then
                        shift_temp := shift_reg;
                        shift_temp(7 - bit_counter) := mosi_reg;
                
                        if bit_counter = 7 then
                            shift_reg <= shift_temp;
                
                            -- Ora shift_temp contiene il byte completo
                            byte_buffer(63 - byte_counter * 8 downto 56 - byte_counter * 8) <= shift_temp;
                
                            -- Posizionamento dei bit come "matrice colonne"
                            for i in 0 to 7 loop
                                byte_shift(63 - (i * 8 + byte_counter)) <= shift_temp(7 - i);
                            end loop;
                
                            bit_counter <= 0;
                            byte_counter <= byte_counter + 1;
                
                            if byte_counter = bytes_needed - 1 then
                                state <= PROCESS_DATA;
                            end if;
                        else
                            shift_reg <= shift_temp;
                            bit_counter <= bit_counter + 1;
                        end if;
                    end if;
                

                    when PROCESS_DATA =>
                        case command is
                            when "00000000" =>  -- Posizione completa
                                data_board_reg <= byte_shift;
                                data_valid_reg <= '0';

                            when "00000001" =>  -- Conferma
                                confirm_reg <= byte_buffer(7 downto 0);
                                data_valid_reg <= '0';

                            when "00000010" =>  -- Pezzo
                                piece_reg <= byte_buffer(7 downto 0);
                                data_valid_reg <= '0';

                            when others =>
                                null;
                        end case;
                        state <= IDLE;

                end case;
            end if;
        end if;
    end process;

end Behavioral;
