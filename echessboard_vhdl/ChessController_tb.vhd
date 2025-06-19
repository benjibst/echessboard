
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.06.2025 16:36:38
-- Design Name: 
-- Module Name: ChessController_tb - Behavioral
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

entity ChessController_tb is
end entity;

architecture sim of ChessController_tb is

  -- Signal declarations
  signal clk           : std_logic := '0';
  signal reset         : std_logic := '0';
  signal hall_input    : std_logic_vector(63 downto 0) := (others => '0');
  signal done          : std_logic := '1';  
  signal done_check    : std_logic := '1';  
  signal subs_piece    : std_logic_vector(2 downto 0) := (others => '0');
  signal valid         : std_logic := '1';  
  signal check         : std_logic := '0';
  signal check_mate    : std_logic := '0';
  signal confirm_move  : std_logic := '0';
  signal start         : std_logic := '0';
  signal start_check   : std_logic := '0';
  signal board_state   : pieces;
  signal start_pos     : unsigned (5 downto 0) := (others => '0');
  signal end_pos       : unsigned (5 downto 0) := (others => '0');
  signal error         : std_logic;
  signal led           : std_logic_vector (1 downto 0);
  signal winner        : std_logic;

begin

  -- DUT (Device Under Test)
  uut: entity work.ChessController
    port map (
      clk           => clk,
      reset         => reset,
      hall_input    => hall_input,
      done          => done,
      done_check    => done_check,
      subs_piece    => subs_piece,
      valid         => valid,
      check         => check,
      check_mate    => check_mate,
      confirm_move  => confirm_move,
      start         => start,
      start_check   => start_check,
      board_state   => board_state,
      start_pos     => start_pos,
      end_pos       => end_pos,
      error         => error,
      led           => led,
      winner        => winner
    );

  -- Clock generation (100 MHz)
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for 50 ns;
      clk <= '1';
      wait for 50 ns;
    end loop;
  end process;

  -- Stimuli process
  stim_proc: process
  begin
    hall_input <= (63 downto 48 => '1', 47 downto 16 => '0', 15 downto 0 => '1');

    -- Reset iniziale
    reset <= '1';
    wait for 50 ns;
    reset <= '0';

    -- Prima mossa: solleva pezzo da 12
    wait for 340 ns;
    hall_input(12) <= '0';
    wait for 340 ns;
    -- Appoggia pezzo a 28
    hall_input(28) <= '1';
    wait for 340 ns;
    -- Conferma mossa
    confirm_move <= '1';
    wait for 100 ns;
    confirm_move<= '0';
    done <= '0';           -- validator busy
    wait for 500 ns;
    done <= '1';           -- validator done
    valid <= '1';          -- risultato positivo
    
    wait for 300 ns;
    -- Seconda mossa: solleva pezzo da 52
    hall_input(52) <= '0';
    wait for 400 ns;
    -- Appoggia pezzo a 44
    hall_input(44) <= '1';
    wait for 400 ns;
    -- Conferma mossa
    confirm_move <= '1';  
    wait for 100 ns;
    confirm_move<='0';  
    done <= '0'; 
    wait for 500 ns;
    done <= '1';
    valid <= '1';  -- risultato non valido (ad esempio mossa illegale
    wait for 300 ns;

    hall_input(5) <= '0';
    wait for 400 ns;
    -- Appoggia pezzo a 44
    hall_input(26) <= '1';
    wait for 400 ns;
    -- Conferma mossa
    confirm_move <= '1';  
    wait for 100 ns;
    confirm_move<='0';  
    done <= '0'; 
    wait for 500 ns;
    done <= '1';
    valid <= '1';  -- risultato non valido (ad esempio mossa illegale
    wait for 300 ns;
    
    hall_input(26) <= '0';
    wait for 400 ns;
    -- Appoggia pezzo a 44
    hall_input(33) <= '1';
    wait for 400 ns;
    -- Conferma mossa
    confirm_move <= '1';  
    wait for 100 ns;
    confirm_move<='0';  
    done <= '0'; 
    wait for 500 ns;
    done <= '1';
    valid <= '1';  -- risultato non valido (ad esempio mossa illegale
    wait for 300 ns;


    -- Fine simulazione senza assert (lascia girare)
    wait;
  end process;

end architecture;


