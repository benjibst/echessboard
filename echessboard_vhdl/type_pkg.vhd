----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.05.2025 20:30:10
-- Design Name: 
-- Module Name: type_pkg - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;   -- per std_logic e std_logic_vector
use IEEE.NUMERIC_STD.ALL;      -- per conversioni e operazioni su std_logic_vector come to_unsigned, unsigned, etc.


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


package type_pkg is
  
  type piece_cell is record
    shape : std_logic_vector(2 downto 0);
    color : std_logic;        -- 1=nero, 0=bianco
    first_move : std_logic;     -- 1=first move, 0=not first move
  end record;
  
  type pieces is array (0 to 63) of piece_cell; -- se è vuota, color e first_move sono a caso
 

end package type_pkg;

