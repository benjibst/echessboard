
--comes from chess controller when it activates check controller, it detaches and attaches check controller

library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.constant_pkg.all;
  use IEEE.numeric_std.all;


entity two_mux is
  port (
    clk    : in  std_logic;
    sel_controller : in  std_logic;  --out signal to select (start, s_pos, e_pos) from chess controller
    sel_validator  : out  std_logic_vector(2 downto 0); --selection signal for validators 
    CC, CV : in std_logic_vector(2 downto 0); --from where selection signal comes
    
    start, start_CV : in std_logic;
    valid, valid_CV : out std_logic;
    done, done_CV : out std_logic;
    s_pos, s_pos_CV, e_pos, e_pos_CV : in unsigned (5 downto 0);
    hall, hall_CV : in std_logic_vector (63 downto 0);
    
    start_val :out std_logic;
    valid_val : in std_logic;
    done_val : in std_logic;
    s_pos_val, e_pos_val : out unsigned (5 downto 0);
    hall_val : out std_logic_vector (63 downto 0)

  );
end entity;

architecture RTL of two_mux is
begin
  process (clk)
  begin
    if rising_edge(clk) then
      sel_validator <= CC;

      case sel_controller is
        when '0' => 
        
        sel_validator <= CC;
        start_val<=start;
        valid<=valid_val;
        done<=done_val;
        s_pos_val<=s_pos;
        e_pos_val<= e_pos;
        hall_val<=hall;

        
        when '1' => 
        
        sel_validator <= CV;
        start_val<=start_CV;
        valid_CV<=valid_val;
        done_CV<=done_val;
        s_pos_val<=s_pos_CV;
        e_pos_val<= e_pos_CV;
        hall_val<=hall_CV;
        
        when others => null;
      end case;
    end if;
  end process;
end architecture;


