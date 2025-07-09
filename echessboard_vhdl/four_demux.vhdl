

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constant_pkg.all;



entity s_demux is
    port (
        clk        : in  std_logic;
        sign: in std_logic;
        sel: in std_logic_vector(2 downto 0);
        s_queen, s_bishop, s_rook, s_pawn: out std_logic

    );
end s_demux;

architecture RTL of s_demux is
begin
    process(clk)
begin
    if rising_edge(clk) then
        s_pawn   <= '0';
        s_rook   <= '0';
        s_bishop <= '0';
        s_queen  <= '0';

        case sel is
            when PAWN   => s_pawn   <= sign;
            when ROOK   => s_rook   <= sign;
            when BISHOP => s_bishop <= sign;
            when QUEEN  => s_queen  <= sign;
            when others => null;
        end case;
    end if;
end process;
end RTL;