----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2025 20:15:17
-- Design Name: 
-- Module Name: pawn_validator - Behavioral
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
use IEEE.numeric_std.all;
use work.type_pkg.all;
use work.constant_pkg.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pawn_validator is
Port ( 
signal done: out std_logic;
signal valid: out std_logic;
signal start: in std_logic;
signal hall_input: in std_logic_vector(63 downto 0);
signal start_pos: in unsigned(5 downto 0);
signal end_pos: in unsigned(5 downto 0);
signal clk: in std_logic;
signal reset: in std_logic;
signal color: in std_logic;
signal subs_required: out std_logic
);
end pawn_validator;

architecture Behavioral of pawn_validator is
type state_type is (IDLE, CHECK_MOVE, DONE_STATE);
signal state : state_type := IDLE;
signal from_row, from_col : unsigned(2 downto 0);  -- 0 to 7
signal to_row, to_col     : unsigned(2 downto 0);
begin
    process(clk, reset)
    begin
    if reset = '1' then
    valid          <= '0';
    done           <= '0';
    
    elsif rising_edge(clk) then
    case state is
    
    when IDLE =>
        valid         <= '0';
        done          <= '0';
        subs_required <= '0';

        if start = '1' then
            from_row <= start_pos(5 downto 3);
            from_col <= start_pos(2 downto 0);
            to_row   <= end_pos(5 downto 3);
            to_col   <= end_pos(2 downto 0);
            state    <= CHECK_MOVE;
        end if;  
        
        when CHECK_MOVE =>
          valid <= '0';
          subs_required <= '0';

          if color = white then  
            if hall_input(to_integer(start_pos))='0' then
                if to_col = from_col and to_row = from_row + 1 then
                    valid <= '1';
                elsif from_row = "001" and to_col = from_col and to_row = from_row + 2 then
                    valid <= '1';
                end if;
            else
                if to_row = from_row + 1 and (to_col = from_col + 1 or to_col = from_col - 1) then
                    valid <= '1';
                  end if;
                end if;
                if to_row = "111" then
                  subs_required <= '1';
            end if;
    
          else  -- black
            if hall_input(to_integer(start_pos))='0' then                  
                if to_col = from_col and to_row = from_row - 1 then
                    valid <= '1';
                  elsif from_row = "110" and to_col = from_col and to_row = from_row - 2 then
                    valid <= '1';
                  end if;
                else
                  if to_row = from_row - 1 and
                     (to_col = from_col + 1 or to_col = from_col - 1) then
                    valid <= '1';
                  end if;
                end if;
    
                if to_row = "000" then
                  subs_required <= '1';
                end if;
              end if;
    
              state <= DONE_STATE;

        when DONE_STATE =>
          done  <= '1';
          state <= IDLE;

      end case;
    end if;
  end process;
          
end Behavioral;
