

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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.constant_pkg.all;
use work.type_pkg.all;
use work.init_pkg.all;

entity MemoryWriter is
  port (
    clk        : in  std_logic;
    reset      : in  std_logic;

    -- Segnali dalla FSM
    board_state: in  pieces;  -- Tipo definito nel tuo progetto (array 0..63)
    from_pos   : in  unsigned(5 downto 0);
    to_pos     : in  unsigned(5 downto 0);
    ready: in  std_logic; -- Segnale che avvia la scrittura dopo una mossa

    -- Interfaccia con la memoria
    wr_data    : out std_logic_vector(31 downto 0);
    wr_addr    : out unsigned(3 downto 0); -- 64 caselle / 4 = 16 blocchi = 4 bit
    wr_en      : out std_logic
  );
end entity;


architecture Behavioral of MemoryWriter is
  type state_type is (INIT, IDLE, WRITE_BLOCK_1, WRITE_BLOCK_2, WAIT_READY);
  signal state : state_type := INIT;
  signal index : integer range 0 to 15 := 0;

  -- Funzione per impacchettare 4 celle da board_copy in 32 bit
  function make_block(start: integer; board: pieces) return std_logic_vector is
    variable res: std_logic_vector(31 downto 0);
  begin
    res(31) := board(start).color;
    res(30 downto 27) := (others => '0');
    res(26 downto 24) := board(start).shape;

    res(23) := board(start-1).color;
    res(22 downto 19) := (others => '0');
    res(18 downto 16) := board(start-1).shape;

    res(15) := board(start-2).color;
    res(14 downto 11) := (others => '0');
    res(10 downto 8) := board(start-2).shape;

    res(7) := board(start-3).color;
    res(6 downto 3) := (others => '0');
    res(2 downto 0) := board(start-3).shape;

    return res;
  end function;

  begin 
  
  process(clk, reset)
  begin
    if reset = '1' then
      state <= INIT;
      index <= 0;
      wr_en <= '0';
      wr_addr<=(others =>'0');
      wr_data<=(others =>'0');
      
      

    elsif rising_edge(clk) then
      wr_en <= '0';  -- default

      case state is
        when INIT =>
            wr_addr <= to_unsigned(index+1, 4);
            wr_data <= make_block(index*4 + 3, board_state);
            wr_en <= '1';
            if index = 15 then
              state <= IDLE;
            else
              index <= index + 1;
            end if;

        when IDLE =>
            if ready='1' then
            index <= to_integer(from_pos) / 4;
            state <= WRITE_BLOCK_1;
            end if;

        when WRITE_BLOCK_1 =>
            wr_data <= make_block(index*4 + 3, board_state);
            wr_addr <= to_unsigned(index+1, 4);
            index <= to_integer(to_pos) / 4;
            state <= WRITE_BLOCK_2;

        when WRITE_BLOCK_2 =>
            wr_data <= make_block(index*4 + 3, board_state);
            wr_addr <= to_unsigned(index+1, 4);
            wr_en <= '1';
            state <= IDLE;

        when others =>
          state <= IDLE;
      end case;
    end if;
  end process;

end architecture;