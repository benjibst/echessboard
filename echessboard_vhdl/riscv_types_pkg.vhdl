library IEEE;
  use ieee.std_logic_1164.all;

package riscv_types_pkg is
  type alu_op_t is (
      alu_add,
      alu_sub,
      alu_xor,
      alu_or,
      alu_and,
      alu_sll,
      alu_srl,
      alu_sra,
      alu_slt,
      alu_sltu,
      alu_lui
    );
  type comp_op_t is (
      comp_eq,
      comp_ne,
      comp_lt,
      comp_ge,
      comp_ltu,
      comp_geu
    );
  type mem_op_sz_t is (
      sz_byte,
      sz_half,
      sz_word
    );
  type op_class_t is (op_alu, op_load, op_store, op_branch, op_jump);
  type ex_stage is (ex_reset, ex_fetch, ex_decode, ex_execute, ex_writeback);
  type instr_type is (
      it_rtype,
      it_itype,
      it_stype,
      it_btype,
      it_utype,
      it_jtype,
      it_err
    );
  subtype word is std_logic_vector(31 downto 0);
end package;

package body riscv_types_pkg is
end package body;
