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
  use IEEE.STD_LOGIC_1164.all;
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
  port (
    clk           : in  std_logic;
    start         : in  std_logic;
    hall_input    : in  std_logic_vector(63 downto 0);
    start_pos     : in  unsigned(5 downto 0);
    end_pos       : in  unsigned(5 downto 0);
    color         : in  std_logic;
    eat_move      : in std_logic;

    subs_required : out std_logic;
    done          : out std_logic;
    valid         : out std_logic
    
  );
end entity;

architecture Behavioral of pawn_validator is
  type state_type is (IDLE, CHECK_MOVE, DONE_STATE);
  signal state              : state_type := IDLE;

begin
  process (clk)
    variable from_col  : unsigned(2 downto 0);
    variable from_row  : unsigned(2 downto 0);
    variable to_col    : unsigned(2 downto 0);
    variable to_row    : unsigned(2 downto 0);
  begin

    if rising_edge(clk) then
      case state is

        when IDLE =>
          valid <= '0';
          done <= '0';
          subs_required <= '0';

          if start = '1' then
            state <= CHECK_MOVE;
          end if;

        when CHECK_MOVE =>
          valid <= '0';
          subs_required <= '0';

        from_row := to_unsigned(to_integer(start_pos) / 8, 3);
        from_col := to_unsigned(to_integer(start_pos) mod 8, 3);
        
        to_row := to_unsigned(to_integer(end_pos) / 8, 3);
        to_col := to_unsigned(to_integer(end_pos) mod 8, 3);

          if color = white then
            if hall_input(to_integer(start_pos)) = '0' then
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
            --capture move
            if (start_pos=end_pos-7 and eat_move='1') or (start_pos=end_pos-9 and eat_move='1') then
                valid <= '1';
            end if;
            if to_row = "111" then
              subs_required <= '1';
            end if;

          else -- black
            if hall_input(to_integer(start_pos)) = '0' then
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
            --capture move
                if (start_pos=end_pos+7 and eat_move='1') or (start_pos=end_pos+9 and eat_move='1') then
                    valid <= '1';
                end if;

            if to_row = "000" then
              subs_required <= '1';
            end if;
          end if;

        --capture move
        



          state <= DONE_STATE;

        when DONE_STATE =>
          done <= '1';
          state <= IDLE;

      end case;
    end if;
  end process;

end architecture;
