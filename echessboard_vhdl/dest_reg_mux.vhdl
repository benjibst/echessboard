library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.riscv_types_pkg.all;

entity DestRegMux is
  port (
    drm_class      : in  op_class;
    drm_next_pc    : in  STD_LOGIC_VECTOR(31 downto 0);
    drm_alu_result : in  STD_LOGIC_VECTOR(31 downto 0);
    drm_mem_data   : in  STD_LOGIC_VECTOR(31 downto 0);
    drm_rd_val     : out STD_LOGIC_VECTOR(31 downto 0)
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
    end case;
  end process;
end architecture;
