
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.06.2025 22:10:14
-- Design Name: 
-- Module Name: memory_write - Behavioral
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
  use IEEE.STD_LOGIC_1164.all;
  use IEEE.NUMERIC_STD.all;
  use work.constant_pkg.all;
  use work.type_pkg.all;
  use work.init_pkg.all;

entity MemoryWriter is
  port (
    clk         : in  std_logic;
    reset       : in  std_logic;

    -- Segnali dalla FSM
    board_state : in  pieces;               -- Tipo definito nel tuo progetto (array 0..63)
    from_pos    : in  unsigned(5 downto 0);
    to_pos      : in  unsigned(5 downto 0);
    ready       : in  std_logic;            -- Segnale che avvia la scrittura dopo una mossa

    -- Interfaccia con la memoria
    wr_data     : out std_logic_vector(31 downto 0);
    wr_addr     : out unsigned(7 downto 0); -- 64 caselle / 4 = 16 blocchi = 4 bit
    wr_en       : out std_logic_vector(3 downto 0)
  );
end entity;

architecture Behavioral of MemoryWriter is
  signal index : unsigned(7 downto 0);

  -- Funzione per impacchettare 4 celle da board_copy in 32 bit
  function make_block(start : unsigned(7 downto 0); board : pieces) return std_logic_vector is
    variable res : std_logic_vector(31 downto 0);
  begin
    res(31) := board(to_integer(start) + 3).color;
    res(30 downto 27) := (others => '0');
    res(26 downto 24) := board(to_integer(start) + 3).shape;

    res(23) := board(to_integer(start) + 2).color;
    res(22 downto 19) := (others => '0');
    res(18 downto 16) := board(to_integer(start) + 2).shape;

    res(15) := board(to_integer(start) + 1).color;
    res(14 downto 11) := (others => '0');
    res(10 downto 8) := board(to_integer(start) + 1).shape;

    res(7) := board(to_integer(start)).color;
    res(6 downto 3) := (others => '0');
    res(2 downto 0) := board(to_integer(start)).shape;

    return res;
  end function;

begin
  process (clk, reset)
  begin
    if reset = '1' then
      index <= x"00";
      wr_en <= x"0";
      wr_addr <= (others => '0');
      wr_data <= (others => '0');
    elsif rising_edge(clk) then
      wr_addr <= (index + x"01");
      wr_data <= make_block("00111100" - index * 4, board_state);
      wr_en <= x"F";
      if index = 15 then
        index <= x"00";
      else
        index <= index + x"01";
      end if;
    end if;
  end process;

end architecture;
