-----------------------------------------------------------------------------------------
--primo dato trasmesso B=0, b=0 --> salvato in pos 7 di shift temp --> va in pos 63
--secondo dato trasmesso B=0, b=1 --> salvato in pos 6 di shift temp --> va in pos 63-8=55
--B=5, b=5 --> salvato in shift temp 2 --> va in pos 63-40-5=18 
--B=7, b=7 --> salvato in shift temp 0 --> va in pos 63-56+7=0  

--cosa cambiare per definire le polarità: 
--SS: dati trasmessi quando è basso
--1. CPOL=0, CPHA=0 : clk parte basso, dati trasmessi al rising edge
--2. CPOL=0, CPHA=1 : clk parte basso, dati trasmessi al falling edge
--3. CPOL=1, CPHA=0 : clk parte alto, dati trasmessi al falling edge
--4. CPOL=1, CPHA=1 : clk parte alto, dati trasmessi al rising edge

--sckl_reg è attuale con ckl,sckl_meta è in ritardodi un ciclo, quando quello adess è 0 e quello precedente era 1 c'è stato un fronte di discesa, al contrario di salita

--1. se SCKL parte basso, sclk_fedge <=  not sclk_reg and sclk_meta; 
--2. se SCKL parte basso, sclk_fedge <=  sclk_reg and not sclk_meta;
--3. se SCKL parte alto, sclk_fedge <=  sclk_reg and not sclk_meta;
--4. se SCKL parte alto, sclk_fedge <=  not sclk_reg and sclk_meta; 

-- per ora impostato su modalità 4.
----------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_slave is
    Port (
        CLK             : in  std_logic;
        RST             : in  std_logic;
        SCLK            : in  std_logic;
        CS_N            : in  std_logic;
        MOSI            : in  std_logic;

        DATA_BOARD      : out std_logic_vector(63 downto 0);
        DATA_CONFIRM    : out std_logic;
        DATA_PIECE      : out std_logic_vector(2 downto 0);
        DATA_VALID      : out std_logic;
        START_GAME: out std_logic;

        WIN             : in  std_logic_vector(1 downto 0);
        WRONG           : in  std_logic;
        MISO            : out std_logic
    );
end spi_slave;

architecture Behavioral of spi_slave is

    -- Sincronizzazione segnali SPI
    signal sclk_meta, cs_n_meta, mosi_meta: std_logic:='1';
    signal sclk_reg, cs_n_reg, mosi_reg     : std_logic;
    signal sclk_fedge              : std_logic;

    -- segnali per MOSI
    signal shift_reg               : std_logic_vector(7 downto 0) := (others => '0');
    signal bit_counter             : unsigned (2 downto 0) := (others => '0');
    signal data_valid_mosi         : std_logic := '0';

    -- segnali per MISO
    signal miso_bit_counter        : unsigned(2 downto 0) := "111";
    signal miso_bit                : std_logic := '0';
    signal miso_shift_reg          : std_logic_vector(7 downto 0) := (others => '0');

    -- FSM
    signal byte_shift              : std_logic_vector(63 downto 0) := (others => '0');
    signal byte_counter            : unsigned (3 downto 0) := (others => '0');
    signal byte_recived                : unsigned (3 downto 0) := (others => '0');
    signal command                 : std_logic_vector(7 downto 0) := (others => '0');
    signal bytes_needed            : unsigned (3 downto 0) := (others => '0');
    signal data_valid_reg          : std_logic := '0';
    signal valid_reg               : std_logic := '0';
    type state_type is (IDLE, TX_DATA);
    signal state : state_type := IDLE;

    -- Output register
    signal data_board_reg          : std_logic_vector(63 downto 0) := (others => '0');
    signal confirm_reg             : std_logic_vector(7 downto 0) := (others => '0');
    signal piece_reg               : std_logic_vector(7 downto 0) := (others => '0');
    signal start_game_reg           : std_logic:='0';


    signal debug: std_logic:='0';

    -- Funzione per determinare quanti byte aspettarsi
    function expected_bytes(cmd : std_logic_vector(7 downto 0)) return unsigned is
    begin
        case cmd is
            when "00000000" => return "1000"; -- 8 byte
            when "10000000" => return "0001"; -- 2 byte
            when "01000000" => return "0001"; -- 2 byte
            when others     => return "0000";
        end case;
    end function;

begin

    -- Output assignments
    DATA_BOARD   <= data_board_reg;
    DATA_CONFIRM <= confirm_reg(7);
    DATA_PIECE   <= piece_reg(7 downto 5);
    DATA_VALID   <= data_valid_reg;
    START_GAME  <=start_game_reg;

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

    -- Rilevamento fronte di discesa (CPOL=1, CPHA=0) -> modalità 4
    sclk_fedge <= NOT sclk_reg and sclk_meta;

    -- Ricezione MOSI
    process(CLK)
    variable bit_temp : unsigned(2 downto 0) := (others => '0');
    begin
        if rising_edge(CLK) then
            if RST = '1' or cs_n_reg = '1' then
                shift_reg               <= (others => '0');
                bit_counter             <= (others => '0');
                data_valid_mosi         <= '0';
            else
                if sclk_fedge = '1' and cs_n_reg = '0' then
                    bit_temp := bit_counter;
                    shift_reg(to_integer(bit_temp)) <= mosi_reg;
                    if bit_counter = 7 then
                        bit_counter     <= (others => '0');
                        data_valid_mosi <= '1';
                    else
                        bit_counter     <= bit_temp + 1;
                        data_valid_mosi <= '0';
                    end if;
                else

                end if;
            end if;
        end if;
    end process;

    -- Trasmissione MISO
    process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                miso_shift_reg   <= WIN & WRONG & "00000";
                miso_bit_counter <= "111";
                miso_bit         <= '0';
            else
                if cs_n_reg = '0' then
                    if sclk_fedge = '1' then
                        miso_bit <= miso_shift_reg(to_integer(miso_bit_counter));
                        if miso_bit_counter = 0 then
                            miso_bit_counter <= "111";
                            miso_shift_reg   <= WIN & WRONG & "00000";
                        else
                            miso_bit_counter <= miso_bit_counter - 1;
                        end if;
                    end if;
                else
                    miso_bit         <= '0';
                    miso_bit_counter <= "111";
                end if;
            end if;
        end if;
    end process;

    MISO <= miso_bit;
    valid_reg<=data_valid_mosi and sclk_fedge;


        -- FSM per gestione comando
    process(CLK)
        variable confirm_temp : std_logic;
        variable piece_temp : std_logic_vector(2 downto 0);
    begin    
        if rising_edge(CLK) then
            if RST = '1' then
                state          <= IDLE;
                byte_counter   <= (others => '0');
                command        <= (others => '0');
                bytes_needed   <= (others => '0');
                data_board_reg <= (others => '0');
                confirm_reg    <= (others => '0');
                piece_reg      <= (others => '0');
                data_valid_reg <= '0';
                start_game_reg <= '0';

            else
                case state is
                    when IDLE =>
                    data_valid_reg <= '0';
                    start_game_reg<='0';
                    if valid_reg='1' then
                        confirm_reg<=(others => '0');
                        piece_reg<=(others => '0');
                        if byte_counter = 0 then
                            byte_recived <= "0000";
                            byte_counter <= "0001";
                            command <= shift_reg;
                            bytes_needed <= expected_bytes(shift_reg);
                            if shift_reg="11111111" then
                                start_game_reg<='1';
                                byte_counter   <= (others => '0');
                                state<=IDLE;
                            end if;
                        else
                            if command = "00000000" then
                                for i in 0 to 7 loop
                                    byte_shift(63 - (to_integer(byte_recived) + 8 * i)) <= shift_reg(7 - i);
                                end loop;
                                if byte_counter = bytes_needed then
                                    byte_counter <= "0000";
                                    state <= TX_DATA;
                                else
                                    byte_recived <= byte_recived + 1;
                                    byte_counter <= byte_counter + 1;
                                end if;
                            else
                                state<=TX_DATA;
                            end if;
                        end if;
                    end if;
                                      

                    when TX_DATA =>
                        if command = "00000000" then
                            data_board_reg <= byte_shift;
                        elsif command = "10000000" then
                            piece_reg <= shift_reg;
                        else                                
                            confirm_reg <= shift_reg;
                        end if;
                        data_valid_reg <= '1';
                        state          <= IDLE;
                        byte_counter   <= (others => '0');
                        byte_recived   <= (others => '0');                        
                end case;
            end if;
        end if;
    end process;
end Behavioral;
