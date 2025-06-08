library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.riscv_types_pkg.all;

entity DecodeUnit is
  port (
    du_clk           : in  std_logic                    := '0';
    du_funct3        : in  STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    du_funct7        : in  std_logic_vector(6 downto 0) := (others => '0');
    du_opcode        : in  std_logic_vector(6 downto 0) := (others => '0');
    du_a_sel         : out std_logic                    := '0';     --RS1 or PC
    du_b_sel         : out std_logic                    := '0';     --RS2 or IMM
    du_alu_op        : out alu_op_t                     := alu_add; -- Default operation is addition
    du_comp_op       : out comp_op_t                    := comp_eq; -- Default comparison operation
    du_mem_op_sz     : out mem_op_sz_t                  := sz_word; -- Default memory operation size
    du_mem_op_signed : out std_logic                    := '0';     -- Sign extension for load/store
    du_opclass       : out op_class_t                   := op_alu;  -- Default operation class
    du_reg_we        : out STD_LOGIC                    := '0';     -- Register write enable
    du_error         : out std_logic                    := '0'
  );
end entity;

architecture RTL of DecodeUnit is
  signal class         : op_class_t  := op_alu;  -- Default operation class
  signal funct3        : STD_LOGIC_VECTOR(2 downto 0);
  signal a_sel         : std_logic   := '0';
  signal b_sel         : std_logic   := '0';
  signal alu_op        : alu_op_t    := alu_add; -- Default operation is addition
  signal comp_op       : comp_op_t   := comp_eq; -- Default comparison operation
  signal mem_op_sz     : mem_op_sz_t := sz_word; -- Default memory operation size
  signal mem_op_signed : std_logic   := '0';
  signal reg_we        : std_logic   := '0';
begin
  funct3 <= du_funct3;

  process (du_opcode,du_funct3,du_funct7)
  begin
    case (du_opcode) is
      -----------------------------------------------------------------------------
      when "0110011" | "0010011" => -- ALU
        case funct3 is
          when "000" => -- ADD/SUB
            if (du_funct7(5) = '0') then
              alu_op <= alu_add;
            else
              alu_op <= alu_sub;
            end if;
          when "001" => -- SLL
            alu_op <= alu_sll;
          when "010" => -- SLT
            alu_op <= alu_slt;
          when "011" => -- SLTU
            alu_op <= alu_sltu;
          when "100" => -- XOR
            alu_op <= alu_xor;
          when "101" => -- SRL/SRA
            if (du_funct7(5) = '0') then
              alu_op <= alu_srl;
            else
              alu_op <= alu_sra;
            end if;
          when "110" => -- OR
            alu_op <= alu_or;
          when "111" => -- AND
            alu_op <= alu_and;
          when others => du_error <= '1';
        end case;
        class <= op_alu;
        reg_we <= '1';
        a_sel <= '0';
        b_sel <= '0' when du_opcode = "0110011" else '1'; -- RS2 or IMM
      -----------------------------------------------------------------------------
      when "0100011" => -- Store
        case funct3(1 downto 0) is
          when "00" => -- SB
            mem_op_sz <= sz_byte;
          when "01" => -- SH
            mem_op_sz <= sz_half;
          when "10" => -- SW
            mem_op_sz <= sz_word;
          when others => du_error <= '1';
        end case;
        mem_op_signed <= '0'; -- No sign extension for store
        alu_op <= alu_add;
        reg_we <= '0';
        class <= op_store;
        a_sel <= '0';
        b_sel <= '1';
      -----------------------------------------------------------------------------
      when "0000011" => -- Load
        case funct3(1 downto 0) is
          when "00" => -- LB
            mem_op_sz <= sz_byte;
          when "01" => -- LH
            mem_op_sz <= sz_half;
          when "10" => -- LW
            mem_op_sz <= sz_word;
          when others => du_error <= '1';
        end case;
        mem_op_signed <= not funct3(2); -- Sign extension for load
        alu_op <= alu_add;
        class <= op_load;
        reg_we <= '1';
        a_sel <= '0';
        b_sel <= '1';
      -----------------------------------------------------------------------------
      when "1100011" => -- Branch
        case funct3 is
          when "000" => -- BEQ
            comp_op <= comp_eq;
          when "001" => -- BNE
            comp_op <= comp_ne;
          when "100" => -- BLT
            comp_op <= comp_lt;
          when "101" => -- BGE
            comp_op <= comp_ge;
          when "110" => -- BLTU
            comp_op <= comp_ltu;
          when "111" => -- BGEU
            comp_op <= comp_geu;
          when others => du_error <= '1';
        end case;
        class <= op_branch;
        alu_op <= alu_add;
        reg_we <= '0';
        a_sel <= '1';
        b_sel <= '1';
      -----------------------------------------------------------------------------
      when "1101111" | "1100111" => -- JUMP
        case funct3 is
          when "000" => -- JAL
            a_sel <= '1';
            b_sel <= '1';
          when "001" => -- JALR
            a_sel <= '0';
            b_sel <= '1';
          when others => du_error <= '1';
        end case;
        alu_op <= alu_add;
        reg_we <= '1';
        class <= op_jump;
      -----------------------------------------------------------------------------
      when "0010111" => -- AUIPC
        alu_op <= alu_add;
        reg_we <= '1';
        class <= op_alu;
        a_sel <= '1';
        b_sel <= '1';
      -----------------------------------------------------------------------------
      when "0110111" => -- LUI
        alu_op <= alu_lui;
        class <= op_alu;
        reg_we <= '1';
        a_sel <= '0';
        b_sel <= '1';
      when others => du_error <= '1';

    end case;
  end process;

  process (du_clk)
  begin
    if (rising_edge(du_clk)) then
      du_opclass <= class;
      du_a_sel <= a_sel;
      du_b_sel <= b_sel;
      du_alu_op <= alu_op;
      du_comp_op <= comp_op;
      du_mem_op_sz <= mem_op_sz;
      du_mem_op_signed <= mem_op_signed;
      du_reg_we <= reg_we;
    end if;
  end process;
end architecture;
