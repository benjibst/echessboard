library IEEE;

package riscv_types_pkg is
  type alu_op is (
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
  type comp_op is (
      comp_eq,
      comp_ne,
      comp_lt,
      comp_ge,
      comp_ltu,
      comp_geu
    );
  type op_class is (op_alu, op_load, op_store, op_branch, op_jump);
end package;
