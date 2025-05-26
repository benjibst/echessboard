library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.riscv_types_pkg.all;

entity WriteBackStage is
    port (
        wb_clk            : in  STD_LOGIC;
        wb_class          : in  op_class;
        wb_branch_cond    : in  STD_LOGIC;
        wb_next_pc        : in  STD_LOGIC_VECTOR(31 downto 0);
        wb_alu_result     : in  STD_LOGIC_VECTOR(31 downto 0);
        wb_alu_result_pre : in  STD_LOGIC_VECTOR(31 downto 0);
        wb_rs2_val        : in  STD_LOGIC_VECTOR(31 downto 0);
        wb_mem_we         : in  STD_LOGIC;
        wb_pc_out         : out STD_LOGIC_VECTOR(31 downto 0);
        wb_rd_val         : out STD_LOGIC_VECTOR(31 downto 0)
    );
end entity;

architecture RTL of WriteBackStage is
    signal cpu_mem_data_out : STD_LOGIC_VECTOR(31 downto 0);
    signal write_data_mem : STD_LOGIC;
    signal write_framebuf_mem: std_LOGIC;
begin
    -- MSB of alu is used to distinguish between VGA framebuffer and normal data memory.   
    --In assembly this is like having base adress 0x80000000 for VGA framebuffer
    write_data_mem <= wb_mem_we and STD_LOGIC((wb_class = op_store)) and (not wb_alu_result_pre(31));
    write_framebuf_mem <= STD_LOGIC((wb_class = op_store)) and  wb_alu_result_pre(31);
    -- port A of the framebuffer memory is written to by CPU and port B is read from by the VGA controller
    vga_framebuf_mem: entity work.blk_mem_gen_1 port map(
            clka => wb_clk,
            wea => std_logic_vector(write_framebuf_mem),
            addra => wb_alu_result_pre(16 downto 2),
            dina => wb_rs2_val,
            douta => open, --never read from framebuffer
            
        );

    dest_reg_mux: entity work.DestRegMux(RTL) port map (
            drm_class      => wb_class,
            drm_next_pc    => wb_next_pc,
            drm_alu_result => wb_alu_result_pre,
            drm_mem_data   => cpu_mem_data_out,
            drm_rd_val     => wb_rd_val
        );
    pc_mux: entity work.PCOutMux(RTL) port map (
            pom_class       => wb_class,
            pom_branch_cond => wb_branch_cond,
            pom_next_pc     => wb_next_pc,
            pom_alu_result  => wb_alu_result,
            pom_pc_out      => wb_pc_out
        );
end architecture;
