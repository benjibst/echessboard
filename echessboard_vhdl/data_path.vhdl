library IEEE;
use IEEE.STD_LOGIC_1164.all;
use work.riscv_types_pkg.all;
use ieee.numeric_std.all;

entity DataPath is
    port (
        dp_reset      : in  STD_LOGIC;
        dp_clkcpu     : in  STD_LOGIC; -- clock input
        dp_clk25      : in  STD_LOGIC; -- clock for VGA and other peripherals

        dp_spi_addr    : in  unsigned(7 downto 0);
        dp_spi_data    : in  word;
        dp_spi_we      : in  std_logic_vector(3 downto 0); -- SPI write enable

        dp_vga_h_sync : out std_logic; -- VGA horizontal sync output
        dp_vga_v_sync : out std_logic; -- VGA vertical sync output
        dp_vga_red0   : out STD_LOGIC; -- VGA red color output
        dp_vga_red1   : out STD_LOGIC;
        dp_vga_red2   : out STD_LOGIC;
        dp_vga_red3   : out STD_LOGIC;
        dp_vga_green0 : out STD_LOGIC; -- VGA green color output
        dp_vga_green1 : out STD_LOGIC;
        dp_vga_green2 : out STD_LOGIC;
        dp_vga_green3 : out STD_LOGIC;
        dp_vga_blue0  : out STD_LOGIC; -- VGA blue color output
        dp_vga_blue1  : out STD_LOGIC;
        dp_vga_blue2  : out STD_LOGIC;
        dp_vga_blue3  : out STD_LOGIC  -- VGA blue color output
    );
end entity;
-- alessia change

architecture RTL of DataPath is
    signal next_pc        : std_logic_vector(11 downto 0);
    signal curr_pc        : std_logic_vector(11 downto 0);
    signal curr_pc_se     : word;
    signal next_pc_se     : word;
    signal curr_instr     : word;
    signal reg_rs1_val    : word;
    signal reg_rs2_val    : word;
    signal imm_val        : word;
    signal op_class       : op_class_t;                    -- Default operation class
    signal mem_op_signed  : std_logic;
    signal mem_op_sz      : mem_op_sz_t;                   -- Default memory operation size
    signal a_sel, b_sel   : std_logic;
    signal alu_op         : alu_op_t;                      -- Default operation is addition
    signal comp_op        : comp_op_t;                     -- Default comparison operation
    signal alu_result     : word;
    signal alu_result_pre : word;
    signal branch_cond    : std_logic;
    signal pc_out         : word;
    signal rd_val         : word;
    signal vga_img_x  : unsigned(9 downto 0);          -- x coordinate of image as input to image generator
    signal vga_img_y  : unsigned(8 downto 0);          -- y coordinate of image as input to image generator
    signal vga_dispen : std_logic;
    signal fb_data    : word;
    signal fb_addr    : std_logic_vector(14 downto 0); -- framebuffer address
    signal error          : std_logic;
    signal stage          : ex_stage;                      -- Current stage of the pipeline: 
    
    signal vga_red    : STD_LOGIC_VECTOR(3 downto 0);  -- VGA red color output
    signal vga_green  : STD_LOGIC_VECTOR(3 downto 0);  -- VGA green color output
    signal vga_blue   : STD_LOGIC_VECTOR(3 downto 0);
begin
    dp_vga_red0   <= vga_red(0);
    dp_vga_red1   <= vga_red(1);
    dp_vga_red2   <= vga_red(2);
    dp_vga_red3   <= vga_red(3);
    dp_vga_green0 <= vga_green(0);
    dp_vga_green1 <= vga_green(1);
    dp_vga_green2 <= vga_green(2);
    dp_vga_green3 <= vga_green(3);
    dp_vga_blue0  <= vga_blue(0);
    dp_vga_blue1  <= vga_blue(1);
    dp_vga_blue2  <= vga_blue(2);
    dp_vga_blue3  <= vga_blue(3);
    
    process (dp_clkcpu) is
    begin
        if (rising_edge(dp_clkcpu)) then
          if (dp_reset = '0') then
              stage <= ex_reset;
            elsif (stage = ex_reset) then
                stage <= ex_fetch; -- Start with fetch stage after reset
            elsif (stage = ex_fetch) then
                stage <= ex_decode;
            elsif (stage = ex_decode) then
                stage <= ex_execute;
            elsif (stage = ex_execute) then
                stage <= ex_writeback;
            elsif (stage = ex_writeback) then
                stage <= ex_fetch; -- Loop back to fetch stage
            end if;
        end if;
    end process;

    fetch_stage: entity work.FetchStage
        port map (
            if_stage       => stage,
            if_clk         => dp_clkcpu,
            if_pc_in       => pc_out(11 downto 0),
            if_instruction => curr_instr,
            if_pc_curr     => curr_pc,
            if_pc_next     => next_pc
        );
    decode_stage: entity work.DecodeStage
        port map (
            id_ex_stage      => stage,
            id_clk           => dp_clkcpu,
            id_instruction   => curr_instr,
            id_rd_val        => rd_val,
            id_pc_curr       => curr_pc,
            id_pc_next       => next_pc,
            id_pc_curr_se    => curr_pc_se,
            id_pc_next_se    => next_pc_se,
            id_rs1_val       => reg_rs1_val,
            id_rs2_val       => reg_rs2_val,
            id_imm_val       => imm_val,
            id_opclass       => op_class,
            id_mem_op_signed => mem_op_signed,
            id_mem_op_sz     => mem_op_sz,
            id_a_sel         => a_sel,
            id_b_sel         => b_sel,
            id_alu_op        => alu_op,
            id_comp_op       => comp_op,
            id_error         => error
        );
    execute_stage: entity work.ExecuteStage
        port map (
            ex_ex_stage       => stage,
            ex_rs1_val        => reg_rs1_val,
            ex_rs2_val        => reg_rs2_val,
            ex_curr_pc        => curr_pc_se,
            ex_imm_val        => imm_val,
            ex_alu_op         => alu_op,
            ex_comp_op        => comp_op,
            ex_a_sel          => a_sel,
            ex_b_sel          => b_sel,
            ex_alu_result     => alu_result,
            ex_alu_result_pre => alu_result_pre,
            ex_branch_cond    => branch_cond
        );
    writeback_stage: entity work.WritebackStage
        port map (
            wb_clk                => dp_clkcpu,     
            wb_class              => op_class,     
            wb_branch_cond        => branch_cond,  
            wb_mem_op_sz          => mem_op_sz,    
            wb_mem_op_signed      => mem_op_signed,
            wb_next_pc            => next_pc_se,
            wb_alu_result         => alu_result,
            wb_alu_result_pre     => alu_result_pre,
            wb_rs2_val            => reg_rs2_val,
            wb_stage              => stage, 
            wb_vga_framebuf_clkb  => dp_clk25,
            wb_vga_framebuf_addrb => fb_addr,
            wb_spi_mem_data       => dp_spi_data,
            wb_spi_mem_addr       => dp_spi_addr,
            wb_spi_mem_we         => dp_spi_we, -- SPI controller never writes to framebuf
            wb_pc_out             => pc_out,
            wb_rd_val             => rd_val,
            wb_vga_framebuf_doutb => fb_data
        );
    vga_controller: entity work.VGAController
        port map (
            vga_pixel_clk => dp_clk25,
            vga_reset_n   => dp_reset,
            vga_h_sync    => dp_vga_h_sync,
            vga_v_sync    => dp_vga_v_sync,
            vga_disp_en   => vga_dispen,
            vga_img_x     => vga_img_x,
            vga_img_y     => vga_img_y);

    vga_img_gen: entity work.VGAImageGenerator
        port map (
            ig_pxl_clk  => dp_clk25,
            ig_reset    => dp_reset,
            ig_disp_ena => vga_dispen,
            ig_y        => vga_img_y,
            ig_x        => vga_img_x,
            ig_fb_data  => fb_data,
            ig_fb_addr  => fb_addr,
            ig_red      => vga_red,
            ig_green    => vga_green,
            ig_blue     => vga_blue);
        --dp_vga_disp_en <= vga_dispen;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DataPathTB is
end entity;

architecture RTL of DataPathTB is
    signal tb_clk   : std_logic;        -- Testbench clock signal
    signal tb_reset : std_logic := '0'; -- Testbench reset signal, can be controlled in the testbench
begin
    process
        constant clk_period : time := 10 ns; -- Clock period for the testbench
    begin
        --make 20 clock cycles with reset 1
        tb_reset <= '0'; -- Release reset after 20 clock cycles
        for i in 0 to 20 loop
            tb_clk <= '1';
            wait for clk_period / 2;
            tb_clk <= '0';
            wait for clk_period / 2;
        end loop;
        tb_reset <= '1';
        while true loop
            tb_clk <= '1';
            wait for clk_period / 2;
            tb_clk <= '0';
            wait for clk_period / 2;
        end loop;
    end process;

    uut: entity work.DataPath
        port map (
            dp_reset      => tb_reset, -- Reset signal, can be controlled in the testbench
            dp_clk25     => tb_clk,   -- Clock will be generated in the testbench
            dp_clkcpu    => tb_clk,   -- Clock for CPU operations
            dp_spi_addr    => (others => '0'), -- SPI address input
            dp_spi_data    => (others => '0'), -- SPI data input
            dp_spi_we      => (others => '0'), -- SPI write enable, can be controlled in the testbench
            dp_vga_h_sync => open,     -- VGA horizontal sync output
            dp_vga_v_sync => open,     -- VGA vertical sync output
            dp_vga_red0=> open, -- VGA red color output
            dp_vga_red1=> open,
            dp_vga_red2=> open,
            dp_vga_red3=> open,
            dp_vga_green0=> open, -- VGA green color output
            dp_vga_green1=> open,
            dp_vga_green2=> open,
            dp_vga_green3=> open,
            dp_vga_blue0=> open, -- VGA blue color output
            dp_vga_blue1=> open,
            dp_vga_blue2=> open,
            dp_vga_blue3=> open -- VGA blue color output
        );
end architecture;
