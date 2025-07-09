

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
--MUX CHE PORTA S_POS E E_POS A 4 VALIDATOR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constant_pkg.all;
  use IEEE.numeric_std.all;


entity six_mux_vector is
    port (
        clk        : in  std_logic;
        sign: in unsigned(5 downto 0);
        sel: in std_logic_vector(2 downto 0);
        s_knight, s_queen, s_bishop, s_king, s_rook, s_pawn: out unsigned(5 downto 0)

    );
end six_mux_vector;

architecture RTL of six_mux_vector is
begin
    process(clk)
begin
    if rising_edge(clk) then
        s_pawn   <= "000000";
        s_rook   <= "000000";
        s_bishop <= "000000";
        s_knight <= "000000";
        s_king   <= "000000";
        s_queen  <= "000000";

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