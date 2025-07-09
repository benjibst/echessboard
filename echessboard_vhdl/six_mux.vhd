----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.07.2025 18:30:20
-- Design Name: 
-- Module Name: validator_selector - RTL
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
--MUX CHE PORTA IL SEGNALE START A 6 VALIDATOR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constant_pkg.all;



entity six_mux is
    port (
        clk        : in  std_logic;
        sign: in std_logic;
        sel: in std_logic_vector(2 downto 0);
        s_knight, s_queen, s_bishop, s_king, s_rook, s_pawn: out std_logic

    );
end six_mux;

architecture RTL of six_mux is
begin
    process(clk)
begin
    if rising_edge(clk) then
        s_pawn   <= '0';
        s_rook   <= '0';
        s_bishop <= '0';
        s_knight <= '0';
        s_king   <= '0';
        s_queen  <= '0';

        case sel is
            when PAWN   => s_pawn   <= sign;
            when ROOK   => s_rook   <= sign;
            when BISHOP => s_bishop <= sign;
            when KNIGHT => s_knight <= sign;
            when KING   => s_king   <= sign;
            when QUEEN  => s_queen  <= sign;
            when others => null;
        end case;
    end if;
end process;
end RTL;
