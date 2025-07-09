----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2025 20:33:36
-- Design Name: 
-- Module Name: init_pkg - Behavioral
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
use work.type_pkg.all;
use work.constant_pkg.all;

package init_pkg is
  function init_piece return pieces;
end package;

package body init_pkg is

function init_piece return pieces is
  variable pieces_board : pieces;
begin
  for i in 0 to 63 loop
    if i > 47 then
        pieces_board(i).first_move := '1';
        pieces_board(i).color := black;  -- Nero
        case i is
          when 56 | 63 => pieces_board(i).shape := ROOK;
          when 57 | 62 => pieces_board(i).shape := KNIGHT;
          when 58 | 61 => pieces_board(i).shape := BISHOP;
          when 59      => pieces_board(i).shape := QUEEN;
          when 60      => pieces_board(i).shape := KING;
          when others  => pieces_board(i).shape := PAWN;
        end case;

    elsif i < 16 then
        pieces_board(i).first_move := '1';
        pieces_board(i).color := white;  -- Pedoni bianchi
        
        case i is
          when 0 | 7 => pieces_board(i).shape := ROOK;
          when 1 | 6 => pieces_board(i).shape := KNIGHT;
          when 2 | 5 => pieces_board(i).shape := BISHOP;
          when 3     => pieces_board(i).shape := QUEEN;
          when 4     => pieces_board(i).shape := KING;
          when others => pieces_board(i).shape := PAWN;
        end case;
    
    else
      pieces_board(i).shape := EMPTY;
      pieces_board(i).first_move := '0';
      pieces_board(i).color := '0';  -- O un valore di default
    end if;
  end loop;

  return pieces_board;
end function;

    
end package body init_pkg;