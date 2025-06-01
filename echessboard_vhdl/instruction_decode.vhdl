library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.riscv_types_pkg.all;

entity DecodeUnit is
  port (
    du_clk           : in  STD_LOGIC;
    du_funct3        : in  STD_LOGIC_VECTOR(2 downto 0);
    du_funct7        : in  STD_LOGIC_VECTOR(6 downto 0);
    du_opcode        : in  STD_LOGIC_VECTOR(6 downto 0);
    du_a_sel         : out STD_LOGIC; --RS1 or PC
    du_b_sel         : out STD_LOGIC; --RS2 or IMM
    du_alu_op        : out alu_op_t;
    du_comp_op       : out comp_op;
    du_mem_op_sz     : out mem_op_sz_t;
    du_mem_op_signed : out STD_LOGIC; -- Sign extension for load/store
    du_opclass       : out op_class_t
  );
end entity;

architecture RTL of DecodeUnit is
  signal class   : op_class_t;
  signal funct3  : STD_LOGIC_VECTOR(2 downto 0);
  signal a_sel   : STD_LOGIC;
  signal b_sel   : STD_LOGIC;
  signal alu_op  : alu_op_t;
  signal comp_op : comp_op;
begin
  funct3 <= du_funct3;

  process (du_opcode)
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
        end case;
        class <= op_alu;
        a_sel <= '0';
        b_sel <= '0' when du_opcode = "0110011" else '1'; -- RS2 or IMM
      -----------------------------------------------------------------------------
      when "0100011" => -- Store
        case funct3(1 downto 0) is
          when "00" => -- SB
            du_mem_op_sz <= sz_byte;
          when "01" => -- SH
            du_mem_op_sz <= sz_half;
          when "10" => -- SW
            du_mem_op_sz <= sz_word;
        end case;
        du_mem_op_signed <= '0'; -- No sign extension for store
        alu_op <= alu_add;
        class <= op_store;
        a_sel <= '0';
        b_sel <= '1';
      -----------------------------------------------------------------------------
      when "0000011" => -- Load
        case funct3(1 downto 0) is
          when "00" => -- LB
            du_mem_op_sz <= sz_byte;
          when "01" => -- LH
            du_mem_op_sz <= sz_half;
          when "10" => -- LW
            du_mem_op_sz <= sz_word;
        end case;
        du_mem_op_signed <= not funct3(2); -- Sign extension for load
        alu_op <= alu_add;
        class <= op_load;
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
        end case;
        class <= op_branch;
        alu_op <= alu_add;
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
        end case;
        alu_op <= alu_add;
        class <= op_jump;
      -----------------------------------------------------------------------------
      when "0010111" => -- AUIPC
        alu_op <= alu_add;
        class <= op_alu;
        a_sel <= '1';
        b_sel <= '1';
      -----------------------------------------------------------------------------
      when "0110111" => -- LUI
        alu_op <= alu_lui;
        class <= op_alu;
        a_sel <= '0';
        b_sel <= '1';
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
    end if;
  end process;
end architecture;
