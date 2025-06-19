----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2025 21:57:02
-- Design Name: 
-- Module Name: constant_pkg - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Definizione tipo pezzi (puoi usare un enumerato o costanti binarie)
package constant_pkg is

    constant EMPTY      : std_logic_vector(2 downto 0) := "000";
    constant PAWN       : std_logic_vector(2 downto 0) := "001";
    constant ROOK       : std_logic_vector(2 downto 0) := "010";
    constant BISHOP     : std_logic_vector(2 downto 0) := "011";
    constant KNIGHT     : std_logic_vector(2 downto 0) := "100";
    constant QUEEN      : std_logic_vector(2 downto 0) := "101";
    constant KING       : std_logic_vector(2 downto 0) := "110";
    constant CHECK      : std_logic_vector(2 downto 0) := "111";
    constant white      : std_logic:='1';
    constant black      : std_logic :='0';
    constant ZERO_64    : std_logic_vector(63 downto 0) := (others => '0');

end constant_pkg;

