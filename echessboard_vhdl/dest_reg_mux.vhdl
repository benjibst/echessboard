library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity DestRegMux is
  port (
    drm_class      : in  op_class_t;
    drm_next_pc    : in  word:=(others=>'0');
    drm_alu_result : in  word:=(others=>'0');
    drm_mem_data   : in  word:=(others=>'0');
    drm_rd_val     : out word
  );
end entity;

architecture RTL of DestRegMux is
begin
  process (drm_class, drm_next_pc, drm_alu_result, drm_mem_data)
  begin
    case drm_class is
      when op_jump =>
        drm_rd_val <= drm_next_pc;
      when op_alu =>
        drm_rd_val <= drm_alu_result;
      when op_load =>
        drm_rd_val <= drm_mem_data;
      when others => drm_rd_val <= x"00000000";
    end case;
  end process;
end architecture;
