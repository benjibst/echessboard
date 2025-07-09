--DEMUX CHE PORTA DA 6 VALIDATOR IL SEGNALE AL CONTROLLER (DONE E VALID)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constant_pkg.all;



entity six_demux is
    port (
        clk        : in  std_logic;
        sign: out std_logic;
        sel: in std_logic_vector(2 downto 0);
        s_knight, s_queen, s_bishop, s_king, s_rook, s_pawn: in std_logic

    );
end six_demux;

architecture RTL of six_demux is
begin
    process(clk)
begin
    if rising_edge(clk) then
        sign  <=  '0';

        case sel is
            when PAWN   =>  sign  <=  s_pawn;
            when ROOK   =>  sign  <=  s_rook;
            when BISHOP => sign <= s_bishop;
            when KNIGHT => sign <=  s_knight;
            when KING   =>  sign  <=  s_king;
            when QUEEN  =>  sign <= s_queen;
            when others => null;
        end case;
    end if;
end process;
end RTL;
