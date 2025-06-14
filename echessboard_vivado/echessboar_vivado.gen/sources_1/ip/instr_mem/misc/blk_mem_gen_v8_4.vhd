-- (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity blk_mem_gen_v8_4_11 is
  generic (
    C_FAMILY                     : string := "virtex7";
    C_XDEVICEFAMILY              : string := "virtex7";
    C_ELABORATION_DIR            : string := "";
    C_INTERFACE_TYPE             : integer := 0;
    C_AXI_TYPE                   : integer := 1;
    C_AXI_SLAVE_TYPE             : integer := 0;
    C_USE_BRAM_BLOCK             : integer := 0;
    C_ENABLE_32BIT_ADDRESS       : integer := 0;
    C_CTRL_ECC_ALGO              : string := "ECCHSIAO32-7";
    C_HAS_AXI_ID                 : integer := 0;
    C_AXI_ID_WIDTH               : integer := 4;
    C_MEM_TYPE                   : integer := 2;
    C_BYTE_SIZE                  : integer := 9;
    C_ALGORITHM                  : integer := 0;
    C_PRIM_TYPE                  : integer := 3;
    C_LOAD_INIT_FILE             : integer := 0;
    C_INIT_FILE_NAME             : string := "no_coe_file_loaded";
    C_INIT_FILE                  : string := "no_mem_file_loaded";
    C_USE_DEFAULT_DATA           : integer := 0;
    C_DEFAULT_DATA               : string := "0";
    C_HAS_RSTA                   : integer := 0;
    C_RST_PRIORITY_A             : string := "ce";
    C_RSTRAM_A                   : integer := 0;
    C_INITA_VAL                  : string := "0";
    C_HAS_ENA                    : integer := 1;
    C_HAS_REGCEA                 : integer := 0;
    C_USE_BYTE_WEA               : integer := 0;
    C_WEA_WIDTH                  : integer := 1;
    C_WRITE_MODE_A               : string := "WRITE_FIRST";
    C_WRITE_WIDTH_A              : integer := 9;
    C_READ_WIDTH_A               : integer := 9;
    C_WRITE_DEPTH_A              : integer := 2048;
    C_READ_DEPTH_A               : integer := 2048;
    C_ADDRA_WIDTH                : integer := 11;
    C_HAS_RSTB                   : integer := 0;
    C_RST_PRIORITY_B             : string := "ce";
    C_RSTRAM_B                   : integer := 0;
    C_INITB_VAL                  : string := "0";
    C_HAS_ENB                    : integer := 1;
    C_HAS_REGCEB                 : integer := 0;
    C_USE_BYTE_WEB               : integer := 0;
    C_WEB_WIDTH                  : integer := 1;
    C_WRITE_MODE_B               : string := "WRITE_FIRST";
    C_WRITE_WIDTH_B              : integer := 9;
    C_READ_WIDTH_B               : integer := 9;
    C_WRITE_DEPTH_B              : integer := 2048;
    C_READ_DEPTH_B               : integer := 2048;
    C_ADDRB_WIDTH                : integer := 11;
    C_HAS_MEM_OUTPUT_REGS_A      : integer := 0;
    C_HAS_MEM_OUTPUT_REGS_B      : integer := 0;
    C_HAS_MUX_OUTPUT_REGS_A      : integer := 0;
    C_HAS_MUX_OUTPUT_REGS_B      : integer := 0;
    C_MUX_PIPELINE_STAGES        : integer := 0;
    C_HAS_SOFTECC_INPUT_REGS_A   : integer := 0;
    C_HAS_SOFTECC_OUTPUT_REGS_B  : integer := 0;
    C_USE_SOFTECC                : integer := 0;
    C_USE_ECC                    : integer := 0;
    C_EN_ECC_PIPE                : integer := 0;
    C_HAS_INJECTERR              : integer := 0;
    C_SIM_COLLISION_CHECK        : string := "none";
    C_COMMON_CLK                 : integer := 0;
    C_DISABLE_WARN_BHV_COLL      : integer := 0;
    C_EN_SLEEP_PIN               : integer := 0;
    C_USE_URAM                   : integer := 0;
    C_EN_RDADDRA_CHG             : integer := 0;
    C_EN_RDADDRB_CHG             : integer := 0;
    C_EN_DEEPSLEEP_PIN           : integer := 0;
    C_EN_SHUTDOWN_PIN            : integer := 0;
    C_EN_SAFETY_CKT              : integer := 0;
    C_DISABLE_WARN_BHV_RANGE     : integer := 0;
    C_COUNT_36K_BRAM             : string  := "";
    C_COUNT_18K_BRAM             : string  := "";
    C_EST_POWER_SUMMARY          : string  := ""
  );
  port (
    clka                         : in std_logic := '0';
    rsta                         : in std_logic := '0';
    ena                          : in std_logic := '0';
    regcea                       : in std_logic := '0';
    wea                          : in std_logic_vector(c_wea_width - 1 downto 0) := (others => '0');
    addra                        : in std_logic_vector(c_addra_width - 1 downto 0) := (others => '0');
    dina                         : in std_logic_vector(c_write_width_a - 1 downto 0) := (others => '0');
    douta                        : out std_logic_vector(c_read_width_a - 1 downto 0);
    clkb                         : in std_logic := '0';
    rstb                         : in std_logic := '0';
    enb                          : in std_logic := '0';
    regceb                       : in std_logic := '0';
    web                          : in std_logic_vector(c_web_width - 1 downto 0) := (others => '0');
    addrb                        : in std_logic_vector(c_addrb_width - 1 downto 0) := (others => '0');
    dinb                         : in std_logic_vector(c_write_width_b - 1 downto 0) := (others => '0');
    doutb                        : out std_logic_vector(c_read_width_b - 1 downto 0);
    injectsbiterr                : in std_logic := '0';
    injectdbiterr                : in std_logic := '0';
    eccpipece                    : in std_logic := '0';
    sbiterr                      : out std_logic;
    dbiterr                      : out std_logic;
    rdaddrecc                    : out std_logic_vector(c_addrb_width - 1 downto 0);
    sleep                        : in std_logic := '0';
    deepsleep                    : in std_logic := '0';
    shutdown                     : in std_logic := '0';
    rsta_busy                    : out std_logic;
    rstb_busy                    : out std_logic;
    s_aclk                       : in std_logic := '0';
    s_aresetn                    : in std_logic := '0';
    s_axi_awid                   : in std_logic_vector(c_axi_id_width - 1 downto 0) := (others => '0');
    s_axi_awaddr                 : in std_logic_vector(31 downto 0) := (others => '0');
    s_axi_awlen                  : in std_logic_vector(7 downto 0) := (others => '0');
    s_axi_awsize                 : in std_logic_vector(2 downto 0) := (others => '0');
    s_axi_awburst                : in std_logic_vector(1 downto 0) := (others => '0');
    s_axi_awvalid                : in std_logic := '0';
    s_axi_awready                : out std_logic;
    s_axi_wdata                  : in std_logic_vector(c_write_width_a - 1 downto 0) := (others => '0');
    s_axi_wstrb                  : in std_logic_vector(c_wea_width - 1 downto 0) := (others => '0');
    s_axi_wlast                  : in std_logic := '0';
    s_axi_wvalid                 : in std_logic := '0';
    s_axi_wready                 : out std_logic;
    s_axi_bid                    : out std_logic_vector(c_axi_id_width - 1 downto 0);
    s_axi_bresp                  : out std_logic_vector(1 downto 0);
    s_axi_bvalid                 : out std_logic;
    s_axi_bready                 : in std_logic := '0';
    s_axi_arid                   : in std_logic_vector(c_axi_id_width - 1 downto 0) := (others => '0');
    s_axi_araddr                 : in std_logic_vector(31 downto 0) := (others => '0');
    s_axi_arlen                  : in std_logic_vector(8 - 1 downto 0) := (others => '0');
    s_axi_arsize                 : in std_logic_vector(2 downto 0) := (others => '0');
    s_axi_arburst                : in std_logic_vector(1 downto 0) := (others => '0');
    s_axi_arvalid                : in std_logic := '0';
    s_axi_arready                : out std_logic;
    s_axi_rid                    : out std_logic_vector(c_axi_id_width - 1 downto 0);
    s_axi_rdata                  : out std_logic_vector(c_write_width_b - 1 downto 0);
    s_axi_rresp                  : out std_logic_vector(2 - 1 downto 0);
    s_axi_rlast                  : out std_logic;
    s_axi_rvalid                 : out std_logic;
    s_axi_rready                 : in std_logic := '0';
    s_axi_injectsbiterr          : in std_logic := '0';
    s_axi_injectdbiterr          : in std_logic := '0';
    s_axi_sbiterr                : out std_logic;
    s_axi_dbiterr                : out std_logic;
    s_axi_rdaddrecc              : out std_logic_vector(c_addrb_width - 1 downto 0)
  );
end entity blk_mem_gen_v8_4_11;

architecture amd of blk_mem_gen_v8_4_11 is
  begin
  end 
architecture amd;
