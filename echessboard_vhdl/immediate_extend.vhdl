library IEEE;
  use IEEE.STD_LOGIC_1164.all;
  use work.riscv_types_pkg.all;

entity ImmediateExtension is --Extracts the immediate value from the instruction and sign extends it if necessary
  port (
    ie_instr   : in  word;
    ie_imm_out : out word
  );
end entity;

architecture RTL of ImmediateExtension is
begin
  process (ie_instr)
    variable opcode : std_logic_vector(6 downto 0);
    variable i_type : instr_type;
  begin
    opcode := ie_instr(6 downto 0);
    i_type := it_rtype when opcode = "0110011" else
              it_itype when opcode = "0010011" or opcode = "0000011" or opcode = "1100111" else
              it_stype when opcode = "0100011" else
              it_btype when opcode = "1100011" else
              it_utype when opcode = "0110111" or opcode = "0010111" else
              it_jtype when opcode = "1101111" else
              it_err;
    case (i_type) is
      ----------------------------------------------------------------
      when it_rtype => -- R format instructions (ALU with 2 register operands)
        ie_imm_out <= (others => '0');
      ----------------------------------------------------------------
      when it_itype => -- I format instructions (ALU with register and immediate | LOAD instructions | JALR instruction)
        ie_imm_out <= x"00000" & ie_instr(31 downto 20) when ie_instr(31) = '0'
      else
      x"FFFFF" & ie_instr(31 downto 20);
      ----------------------------------------------------------------
      when it_stype => -- S format instructions (STORE)
        ie_imm_out <= x"00000" & ie_instr(31 downto 25) & ie_instr(11 downto 7) when ie_instr(31) = '0'
      else
      x"FFFFF" & ie_instr(31 downto 25) & ie_instr(11 downto 7);
      ----------------------------------------------------------------
      when it_btype => -- B format instructions (BRANCH)
        ie_imm_out <= x"00000" & (ie_instr(31) & ie_instr(7) & ie_instr(30 downto 25) & ie_instr(11 downto 8)) when ie_instr(31) = '0'
      else
      x"FFFFF" & (ie_instr(31) & ie_instr(7) & ie_instr(30 downto 25) & ie_instr(11 downto 8));
      ----------------------------------------------------------------
      when it_jtype => -- J format instructions (only JAL)
        ie_imm_out <= x"000" & (ie_instr(31) & ie_instr(19 downto 12) & ie_instr(20) & ie_instr(30 downto 21)) when ie_instr(31) = '0'
      else
      x"FFF" & (ie_instr(31) & ie_instr(19 downto 12) & ie_instr(20) & ie_instr(30 downto 21));
      ----------------------------------------------------------------
      when it_utype => -- U format instructions (LUI and AUIPC)
        ie_imm_out <= ie_instr(31 downto 12) & x"000";
      when it_err => ie_imm_out <= x"00000000";
    end case;
  end process;
end architecture;
