// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri May 30 17:55:40 2025
// Host        : bennipc running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ instr_mem_sim_netlist.v
// Design      : instr_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instr_mem,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "instr_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
5fWylM6B8D3a36VLuMice1+STP672NGbCnPyd8jDg91xHAQSNWUrFn6Gw8OsTzPJyL+UYI501XhO
hQgFxQqpqrDIhPCF4ZLm5NMkJFsuO2YPYoHrLjKFZC8WoaUxr5KfWp+WIgSGWeAAr1G/3WQuMqxO
DbcFx0cPJnfA7/mvS9HQBxbEpsIZv/ftaA75bLHwCPrHf/HtI5aNdMrpief/34iC4vFospB40lH9
wMDzruZ6I8Z+6u6aAxCJQvJUHat14IUHXuOTaRbmqvobsQ1QE7Fl3E9cFrCal9bJu6Ex3fB8q9l4
ScR5nEWtqYOrxzj+Q8R0aKFhDSrudUult3LOcpwD0tx8Mdi4adbJOxP/sxS/0/Mv66kcLRMRKwYd
M06pkqTeMm+aybE/FaMOttLWxOW62lIyYUDh9NIlUdTNu4ATSKaEaYueySR8ItDAfcZy0ZGqHPuT
/nuUW8cXYU+t+uqsr61gF3svbjyPN+swUVEyJcURW28PQXSz2403j2PmSbuA6H+X23N1ppYi4ZdP
N63PKC5MHGzKXtC7uN+J79AYfJQGwou2iMgAvLcByFhsM+BE6CgYhjxbcdM5s/4zQcQcarv6sJfl
8X/3XrOpo09y36qwRJ1I8Ve+84OiwoDrp6dDIWXKPnV5QgVNd52hsY4BNyzjqC53TSUFb5IJEnhJ
ZCN03FGwWJABqCAGtKDl1NvQug9Y3r1zEuCa7q/nxqvCe7k15BHxnqujZ8VewBWJVwJCByTojzha
qiFZoCWiw9mM+rt/5FOWo7Z0uklsWVJraqUX1JtSoF1+AoxM6zAmhLnhNBtPKdwN74XieiCbplZ+
dbC+wQb9dZlHlWw2oPsYfxRnGVUKSE7SIKoRRSUXn+95FQzt809H1RqL71jEd8mQpr3XDA+C5tuC
OT5lGEdfRM5DWV/jyq1yb2uB8G3ZZmDikxMqgbM1Oq0II0HEjsYPTw2baeCrCicLBPudlqgFy09q
NTtsfJm2orZqvpLjrDUSAB3aT6P7nf0eyyzZfigFKpFUrQMcKbDykn+knNFWz6ad7kYAj/dj1zcT
bz90Fq8z2A+OylrRg00w1pKtliPw6TL2SpIMX6bbVkfTxfPr9h9SgsG2mCr7pZgBEaGjlSvbfKmI
pQXGGnhAioAuDqXh8kqMai4CMno+vTPwAw7Ra6fYD8TIG79lPTYIaScM2tF0keHtcRcjq3cxat/U
TQMBFhjRcp/MGVvsIBigA+/+TJiZVQ1hL1p1oxGie41BVldJTu83o+c+9QIjcziUoJy7PFd91TH1
KqVznBmX39pD4av+BkSMm3C2eH32LoL3+xXWKckp/pJ8MbNDhRzjUL7i/movFyEF+9UdBqR6laF4
zuDvtRSL3DO5jNPaVnAF3YIsunSx9SzwyW8HXgWwzoTOOSdMQ3ZlvRbfuWt+28PazW+nMh2v9NGV
ttBqWg0yCO54U6KjB5IpSqXS1QVrqgWvE8EXtZNIUojQg9ZyEUkpi5x/rrBpgAQse0et7TecYAQm
Tlej3ET3r9hqZC2k7wxmQZHx5IZuUrdhtINs9gnXk5ej35+UDkR77yDBTNA13Al+pCHGQIxBXw3J
6SXYUQBHaI3/xZq0v5+7HsraZls+sxrhXU8ib5FOIXjpeqeKDwMAhwyIpBY6dpmvzj4r5qzJO4FW
hnyoTWOeXZSiUbP090QSyhv2C4P+lzgzpOoapjgaJqPm8SagoFYUWtbVVlgNmtdTOsJFMFM+nayK
zzSj0eBVR3IKlJPr5DD6BCmy41x2a6+IdholffzNxwMu6OVG9e2dxA73vMwLhOqMNtSxpbmk36Cg
zlj9Jfo9ptUh9XyYnZny5M/Ngzq7q+qJNRCZiFGhT8cfvDduKebht3B7Hy54GzqW+zuloFeh62XT
tEnMpv8VDN4eBANXXMXRdnxkrNh3d7yiElqiGwQWa6JSHq0uan5H1PO6mnWhF8xEZrebAjNB3JxT
PB5m+HfO/8L8kIcWtM2AjtgpdAMBGZI/pFAf3ujj8lZ6xzQ19E/J7kmwfaXU1x/6bomugEqTiIY/
GckjTcK2xWZ/nFQGrkFzUDEjPCyOz0QVzFqG9VAbxVW2JqRWgTAZpwlV2G5XHk2+ZZHNCgWZRgyb
Qc9pcGM+stKsRgv8prB+2+FZPWXUSSQk4GaIBIF9pC1VAhQNMgczWI3i/G2mKNa3hdcTOn/ptPGQ
al1NmERMNQpVo8Xjrrrve7/95L9wlok/vzGmwmbi9ClBiCBlGCXL5XWFA10pG6XYPhRUZK4hSSXu
MqWkpzTxcEPfh8cXyHVTQDRrEvNPmzzSOh4J9Js6942dNmvoliVLUKk+v8skiHVhATZLDj/jTXWE
EP+1KX4JVl2pCcLh3sWFgvbT6LZK9yGXuASDFDT6tutDlwJ1LVxlFf/YiO4S1NTJ0JPt4AKyaXvH
yWSVrA7hK3LPK6z1hZieGM9VNEX3vsUSCnL8ddFjdcGPaZiTPgCL6Zc6PCcnSiVIM4R0deoUvmJ4
1+1n5rTFnBRdv2NDL7XPg2/OAv2QjxoMgcEbwi5E5Awh0HtongA066RoQdV6x4Be+wq4EYig/PoT
CA7p9zZEkvOHDcgva9sNW1vk8kdk12ypBIjKARsRVinw3Jzhx+qJlosHB6IAo33eGS5i/C52m+S0
mnjur9fAfzugP/7l/zHbxzkTMpS4o4wEXOk7D5ZdVcdvcg25ElEMO001dkPgjpFvD4BC1el1iuys
agOqOIKPQ+PqIJGRQAjcjH+SpZ2z4u1IfPisSej09OGRbrBUSmFTB1/Svnm67zmDomjpHVtPxz6u
8kkCG1zDxHrzNrrtGry7nK+/cn5iczRNqVXmpeGGYY/EqsGTY+Nqdtv63AMmliJ9sbanpWw3Szym
89GV9PIxUey8bVN3OORprOUW40UwqSb+y1Ek0cjYWKZdv4Vd0w5qmwWk+98l0oKOAsyI77wSm3iV
0eiokV5pGUzwN26QS6YQD+Q3/6g/xQdnQYtlxAFXiJYBAWkZTBtJsXP2J0ohfzJKKF6XCiTROTxM
whwe+s5ZZuxmVPPbtLoHp5RxQp1zxruE5SnvOlRcfg7h4k9eO7YUa2oYgGV78X5Io1RIbpdYFxY3
nFwUMOA5aXkdfxpOnV683GQGcs+IDNuSWZKl45VtO8vx0KflPCsl0d4mlzUMGWVkNT8uE0QkIzh8
nEnlfslrlJj42EyoowicmGeym2X8hM3Vf0lmWSFG5G0ea5ZZ8iFyj8beYH54Mb+h//j/xw/vtIhY
P8w0x0MEIvuB3JEcBui4Hdg1LNE7WUN0VJgSrah+2UeXDU1rtSm3St2NnYCWqTLA2whNqPRy4Uxe
Za6sx0BnQayPUIcN9HB3QHAW41OaRsxRx/0B2cSvzDNrF+XWzD8YqRqXtUCdYrf3ikf1wftL5C4b
qo15c38o4xJ0XFpD3DOqC9t42+GnXbrh0UXY3JbQQTneW3WfPsqZHY1aszwdMT5hIrma3Y91xdU2
/lurJVZW9IyCeyKTo4e3rsc9sbmVXfZi+J3kIzsX5HF4RtCxJmESNoBCtml+Ets+Zgrptd9bBuhC
okrzLuh7vNnI9cXfbblns++Lki+6GgfEM2V1kEIggiGOKKbgPZ1vxRAfHR3fvSal7iO7rYjAxSD9
6GtaWBPs6gStWDB5oD96DYctjrkBtMGDG9gxAUiuZcJtE+4WrV944yN1ibXPWHkJ96nDdHy4xVjC
pHTA/p7W6y+UzGfIrZCbe8ySf2BUGoRCp3Ba88PD3hiWXsgQ8PphxLXI3BHXuLAX/PFyuq1WMlro
HyiX3yLKMSfWtMGmyKgSJdv7FqZRK23Aea1wJClcn1VmuQKhpCFss5fYSW/4CuB9YaG4cwvtAz5O
vMaDaEgJ5LAHp2Ykv93aGBjeAfPVSMNvwGpsxuxvhBdn6za1UYHb/t0Hml2xzr+VtPObbtZn8S12
3cscdATSlrIXrNxc9z4aEeXlfsyOM5m7E1mHWiaHhvo+mhaFOQpozVv24ehJAKCYBsuuXmoeUDEU
9w1cowXwYmYsZHJpk8QMZQOgzAp1B6MFNi/XHK/N/RKHaKGRApNnvQZQG565U6+thcU+r0sMUe8h
HBZ2OE6wMVzFEr5ZcYapqQZ2FOOVx57VqoxLFqaXCve9pV9iWNLhZWfL3b7gyVH1fZhYZhplEoNk
JgKBAY8JJRZPJG/lY3TwBpVi8J4U+R+UuLtIsWPAQlp2wttVDse7dT6i/phxtHvSF3eRvM3W0Gzf
aBRjslGJGxNqk+bnKLUvFNIm0FbKXV4cRaiq5MxKOkRHlyU5gLU/r5aY1ihS+e2y1a6xWKnJha/l
k5Y1TnPce7hs7fIUsU0zq+gzQktFtK4OWUV/tF1KaKVeKF5J8NFabY/CiTJfirpNTCHfxuZG1gAB
xJbuiRFsGC2Mr9Lna1C/8vZ5dFmm4mfyli7Z9RcbfRjzuAml8yVHyzVb+GgwY8GV0eEIYEyg05XT
HbgjkoncO/jR/0zB18YwWLeF+OsKNAx4Bqqn5Uj/5so9KobDSC2eKjCMCvialDtJEo0HrdV93OgJ
6QYUqo9k7dQYTigXUVYE5D1DK+6DoMO5lyLeXLRgEPfJbP0NBmoQidNOznzbmvqwxDAEyKaFfH0/
SOD3LgAs0t1u9KIo6PDm2tvxESdMCiVouFuHHLwhPHvYQbHNnU5HKEsGG+1iAbheBTv2jFaUTGiP
FLXIw9iQsb9FNZDHBdIap1+7SM08M5ubi3ctBZm5GW3zFFet/N4DVBcM1ozEwThF3z7PU3P284yK
EYYNg7bsWZh6m/QuQc6sUJwPIzOp1nFjEp2poXn/A/hipX2zK2b76ZA2Ng9fCEP/mI77fV4rl7DQ
QSEPVkEgzk74Rg45W1SL/YvWo763I/A7cWQnaAmha7vtvJFO4JpoktVkcCGfVxAomjfhbtsJhd8S
dWM4Cf4iqzz52JE7Uxbc62d+P7zfmEOHX6RhVZk+sRvAyqUIWEZRSlAWwKSAGlp+6SfWRC5NbC/B
QM2a2OH5PBcRcR1dJ/yWfjI2nzfWLk2JTXKW6Lo7+KBOo7UvO44nO8OSPlmjkLy1da+ZJQbtcXJi
CiDBw9chMCdhQ7UNBHpOLmosLSus6LBtnm1nN+ZvZsZ6OYl7WIrW++h+5+EXrp5HqczCpqfQjTvr
f8fHWD9UMht1XF8ACunVUGawN3iN8TaHcWewMqjnWf3ToqYskOfswOao3n4o+13InCkrNmBou4vg
hQVNzH6s8tYojrEzjsIrBt5sBybUJAMgbc936mrvSt8Mzt+z3UEefFvMiVKVj5zfHZZyCjfvuhXn
YTSzQmgyodlVoJ0che/1TZKvUpdqDiCt375v4Vv/sg5gBsn9lwRcngFx89+TwWMY0QVAqStLp/NG
Te6Fk88YZcdruV7V0lldzYvgZSmaegp84RHW9zcxyyc+oWeOFEMK4NT2razzKSL5bW7hMdoQ7HR7
+ttT9Q9qilvyLGrVmWmboUOmgYv6nehuFtJRw7qMjVh3uinhuJ0oC1MVPXWOekZ8y89xkjECjU6j
PquNOyH+lqLontvt+R1OBZ6p2p2r15AlhgzIAVHARzk587Jirdz2t48IBNiPUIcsNKLxQqMCmK1l
5LOrhMuPkYbaHbGG9g59MB4gFb4UEtT/OQXOn17PPuT68vbLcwfcChJ/3b1Yg8ipKhcbSotG1ZA7
vDsA51QKsTakFkB8NftS3CCm+C/5JYGkIupTrYGQE+fWOuDAkFHaf5t4jSX4fMMXsZmtAJedrz4H
4SeaZdhulUK+l5NQ4fWt9SW6oEDk9m78RLGORdopTqcmDIPqlWM81g6x2R8Jr+K3sApQw3e/L4Ma
AMjGiR6K0BMdQvwg1qGXdTpY86sZ4u3Hy2P59YE8HROVeg++mnscpzT1SrPi8e3p/0db19RJMUwY
N83w664i2/BieZYjeuOOw9ji2NXoM+j509DHi+09Y7vtjym1RRKTdaLZKYDpa45YsrnDdEzCnihz
yyDWGFDHlSHO2wes2OIYwESqScuAsBL0IZDbVGNTS438DRtGXTLItyJP9IKmsvknN3oLbEYmefxT
HWYUBL5YzmpLmkJbgTjnHn7IVEQDvtZD7wA2je1VRZD2cZo7HO35gwoBq+jSwutvQD50ezUSyXEp
4NBsdftBuOw0pnw5DFX3NUyKbU3BgVOPMKPZ/v2mWk1d6IQtpBD52hMMasJMu3Dc/b0xlizjYDE5
ilrZNhoj1qxLkR159T4azewievel2srNEFx+3Mex9gAEQHZf6jyJW66o0caoNMTMI1tsiShcxHDS
Pky0UWKZPAj9SsUY/L8QpKAinzyyvzhpHz4+1DUup0q/392VDN7fruSM9yuQ5iytC84S00wwPbWx
15aWTlVDEVOXpfemOCVfuncl6mntH+xlUKkVMJwRgJ+DBCoKV5lVmk+EruZnrIlS/GY9wnqtNU+G
XOBYenHMughsNIjxTVReRlSE8TFEi2a6xUrit/ODsrZMU1xAXX/2H+pcKY2HI8lpFIHK+lDKNCWj
F9q4BV3d2Q5J5lnKHAH8BIi3aMcRVKvhMAr1UreoFmS+Hkc+oKGtNJQv9lylfaFcIMnztkyV1gXy
LqO9ebzrdjUqLyGrEXJIbwyeDC0iLiWlMLwAAJfVYdlBLAK9Gdu37v8esdEbJTH7wzloyaVOlFuL
1DaxBCEjpWewYWsf+xk9jvtDe3QoVzJJi3w6TMn+O6ER3uuDsq3rDn9sQ14CcpRO8W8GTeWVqiNf
tpxVQFwtBoV89/q/zH4XLoUKET8leRHeeobb+gmpTg3o9gVPZdWamvOJLuevCWONXJ66+RrhirJb
xYi87idmSVqbP5TAi3KJMs55GeEhVbUcah5tKHA/n+Ow9QIA6WTdfMzRiJdkjd1WAfOUT/GKqjW6
O+KcAg45Ic+6lBofPG9PpMNwTUv8MiGCiQ9i181jvn3qQwwhpOeKoLxh4TapaTZ+fPzt0p3oGzZd
v8xKQax3lCpfC/Q7VxuwZ7u6HsBfzOJRXOUWWbhxXUYY9FAF5rFeVSkz95xdAv85yYpdvYsFE+xw
X007FrhksqdbbX4G7i2nECeo9hwE9nFPTFLw6fqAzYONT0/jyqnT5TYpclWv46QIKtiM3367adXg
bJ9qN4hiWXkH7u7WZWiYLRfrxLUUEDvGf5bYUyLwOE4pY8EXoGSFbPwdyCbv4xzXKRfqZmvCwzV6
a4OVprvZIcbfLzz/Pg0ltN20wRRVPcqVS+dLA/VuKRgMHA5QLeeKsZ0eqF9iEdv4l7nIDl+5bTun
6uNG+lp8iPRgtvEK6zY8S2YG5SUsEYab3uEhvsQcqVwjBUB2GsiMTtIpKojiTYH3ydh9HTxpJ7jO
WYU5tvNKGPwGuVWDVXnoABLhm9BLCKoCGZ8fV2c3K4gw7z7pLF5cYaX1cubaiOyDQTHR653AxeFG
dAuLQHXptM1AScTwWtV+ZkgFFaQm3nmWOl58wfAvY604Ys4zTNHpHV1GZYxJVMqcS086CgDojP8A
4nFce9ej7W9GHb1Ei6qlW4qJzqzZnpJDUxLLzTE09lRWJkQFGauEJgUbIPMLmr8gL3Pzxy48s1El
kbBh9kXMjGwA2XuW/rkqdKS5D0tr0VGKNLrgu+zTm0UQ7SUCMMRkVgCa1d7RxwGmg8xJosmxX6mJ
GgrpSD7qeg+ODdmP/P4+MKhvWXyqVDVi26D8+Po0ZqVkMsZ4U8o1V11lbqcTBmCRhJQWzRm39uSy
CouQmtZ00DJ5F3m+6FGYRweZHce+ozX/3qf/SP5fa28TRwzurdXaGaOvINFiwGd0vsmw2idri303
6ZiNvdSA7K2IuJ2LKc8OxPA1RD9R0/nWvPNC0iD4C7SvZg8NLHWJcbwuxRAyr6+AdRvvtHz2I2DD
GJKTKSkfM/nNj8YEhNplDc/zHqWrwNaFAuzE6pHut7W11rhSSpT5fGv32cjXSrMlr1uwhgIeYWvp
Qm/N3WUettwqT75hl4Vh0AuPP/iX7enJmOuQVeCoUDFuRJAhvXS089WExat6whUqOYkRawI12lXq
GKRQj+eOgM3CSC2SkTaCVgz4R1+1dGi60D6c6X6nMWabd/WmET4JR1D0vgVX0fTXIOoiI9JkYUv6
BND5e0/8yLa7et9xcjhB22RRIrXQNP0IDHqd59AoVbQ7ZyCZcMc+XCuQiz5bSyYpygCZ96Rom9tL
C1UNagE8GBlD3DnCfTMcdJPm9sRZGfVruaq92eQwCubtMjqgaah8L2NFvyo3h6LacQGMYAcb99TK
D2ZvonWe8LxkpoTemacFuMOU/gNAqU31zjACdITpxHfY1J46xlzE4eCNVYRL2YNvtJT3VnORhwNK
MOedVhc1HnlMal+TjOCT14yVSxaFOkFNvDaNPrBnpOcly8g3lET6qNFGnA0xvaXMmisQh4MWyONj
XslYO3V2lhMgbj9+RXsNQQyz0noPF0OSBDD6H4gAstytRIxBYrTDTSorxMonPO6zbLWLFy1djStj
BAYB7LpffUxOZE+0Iytx09s5svlzvdaps1qA8aP84xOn/ADP+wkltBdEw7aNC1+Egx6Fd++gFR+6
+k5RdLX7R6l2oJypig5iiemdfTAkDf3G2Z4bWRWF6W5NlZjYCyS5McDIVIi957PkcRFIFWwZuVG+
EDA4PsMtADU3mN06q38cda3irFs7YAZ9jGC13Woi4Tlky5pw+ujid3Cj3YGMIvXWAjrZMPlNaVfw
cdxnFH5n7Dm6SnArRMxIPS+D3eZYarbqCAmevYIOAWlK8ZmzqwxxTPAxTB7O7XrVJqc9qxZvNFZC
8PALZMhOpqFJe/wPPPGQeXadYL3qrKZ6OHXUntM3odYD36zgD11jh0KlLh2UNGOdh1RxyKktr00H
lbKVVVLcLrmJp6QjHfuLjJNycc/p4j29Dcugi2KfwOeEuu1VECEHhK+8IgMn3+x+ynAPXwotBZ7y
o3YXs7WMql1gUcwr5JNi/nfrZLTl96kWfvE1pgQyBZPjFbHnC2mRt4/JziMQmjNGUVazMxGGOjpu
wPFFtXizki78rdcFxq4LEUH21G4AmJhFzPJsldR0jHmxszym23Jno+kmoxa05vit9xJPmRLMtB/M
tyWfc4MFX1ampKzKZ5hbPQHewYMn8WmGvF21sKqMHED+dlG/ivAm6N8Cwf5jWgx8k3kJE2KemZSk
9BiRBPbsnX7FkhSSeTipxE2ctNu4hLDbez9oCuDoKJut8gnIppA11AwOSvb0rXTJwNHRMlA0yahW
w5J90YJU0xTASnMIbIKlewpf0s+vqjZDWQH7b1U8B/dFVd6JmqtabYo0QcRqgwYtcPGtwWbAI/j3
IPjaSwB8IJBkRJZJgLU9vVrjpehOUaN071UDLmj10H581UmQHeYnf1oWw8tnPE6yXlt9OAmG5c8r
Jl6uJrT0vY6wfxQICVqkJ0jcITB2JZdB14i1XgkSnGVOLxWnhTFjN+NOaHf76NrzvoYMVePLPVqV
Me+ucq4UYuNndaILFj/Q8yf/ZqQ/9Hoo9Ty0PVbcjGCo/HAcyvqRgJ1LEKObBF/cpgJYQsreoizE
ceGhXsCOqGO8ZtqJ2hd+f47TCKsqVzaWnbp6DxaFxygEh/GMWDbVMIWx5eGtzBXx6plu5WmQC1YR
nePpjvN75ywxrELIHjdYRc9MsFPXpaaqmgcC2iDidkPbHU8Rh6eRdcF5IxT3IqVbJo9NsKs1YEq+
1seFOV632S7waNkAYCPi8xl6WD1rHwpPOlYNegUNbKIDd06LbVkHPoJkqPICi0lvQ0CV7mwwvyXs
7Vff1l7+sBTMFK1BcPyOPgs5hlwK82WgykoYYT06xtiAqUW9BA19jVdXI4eonV7diTl8iTSSwmT9
5rDPt4GuRM0r9axlHgIpoVONKJWZSuWrK82JVmDqzYRdwoHN+a3nImkRuuUd/tiyZig/LPcHf4XY
SOIHKpP1xTVbY/rJ9S4ZrF6d+/rBMWO0xBHnNgMgDFiMv+xdJmtB+Kehq/ECMX3xHqQ3T27uU+/T
jmq+I1dXjRtPOqDrJ4Kp2YQzTs2J4ygJ+aZtK6VGxSyyzddpq+2ioHtXFegxQC5g8Ja4sGA/Hmks
ONon4Y0EVvdYvgs9a4kuq0M8pZima3LOl6G7hAf5audKJGB/BWPlI4iDA3u9F91qGgQwcQg9bXHh
a4wzKr4Sz1lr+NOszd+kdwsvt+2BAuG34C8QfeRxG/FciUqUcqp7Xz/fIJu7z/g7kAWNKcVDwQ/8
bI4Zpu+6hcvLj2Lk3jDY/h7Bi+3ZdEE0hMgpDTIR0IO5hUF1erRueb1CeTglX64PpXk4Sh8jJjKM
kPLMay0EkXJXSNUlIEGLgHQowiOuEGw1OcrYlgmjXBDbKKCM0dgF7gmJ6qGZ12xC8vatctDp5yDT
gWmuVAuOjnjl2Qlz7EGD5AUPp2+XRKHjftibbAj7M/+7I1QiIgTyUrHZzwXdQi6RAsPE+dS/8uSB
/rqZungFXMwN+d/NPhyTutC0HxBCgyAw3ATkWaA0VkIOpeAHAiGuzgH/R3KUiDj9yL/nYdIrsxCL
MraTY2goaAsNdXi+O4+AGUbG4RZW5WHpzjQodlauzWY5+kjocG49gFAEv3RLVZJN2e6VJdH5WJ4/
ckozKXnrlprpH+vytEsXiqbawfN11tQARtbvZyMV/9GkHjb7BLl+NqLWjVnkOk/yaag9tu8snqhG
gKvptneaqBqFtgU0tRDYJWCiKhQoDkTdC6aalCd0Sef7OIlYA8NDLR5mvuCIUjf+kaKpmQluhzv5
gYH0hboaAaHsMVjUXB4YJnLG3cu4InoqBSFx1eKzRojN+j39OQ815W2MHMdLMkAW97oxpq5dKqAf
6DALb8/2VhcZ7E1XWEkvcdOoQqkHbEFUC5l6kT1EqgQ7kWzlOncsNfEkSJ9mEaiPMLl9s82dUfd1
t7hhELvICNO/ljEYxdp/1kW2CtJOxl+ALLeA1vgpfWe56a4K+JD/33TMDZRRriO35Xv/33bAEt9l
tZ4UtvRjxj4f4aQJJpM0NPAFHiAn/QJC77wSoYG4Kr9LASyGiVTjC/jccVob7ozEsHzAbB7XOYLS
dIYC29I1X2X4IA18Xho2t6xuApJgXRxwmeBPmnJKel8PwqglcFi1mEZ4EA88udvUOdRY6cSe4mDd
MwvpTQIWX9hNUNc7YdaIoz41xhyLrQ1Yz5Z5ktsXlEnuC1YmRDDsxz7bT9AmEcgowu4bhh/XzfS4
3igw6usYzUdb8Ra83DrOgLVFkq/PfIx6DMrd/IwHounML45j8mau7zyVDHRNagfhUHBDRZM4lTdS
obQFb7RVQaYa+NgXmQS19tFqUltgVW/Fp4XJaIzIO/l9ZFrap8a70do9GPHwMp+gKTAmXsqCNChQ
RJgewymGmhao2IDiLzbcco7yngLv+RTebTZRut41JGMec/MIfifiWJde1s8coS4tLWW1J6qHtRRa
7Uk7lzh/nXvW+fciDmPATQuOlqM/eNuR72wo5q/nmbZpkwiUTcqqYg969FsncyjPLlsofOtTlrTa
CBQusk+3aDNt6CltoqvLAQBbpUQdjEhbLfbgSg8NIEuzz6gD1sV/844CXy0yQBd/zU3kScovBElK
qmujVl6uGUYnqh8tjS4lhqL/QgMgdLm8hopdadJ8NvCDHfBB1cxknBmbUq+ZvK5xgBru6K7wTrUE
9bjhMtvQ1BZ6oNmKh+jP8Cwg1I9t8NOZSG4Kh8Yf40EAd7Q40awEKkeikhwEnrjlGnWJ6RDyVLSx
6knIkXgOqDZB6RUZow93nLHUR4WfisPjJ0jZfFaXZd6mpPwP95fRF1hN51InBwub2G3Y13JgwdEC
+TIVOJmr7tXIccAzqP1XDlbFbahVrygI2R5bOhsYRtZ/8n1LiLMLv4i24HFm6mGEBCyHd9ojcfiL
I4ghAPJnh2kH0WCB0IYRj71xm+EVZao5TMAbkwQ+aGS7h7GWAqTL7qG/4DwP21SL6gn1o5E3i3bv
sFF9EtqsardOQ78kUeofjoPn7Dv0CXa9MYCWBwKAw0i/6iDsMkCkFT05IYqgPZCLesUx2ETlygd8
NclQSsApAkgdxqP2K+r5vkMYIDhevEuDQefFh/csAd09X6GG8jyYhfiZ0mMZD5Ns80Q1s2YHQYER
HQdqPj93FboYN3R8TTmOMoC01TKTYUnof6WYxa5jkgjpHAqCzahQxYiLq62Fl2PqqnkdlETzjUVy
3RSvAQ+GjHyasoLoWsKYdYGcYpof99MGzuFol1PzNp0yWv5z1PMX8PPiZRN5BQawF9PR9gRU4xyV
j0lKbcNKbYu4PBpBaELmJ1HtWa6D89st+mdRxDnR4DywxW+WPuwKNzvksMBobYHaijuJBm6qp4bz
RMgHKEllVCsDpF4f3o8UFYHoNCrmYIXJtx/4JWFFO/V3Qlogz5LXdMJOTZbHIs6efzhD/kMM4wMK
z2hda3qazAsaHYRl6MNEmPntt2ioR/AT7/qVjcHD0xQWukKhnj0Z3ZFdFishYgfHxqNtIT2+Z7WX
TOGec7ikThwFWI9r92T8bLyH8MDXXTP9TcvC5yNEDW5ovqCgzGrPML1t+QpMFhvK80EidMFDDtP6
i1/bqNIYzVKW8OPlMapge9bGqjR0d0Mr6lWusHe/zbcksuLEpRZs7RKQu8dfrG//hMybCIVncHA4
qIVShvE2a2oKGHDeM/xyEIyanY7uF7GjKUFja+NvGIaJiTQonKrAiaZcZTuL99IMIRzqYYFEEjwi
yS8ewwhCd7wJfU6RNpC3yyA0SNagEaQXZVkqUWANkmuzyHdkGkoMhVuPwA2so8Putqk8b5FOjdLT
Qyr+y4z/H2gfPR2gMopafka/0ChJbVIv4xiEKMlju8Ux0/mawYZPPtTupk4jmsK6BMVVus6vfsF8
a6QwspDtHZVdIJ6EignnV7/U2ENGHGn9AUXJbYx9uiXcYnwiM2kd4/O0A4hcsKODhzAN+idxFeNm
qBci/Jmp6xir4Uq2TE0x4Mzi96i69iOAwuhECfMr6sgsGjf/izh16IGQmpj0DBjTMX2fqQ9csq9Q
OzizMTvWmrAkTtfiqR+nnhLDqerlncWjsuZ/PpAqANUr/h9lZoXaANpDPcuMmsyRLnSeQhu7xcP/
KvHstKxNceJ5M6FIaJ9WzvBzsc5QdNTEkxOexxUlzBgLZZQTd/L2Ol5RZZ0/eObZvhevVlkJew8E
oaw1OH0P0Oz7EIsRtr9AGV5tx/PPt8gwCZ9oBpi1vtPd7c5JziPbvUGsTPwnQhyIL4T+oN94Cphv
d481ovqVja2PlQmQ1zmddnLRGH8l6eXmkjfJMmXvmIMVcl6YlK7wGe1covT+EEp2G375S8MS75yj
6eDO2zP6plQpXyY3Dx11I359/sIIT0gWbVgSQL/HppX08bUqWR6+56FfBCj7iwSTLB6Nq6l9JjjI
8m1uxpayZ4r6811nEDwaT9dWp7eeZzMhcjH/TZCwAsTalcbyaNHgoIXNhhvD7ZfDJTP30ve/EZwg
eayEacU/5mBN1b0YA4iL9ZFcj2uDxEOpp2kbsWdTp+feTk1op/BnlnnAZdVKUZC8yQ1AvVqU/IOY
gGRKNo4yzDQBsE3B+0on5s2gmJXzCcdef27Hh+QkJKRnn3wTQdQpgoksKCE48bA4vEHyNw4/WfLL
szLvIu4VDMtxVUGFb+a4EMXfBOJbHIJYcvhp1uH3U37brfcvDrnNUP3eY0SCLASJ5lqzcvuSltcF
d7cbK/TInEMLHfHxQhpvYX1Lr9cGDhnAcy31CqIvwrV9/iSIF+PgP70+StU5a0s4NSSW5ncqrmzD
a5ncVV3M76Rc8HBNYzcBN/lvRt7R1Zc198HtTuxl+80hs9SLnyTic3RPo65/5OV6qO06oq5B3eZ9
uRU+xngTsSrHo8tGC681UumSJba9GbUisGBryCpyfy0puof5IXnBBMRjYyuxLkK/h3H2G2bYoBMM
X3uIAXcvYtr2ryk1jb1p3dCY7N8l5SRlIb9iqOE4fpafnBBesxh/iY8kO/n/Eec7/lYSsAnH7gz9
5Lh7FV6GHIrp5o600AbL60opkannljrzdJR506bBnMHIB6jtzqM8aYAzatn3Z33K3KexLD6sEjQJ
0C/lFDfsl4Wdjme7Yd+BC8fmADaom+6a0S1KKnn7n7pNKmUAIcZAKowtiDxz35uFWFS44balrlmH
rbHnTRw/WCgBY1zooDOMIOHImbSq8hUcW39T3ANRKdNX5AQf3jJRnDSDx3J2EX59O9CkQi4pBTN1
UsJiGstxdPxeVk5FHCOqmK/7QIB9tKhg1BqPKLsu1yq65btwrC2beSXl9eyKTNUkuXVew4xyrQuV
axFZuutM0xFcprIKYME0QfUgu8TtOgCxg8EtQxUs+/LvTqrKE0wUyZ6PJxOPFfGy4W5Xtd5Jb8tS
HVoX3Rfdz80rlF0qXs/KxJhLVahoL/Xc0exHbeX2gwCXwvaWTULONvNr4HbZG1r4lcVtidGbts5u
d1UK29h9UPQhL29AfVAOyIy+lYyrft3/Hmu6KQDxQacYFHQywzfRq2PVtVHf2+2XTP+j1D7pL9gv
TtDnixEz3lrWVBBF0+368m6sy17MDi3ch10+yWFhAPtioFkmNOIoCZvGuimZgOj/HBDxNTrxssY3
K3fM0PPEcuwXSVXqfoJJMBQ3vRYcfuNktZ3Afwb/0/dMlzSPDCI//DIJf0GtFEhzPO0C+jqzv8C6
zICzyNk1KcQnLpoqCya0yN3jqp/F4UIZvfgw6W4otVXITXjOXDCNE9To5wjgy0aJa2DqLENRU1dC
YZMFxxNu35K0hdWJ7Nh3E1aYpSlDGFFApKLakA7D2bduEV47tL1zK3CAiLUPtBWmjW8/8dYFarv1
yRr6WXOG4JYHPAxNm8mt1Y3MrKpbcAR75cgnkVMrkHh8jbbrEU+7ml0GB4+KBhTUAzbHUNJkIteM
34E/lSw3lTk/bDF2wKI2XpzSqqa/+gUZQ1+o8JDSZus3GCPOrIU5VLzou0g+yQDMHN3tF2lMFnmj
FvLLkt4YleuhvHNOcZ1cUwhzxHXgvgr/bEJ1Ai4w+7ilUjuZwF8k8g9zhz6zgJ6msfk1m0WNlM/7
ToLxaVlXcGnEtZNTMkDAfPGOyDUP78c50pOcrZ+usSGBbfDs3v7WFjP9SB4FQ4wkQPsOvJ861AYV
+iwKr7qMNMMLGzWLMPgJy1PWRMZrPoBGRImyYp1u2caoA0UKjxCTQvIXNGp2YoLrWUWBAw9Zgs9u
zJWRFk1UPk7uauNEjc35OXg6Sxcs4A4I7gWUnsPzLAyoonenJCAf/JPvjJ9xeQzxb1lknxdmLN9V
WBQJh/r7RGzOtH0waCt27jHdkKpvf5/RcCyqoAPqQ03rHJEBnd5dzlHsHa1s11jPmJxmWYxUEA+t
q6S/viKido8Gf82vQ7v0BLbootg1xJ8QmK2mpiu6+TzVBloEJ0qkg4y3Hj2ivIvUPx8GwfitEFqr
FRlGMloESa35HKwn1XwfYZJ5R2LBWm7dE0JTwu4a9JnrYARa446m81OMVVX2hxfcFhodwrwZcuQL
nEn/eby00QJzMaTQhI6Y78KrfdMem7jOT96RGJvDj4RnVkcVgwEEyHaPW9zSq7lV5PG3MuaAQwy+
HAOaU7S3oLI3px9WKGV78eK0uikezhDdc2AjLnvTsbC50nmUdk+nW9ph7NYiIeMcLL83n+ZL9ldU
GCXkhft1iy9H4gRLKLOlnIXevcKurPahY0Vw83olecjfbCn6gmdkwTw+HW53YbGWi+xZ5SFP7Ace
FbXwrqBK4Vt6WM98AnxW3UVs5fxSiPSxTD1hqC8XZnAeVBTdg3p6UzQqCbn7VPN5EaecxBkmQbof
w9ncVQkT9//bcjkB5jFCOwowrwsUaUyhMAruLoPPkaru73APgBhDa6rrvukzjnBdqkqfBlLGYv52
Hjt7bRZiAHziNdsY2DMd2Y5ajYLC9iKXPNusj9fIlr7A/88Mm+vAUkfSdnQka7kox9vpLMjGBcNw
E3gU3Ob3Ax3oPDS5hA9bSXdfHPLrNhTAGprYGc64CBvo6ZhbQrQ1KII5TT2FKal1zaVD1zvo4rjh
LUCVgyhPSv0jErtE3EJvRLubIo/ZQo0s4xcJctLGFjlGwWsZS1oKD/xSYApCVYFcWK5yXJAy2xi6
u40ROiiTL+8BtAwIVXP/fYVkizwt/0XCbk+sXZn2NS3+WIA1NKFddV+nudjxgib+teZrm+EnrbAa
Ty4T9582kdw89Cj/81iMdn5kvZV6+QC0/7spcX2lwXfgCNOc7GFOpTUwUyh0+3/D2gs218hTI5M7
TKhIGVhaxzt7X67b3+wfHseLWhqBOd9KcerWFHOiFMm+hKiKl576jHoMt14qRw8MtgxqEs/xJGvD
v5Xj3rJxKal1NnxQjumIqCJ2CFSNRxifxuYXcnX5Bc0gH+Kk9b9qj02+AEZerbCL52spywN8cp30
c3sx40uDccEA4eZd3tK8ii3hnVwrNaYmnRfoUwjirEPnBpJj8Rp3c6PNlpis2V3lV0LXLC26a9Y4
5h3LpD/bO9oMm3aOUUOwRj+thngLrMvKYfEBJdtM5MrVoJ5HJZ4yjAr9Lbm6rML1Lfgfr3RA9Kg+
uQBeiU4i8dzBdHWgvbSIVwjtzemWTGdONXMcZ7mGqOuJLBSk4IfWOImssAsHG9MGr92L6NHITBzI
B1I8ufJ5vDzw9Aky2r4+6hkIKacNihUpoj/tRVNLvkzLVaHOq9AXtUpElid9P1cmxJ8F9XUwaHD3
aF2OY2ntC+r1ZrOPvUZFNfjlJOsen48rTaVMtVk4asbQ++9yVpTOzhzmvaGgrhu6k9DZs6onbwnt
EQEI5nadGq0/Dct3uYvQQkZI9fWYiycCW5fUq4u/pvs3IgGPbmddt9qkdY0ZHalkvylQPVvXFoUj
nV3Rv1MugUTSPCxUgN3hsKZl1W/BowfktV5A/qfVlRf0K6GgfOYJT9mdcUufNkV2zwGC7+zI+F5B
iyElxBIDPtRLdoDLKncFy35iU0ISUsa4o+VCF2emzaASxDmHGUo1BFS5YNj6JYxhbowF6NPbsJOY
AiJ53c+9qDWLLgUIsChGUAEAO/WLRbVKwQ9KH44hfhScwIU1CEuRCNC6H9X104Tmy0kQ2kb3TBMe
h4kGeisyUOs5J990vE3dpWAJX5WLQWebPm0UevjA3iMyOZfrP5SCtCbXLsDvIc2Ji/EKDFE2kIRA
0d+8GWh/E+b3iNOTkZ9errVNxpFESp1YDh6J7czxCgz+dDVX3hUPeJW+kh+Hh7RcYrfl5mqojexW
W7erS4g5zQi17DqXztLdzCPcmwhI2Nv+r0VsjhnHuDIUce65hs5lSGzw3T94wSL4htEiQHCjuExm
A1eLCYcUG8+pGKV4+TlVL/BCuqLxGDPm27DducbDZaOke8HIspwETzeqwVb4NP5MeFNQmlUhdxFC
fAmoW43PYSMoDol+KqZziuF7LAJ36g2PcOUg1kpZYrP2MbpW8IC+FDE84B98Zs/0mL8qDMik7osq
8ZqyjQKjLWobP49+vDrjlzSQOd8JHqb1+kgC/ThBW1GfLYfnZxvb97ROr8DsAg/UfEMj8xd+yeFw
fZWHIWs7i5oAY0Fn2+YKwjiU4r0qMoBZ89Q+mzlt2n0JAmkH9fx7P7w9LNNPQ1jgGQFJ33ZNX3Pd
CgWitR++YlXVhqAMbTARFUEdI6AeMKWL5F0secgxKD9BAkiyy62616DR66dncmzKNla44CX7IjnR
G0S8hUHmw0NzF8ee4lS85AaiR76oSvfRl1jlCzxlbKh5IbhDnjNnz3PtKanMxklQwnAbfAX38aDn
RCjoWhkDAHRMBHj9Cbcz7Vk6y1U3m0hmaTv9cIqGkFE/0R09z+gmyTKCJKIrZS8pcC3H/Qj9Eccy
mUchsSjDsS5gdqbcMz9qkqqlbMOZUcUoCiAR1h/JZ/lDf09XW2Ce3iUCTRTx+73ucDgsAjy4GQTx
K7QvV5ZiUTkYBCofiP6oRyZ7sGtYSAdFYELjyxmU+GLXLBrTB7RVSh4/9C68m//eYm6KhK+/Pkl2
7TC4EfAxjtqrXslSV2+DppzTn2Dw9szoB6U7zEN2ECeQYLgywnsEAuBNRHqDSQYDLonhKXevTDls
hfHaQlqwm2Uy9gNELipzXuMp7xUlBbtGmBre7/O7taLQ6ut1eHAuGyVnWqEifNNmkT/EaBDEs6s7
VZ8DFxtaa4TEnb/KHjtbsKFZyoIeSxP+Xc0qkMgCIYTWHEUpS7nGITL+hpZ0i4vEEXQEsxLRRlqu
T1eu0Tg6frddGpBi4iZKHrXc8b2Ro9++Sc2Hdsjur2uYoeCKYalk95IV0FqE62ePPheOsUKs5GQM
JSl6q4gdPo18SR7xsbCtKpEQR+QAhXHjrKKiUJa9G665VC7WMGqR11G8gzrRI9y0qjlckXW4/5BZ
lxVXxS5qwFyRK/9OB/ajB6uroGoGa9VEsXYDSa4W0u3U3E0xiqOnFX1wofR1f7eC0RDJZNTVT1NW
Xfm4s+lZ7C0NBqAlweAPjqLakNvysAMFGt4mvhSjd3qs6yiXmWXLNhsW4RqMC6b04Mp9gPCnVknn
/GTXZ4jdf8lWqJd8GeHZKvKkv94JK7OjVyrHABhSmsjTWZEcH0BhJYGCNYbncKYBY3efcFocJcS8
9TuUr4DCuswBekG3GnGLdC5IfXV9mda5JjZGgHWgEb2AtXsiCifsvS1cLnBmyYMFAQH4ErDGqbl6
UxPu9DHDbJnXvCiBMDMPryHRWg8aGpi5gOjftqq/p2ZtpLaabgEMMj4gzspeA4jo3PfW9mfcgWp1
x8Wk+QTBgh3MtTRRDWHxpfRgleUkdjFL9+6b86Drwm3nWlU24uZTeYbfuxqQ0HuKyrsBnL8Gc+a5
s1lKKTZsM7pLKP7CCEVdzP9sAfChBKdAHZ6BhdjVBVuEl8ivEEE4tUETfcqOpQpPmxWjvJqtcUcu
V8OKDuRPPwreePavX2y16jIw9+ORixHHHbcZ/cwOl/Rd5e7/3N233ySWTLIdeAtCFJo5P8HnpF92
rQikpkLT2qa/qgQrgfKAxN4TOeJeDAv0L3Y55SRY8w53s+P7MZMebga/Gl96O2DPt/eboFlkJEo1
V7jKi0KxfUYAK256OVsGmJLGxKIxYyku0j5zvxW8qR3yZWMgSjrbhz+SLRFWVKiheSbirGKcBXPc
no5qLIVFW2CnefCFx7dwBbVuSN/m0hLaNlYEaqSHI6/3ndo3XBzcF/pYC1EBERMgIC8f4OlidjNK
jVsUeIGB0HMYtYZu+307gFMgiRjr2jTVkVO8jv1sRL/lwgiHmjTs2ZCODfQm5y6TbrvC3ioLMli2
YDtJaKDjWsGMTHAJQqWgLPwu3a+e8uWlx5Bkit38Jr6eRaz0NLW0Bxvt2OAggFf1aXc+W5Opi5MP
e3tR7WAJHTh2nzHZ7/mIqIQDV2SlRMLA3FufZ8M9xFV74UV+T9sxYfaHJp7N3V6cgf7eq6UOYj7+
Sf1lOxKGBWf0n15Bt5DwtpbvAy/PbKKv47qyczdtnvdoUu4qtjX1RGNd/F1PhcS0U44nqBxOLIan
xPGw9V06Ecq9TmsMqmUaOHZ7xqeiunA4ZWRCIFqwAe+7v8DDaCI6G37Guze9FcQ21CpWfb7wEVQ2
EiiV7ZTu96ZUFvbmfmiZta4N7UJOLX+W01oC9mF+a7dPV/rHfihqv6rNPVJ0S4Ek0eJMCsHZhIIg
TxUiD5+qYlt0Eiv3QhZUPMIeE8S7t6LYNdkrtdHDhW+0WlCtuINUIQeg9wVXi27bdfg56mXoruys
oVIadqrugc8SPDU7j/HY+Oz6m7/sTCT4mWHb9X1CjAPkFoEMyVYxiJOGJkT+WjuavCSRM2FLa+BU
M9+RyLmvGwT/7eey3umNYm49o2/h7XtGenjSsUYrVRg5cfuG3vBRTNKi8WPGzDJuLBCFuyA1jfdD
gAsvksn0WxOp71XFVBtdLnzv49w6UUJUTDNKlrsziENf5E6bXQXytRGGbg35P1pvzOrekUNajOw8
4KzxcwAYP2FPSaacR/JQEFA1p/+dT/1lzvUNTkbK55U3Y/cWqwQLNFi9NhqdWkIRc8OxHicJdYu3
5QH8XVMC28gaG7ywxCFrN76GcHTs3LX+wpyzqKtVREYT8CRiPpdydfbqreRHS6p443SL8Bm9lMxN
QO9e7lrpJcLjFy3w8HjjOt//QT8GRGFYfxq5fIq8Qk0sfcMToiFigHl7hqbNNPkvXi8wzc3QXe1K
VLAIY/vdfX/hOoUF/VFmMZTGjr5l/bzOXlJwCMgwhkQ6/bsj2nnf8wkS/HLOCRvipj/XuQGPH01O
F1WpGsyroQyMLRG1/BVaMkBjStxCjG6Ph2FgleULIe1dp204Z/m8cztunBwnLy3MTQnXODw8Z4qg
Qfs8O3Ci9Yfm+lPAFuSQ/w0w+3Tdon/8N23FgKaNlru1BxfGW8YN51XMk0kd7p2IiDE91mB56Upu
p7S5yy3qjb4+BmxbV7YxjS4EslfUUDu6aKZBNb2ppd0mi8mJPP9e5ivJSfrmFatp53clxLrp3agH
VyXtqUePjL1YC4LRo18e7BZUuSSte0OiFBMjpIND/SSYriwGCpJPx/9jUMS5pULKPejz+hakrrQP
qJktNCQg9KEZ7++/EsISkBAy+/L/CP+vIn/AjjjQMz0yp3h+29aoBJYiSck369u6DLBDPNtEQD5d
1P1IrUzwvTcuKRGkh7zuB7rjb8+3D0NPOoAjI7O4XaMaF8WOwMin7r7tKqgNjCGmppOaYNa3gcKV
Sl5c1bIoNke8KzP0BkDPYjp3+kGAZEDYJY+xMFzjNluPy8vJRsjlpuyRzZtFr7Xv6xNaFmJbRYv2
Y5q1NYRikq+8zGdFLZ6TI2wMj4cnSyfmedly3DHp42dqvP+72Z7b+XTI3XZsAz009ab/J7+3TYtH
ObW89htxND/ImUz8iaIGoI5eKsPvamQ5WP0YVPSeVF6f7kydSBMU7oiaR0wdDgP92EuKLTax6FnR
jSWOQRdHeVgBjvoaZXhMv2SgwFsdnVAby6JO8K+9pgLAhBKYdO4U09AjLTAeSemyEmeDm7W9TAr1
8z1yQ1rjd9it3zn8VT8DoaR7gBe6erydduXcIHzRi4jAGCJrjFh0iuwtsslp2uA6lfGaqriw+/Ab
Gj5jK604CrfAjn3jBZhI/JZi6ixXmDK7ExH2PqRK//RC7I2/AW2BYPQqEerWdBHs360RE6FyXzEs
Oq4AOKJzsbiQvP1VK70GG06xtDV/c7XwucA63ErL919c8UIv9/eJGXj3pbo1ovROEbutnh7uxAYo
jQZ5Dl1+dorkx1A87P5780DS1NwnFFieZ+T11ljrahAqsJjHtKqMK5+DW/3Pk1GoPlLUF8DDb5mi
7u/zs1f+3bSXlKXVaWQMDRkjmUW56ce7LNY0/iLmI5LIufySt13wM3tQSGxnAMuEc5TKx6vzGKoM
WAhCzpXViZBDUPBFIew3aQB3uSmS+XCa6E8xs3zvsuYkJfWiwSJofPSDBp7cLqVSOh7JN3VoetH4
km6XuFcbw0TOu2Ta7X8juoHHeeQOzAqmD7DYP2yraK/KHCdVczj5wIA7/ER42XkSSjwx76O90vn7
jHI3COMyF1hC8z4VTzOylaIt9KGJj+LrBJlS5NqbXrItVqkHsMn8UzW2rDRUbBl7WGEB6iRu7y9M
hn1UhHxgN6UULaV05HTNCT23dazhm89uQfetgzAf/BXcqeKj5D01C7xZdtinfhqVxXRvumxIh4Io
3mHJpIIlhSINL4u/3mdD92wwYbTar01sYpXhzyplxwWfKAwhFLyQq7FvE3Cutu26zu35BVXebi25
ThlPK/mVQXXR3DB5VI7JNHQsiFw+LrmIWpCgQpBjYvXtg4NDp/XbjRIa+Cy4Ot5HbySgHQkZIBax
G1S4zweaTldmjb7Db1DWSS4wC16/t5vyNOEq+jG5Lvmtcy7AWdZ2RyQRZxeCxqAmjtgoqMqEYfKx
LX5Dyy3Q7CTKLmMp2de+8NrPMg5w+7u5GBf6AxRSwk200LRTn/2eCVgrtpR1S0UcAajMD0mrBGJW
9zhq6UrIs2AbKEvy9x2DkiJH1dtg6A58V4VMROhC4yRFsfBZWUXCJmFvV8pX1ynAQvWBSgEwdSbo
9nSU6q21J63YeZFD0XOg3FEyxBpqR/CBb8O3i8X+l9CFhz1103WvTTCz0bs+qgOC3uSk6MVimzEH
yOj6eOBMiQydtcOEOrFza9vAPV0C4R8eewpdhDNXhqhWX0NueiCFdF6q/c1j/n9pEVsuaBBpitab
/zroK3CpG69+j0C0KsR5wwyJ5YgWYHS1yPiA9zeDLsBzupQAIxZbnjH7KfdYokNSLIAtemi2qgMv
Cz8oPOpSY0uFM6EKZIoTWl/E2V4rH/GjF7uzx6+b1zynL1vLeUXocgUXOJ5Gf5KchtzZitX5+Uoc
yezlWmzTAn7od5wejWKHQH3llg26iPpT9eeeMeTap/OCKPkITuEch2j4KE1y/d9HHgIXYYsS5avo
CuQVvqh7mIU89ZFTTtpUN3RTomh1yAnIvErZsWW260tcxvCLtDlRa7EeX+/6nfP4zfncONvOQFZq
mfujMPI5UAriiDlBEDgvyK57RC8oXUCYcHCBw39T/cpHhBkqQh9M0zdvzz0Mgzni3pv4I3gKmuw2
Yjw1PP8zYfZg+zBEksNTUQGVJfFxjC77pl/VG7aGZfEI/QWO1UvNrDng0IFlKe9hN3qll4PCdBG9
BDQxM7MQmooN6z6AitDx/zzcc1NJ0n2KwtVUDxSR9FzD44HRQ7egynZsQCS6DSHRvn9aanGfov4C
5zYOc2wMZgM0MbX9fg7w9JFsiZoixI2ZJ3gHaRWRtScFOtktEUXb7glBNaG9aq+0RPCwnAob12y3
XJU2wwpKYD3NnRU97iXaFkW98RAoiQz77RkAJSiZkpDm7GtgMoXe0v78dvSycBiis+j2FNs5yeL7
E2NPaetD/6RG/6jPdHhRSycs3+1iCmeQpeeE1zrWdBxHox/6qMxcR4ukldJjJUD0VKmFTq5/BEVx
EKiSSBmFrcgEd3++aeObT5M3XKdATSVD2xu5UJN1W40Fn/EOljRKmO4nfvoYJV40Yxy4HdDERrnL
g2WQ4tsqyNZkC7qzp9Wt1XRnDOVhlM7VLBSYHSSUMLn2QoZCm+WviyX2nSESqzdOlNu0JegG4+MN
mAc/0zKyrLBH6CW1UBm+mQ3zUkW+XkJacehXwUiFO6eNAxc8h2rPeYo1LWuJCnVuC2cgTbWGoqzH
gAKdnam6wYy/9VY8BDfXm0rkZx/4oy105b5lMp3RACjobdH7ii8fUJI39BmCExXn8ngzKWPp7Dgf
RIGcWQ6oIbtBajdbiw3pcKLACQwZ9cRzQ5IR3kgy0wlys5DohbYc2ITk5DpisDKuzAIuDMk5WD4P
/nF2mRmWyve5JR63NWXMYeg4lUfHNClVpZSIZyl/0aGsGDv7bddc6/HkrVxdglMUnfD6K2fZrwQC
N76Qry3ghlESizl2KZUty0YHnt6oHlV3SOrVWSOKCvHE1gMZJkk/dRLKPQ3T9PdZQ/0aFLwc1eJB
j35xxDdIM+aQY4AFSPLrpjqjqjPb8K+43FLMfv4B1SyijO3ny5ELqndfE50IOyug4NlTZFvQ3Fr8
eoa4mbwopdphNHodkvsRn1nZO4+ImNHYGDNFcPx0C9QNpluKmKienh/xb5NHT18FoV5ubeBuZ4yk
PF4xl7K2ew2CAf+cCjBwGxSXZv7h5A+M0u9tApNz+dVOY+7vkEPTAsiKgLb9W9UnGo/llwV6WKr+
muoC+kHy+3t5ZPdxSCGcIIzemP3LAbA8HsRMjoVjkxhYWgCoWWTNK+kjr4BFUgo9WPPxPIpuWE1Q
5yWQu2a3Ma4QmSUfKcVc90j3G2A+ZQQj6Tt7SW6aTmzV8tnOHH+9EibRYYZB4egpocCm8ieXUiTl
M4IMQg/bQGdEmv+Pd0c/nUzrHfjEbY56GLW3Yam88a612IQOGg0osy4ZDFZaSJRaIiM+/bkiCgqQ
kv7RaEAdTPm4PkP8PVhuMn24oChSOWHa4jz9PLfJYXtRwiQ9KE1moXt+7HcMDyIzvmZTpkW0KrtG
nUszHKhCP17Ac27jZJxWAlCTw6Wo+manBen0Gouqqo0kBwKEpAKJNqkjITsZ7j54/vyStPctn/Ue
nkCGQcK9RcVeSS1lKeVPB+6LBOXRNeIUaa/au937C4fwbIOm96CTqfKT84G7pd3pKq8E8MidLEhB
a/eJcyxcd0YqF8s1MjWze4vr6iwRmXASkrwlCscLlbTSNB+dNTQZYUDq46QGQg8aJfRSw65hUx4v
qubVqqpbObGr9g8BuK0o8WYtUEe6l9ISs4sy46LI7J1De/DHDO4h6y1ECcSPOZ//17kwwFZyalcS
fYb3RDPh1Irsb3zJUlAE+YfWcQK0Ik0VZMfU6oyTs1asIFX6+9+rZ4GJ34p5SAoWfM4uNL1bVxbe
ZgeZiudkd4DT7wVnEqJBsywUGK6grmo5Kspg1HZ0fP7qXqjxwEzwt3/Tb8q/lGaEnKHy5U7NfPj2
P7MCWxavt4gajAl/m2YJIpMvPq1kLy57fL4qWD//QwlbdGYfPII3jwEYiy4fuxC7xigfqL9UZsHA
Cl7N/aUcj8VLr/Q29tpEvLvicfL7mZA+g+ewLN1cpKaIkQDd2szB19arRv2PWg3CsUsOGSyy0dG6
4GzrwNL5MDEp6R8JKlfihrSOZm+1AjHccjFbbUQM3qy0OPTCIfILuD/tp4dJSeJP2VU0qOwb8BG4
zK92sW5fA9ToSfvsvosAvh35fKEuC3bi7byDjioNlhVU4UdC0meOi8WddFNgvNjlVjrfUtR/avLz
4gN+bUyyH5FXsjJQWeM01uCfvj9y+71lLI+XvCriUvha6o2pqtYE1s5iVG7ZhfhPTsoV5F/QJHHb
PaTEWIMr6/wPeGO6Ro74s2WvMN32yw1RqYrVwglJeXlCPuvFOd+Q9tCngDhbU2W/fsA8coI1p3N7
x8LtKnQlqbuJLfv0qrxuNQWEfiKEFnWx4Ze0rLeCPfxDfHcW0W2MxLclhRQK4O7UFgaHzUCeghJa
7LFNkLwhBc1WSzfV9lnc9kfkzpIK5XTkybJ6ZCOxMG2KC+6hMre+EQM445NccWWI4Ue2c9mNMiwv
CPeuINsQMiwGAEC/qc82wTE+ghcnZlOMo5O/YcxLg9SeHFYZ6PNF9Sb3Wgi+C8DKUREP5RwAM2ru
4p1mkpa4gZAnOAIuStNPDph9QAhdgZb0XxPFwKJMgNrkfWj5V8lQQNURLiIQ8e8DGIZoA+PYopYI
PI5kjrndDyUhb6rvTfgzvzvh689oMlRJZyORIpBPSMI7B5cIZqHKJeKByhU73l/N/EZH1OcBemZ4
+k8239NYUfhY4K0baDqjDPtGniPQgIB8r6IlKuFHqt6b4LhDyXTEn3fFGQkUHNNK7YikHqxmK2Q7
hpiryv3Y0L9O52Jgo/N/6MNsAaDSMZDnpb8+sL6JgLugFEdabFG64QIC6xifeVTofvEGUAmzxNms
ruXZ1jcuP56/sqH8h0d9oGIvE42quwsaZjXVtGOjar1WzeWax0dDC8BN69KrIXZw0c8aLuEgoZV7
h5qshGdtt9wzyQq+rCTvGGTvSHz60GoqNxsY1N8C/EFQQHmO9o24HS5AFRGE2xNL2gIPH/FFmS3D
jd4RBXMeecVEpSMuHfNr9piaHV8c3y69+iH0J9/j2prgEaeTLfQIGmNIgzHjWRiJVNm3D0totHVH
8SZ0FyC3ZWhaDZp5JzALsc8cJkiSGY25GM91bFesuF5k15K2Nk4d/F7v+OUUtq627Oa677UGXSLO
hz9jIQFfh30vLbCjbMotUxTD7O9PtMV+PzCSxP5D+X4VvWxdWKm5FANvLUrV3dBDCzxF3OSN5eLR
sm1uvoDfIB71KS1H7WXivX7HJdiw+yK+qWoiSFxd6GVqWtKuWSkjdGpT3P9pmsJUpbASAp5xlMvd
IR0BpitPLCuZhVHMy07iG+wL5DQ9eQT8Ifj+TVAY9t48aWuvl2gPGalWKVbgFR3nlUQYHB42w5kJ
rc+ErwPNT+RHrjxLvvSl4lJX2/MQvRE1E/pm2Ji491EekHNGmDvuTRBLMm229yilhJKCTE+RJMgH
wjh3OVaTo64Kodi6UsoxVNMzc0+yyd91W1pRQRFjFALQ8Q5ZDhPLyAi183EeiGNAQ+XTnOd0c9CZ
vqMWKfDDO3BWVDhhTsxnJklzGNbgCy3pqOZ2NYoPfaPFIM/SyAKIOEFqVqLEKE4BJ3f6eAPpCWB0
DB6nluMDp3YlTsGMd6IrFkyHTd5NoREzkHcwLE54YP+II+w7qCjMS1c/iIAzT5xwHicNrOsq5FVp
4j6hiLYmn/Ff16dDHcyk1SZ7kLlxA6L8zHrDEM/zk8i6ISTyrWsjH/SdmRm8lbAEVCHYt48cVD1c
Dmrycsjv6BRsMbAFy4OdKEb4eGm/u8xZ7HmLz0Mxdf2WzFdZ21ZexWAqn6wvPbmr+ReW7xUEea0s
GzKpIcDjSUWk+ow6dqTfyf08a5/N2BCh+fv01fyuyb96rAM7xt+OliG9ETmp4RR07TvU35fmuA7J
RNQD7O1dm7igM6MFOdUXCioWPThTR04E5rwMUbQ0PZz3tSePqWXIq7zZ26/wr1yCyX60uVCNPQ3F
UUTsiR0jH5QXvmWVRxwqAZadI3QlsVqMrdgRQ1gtx8+l3J9BhXizOIPzWeigneQM84cm1CvJu2UB
qsxKsAsfNBOsrC+LTRQUSA3rPxIgqg1pW0V7K6D4iLJHxDQ/+aEFIgEOnjMf4G+OzOPri0mm1zIY
j8991WFtOREk/NWu4iCkNFPUpSJdKZmK5AetiGTVj3xGtzFNqA7VvK89ROdnQjAO9BmyT1n3VRX5
PYKUxfsDRzT94C9XCDvGneZMt7kyxzcshutQ69K/bIMgcJuvpiLaQxfTLwTykRxTivb3UpcgGHkt
v+OF1iq4L/PI0Zmrtojo4sD8qgoJY6HUN42+yFhElQGNBrPqVHsOuWc+c0uD4gld77UjxOq58MKk
/0EtJ8yEZeKpHhU9YBF+kWgB+yyXU41mJukpAhQFol3D2+aFcaq17AEULZG6oDd+bpBQU9mxAy24
FqnOSxdI2lIH4N4rrocx0xcSdzRpSnYIzsO8ap5wfgZebY3P11w7J1tJi3Uyo4Jwlu8qty+pLIbp
7v9jfoEKrwRbB43d/r/VN6At03O5hDvOQ0Cq4lkNthVWIL2G/Pi7K3QElbhvY2G/kF+JHTVQhOef
eodTvrcB7F9YW5E8B0yjYothqUVhwm4+Oj+wjDfeSEhZE88Gf50qi9XpnZtxHuPyVlnVXY2uqh2Z
aeasQVziD+DPbr4/nqAiTOTSWyGjY6RhwALDPE2YV8Yf7E6pEtj3hP3s0YCR7L+CV9tE0d0+HxtT
4RqlrmreIsFKz/Odcxpqn6ZsRV2bw4e1n5tQaS/g5CVRuAjdbIWsp2YDazWQ8w0AUgiZ+XLEvlEL
5lrYl4zqJcTIo6O7P33yWDWx+wnO3hvfFcQPLZEDz5IRlNbVUNbrn3+eyvZuufvF8ZX8ZET8Ocm7
M1iP2SX+vL+DXg8717WxANLFlgzG82jOTXRKC1vMmZtbNkle8MclqwWsUyhwA8MLBtSwHIf4NmYF
L9lKshxsLkIFxnwaSYOw8sM+MyV3Rt5N0/XU3ng6LjsGJlvcgo5bEEho00stx4T+aPesTkVOmWU2
QnC1imRWwxqWe24JUuUBqjjlhSlVoQ5HoWrYmYrx6Yh2ge3DKevGaLdimBcjikvlydj6GQqdF+CV
g8//Cp1ZK921NKDUzeS2YqhZY8Q0wUmIzLJWTI44W8uwu92TGbJjuulKx4xnEIo9a2otYCly/ogp
ClseMsRggUInSyqpLQtLpF1pbFIOqGGHZfz5nKScqJ1PSOvHfzqHZe6fyMTYzGnh7UmY0nPkq5JI
uL8bN53UCyWNwhc17NLHaQbIhb/Jxeyc8e1y+phRqbe5Bn6k+Sco6vCeEaEKOieZj+UyE0rWDyWk
y48sKoHri+lnzuOvwDgFmatVnOEdnk1nOveEUFTzzgeKguFRj+JCKcMd4UDblyAACJfVZ3UtESzq
Es+kc+QxCWzUpLXn+hpP0hljomybS57osxR9cwj5F8TNwTNMhLcCosDkpUEEv+KdqXQO7p+8PnXQ
83dxU5nbsUwBak8AleOmisQ+qHT2Crhp7+azj5OMfGSUHsEiXCk2VmtUl2sjp0l2EEhWM4dLeEVD
vasFM+pLA9fYBXtgyrN9jiicfo4gpjY6/uYemGwPdDOpZMdGaWc5NtebzuwmHFbxwsc8DcnluKSp
ss/RKUuCOOMHLDoGuasIE4Ukr2DOHkkjKyndMrT4ryPmpomaBq6eLXGbJwqHHm4rwSNhVIUii942
vODsdU+m5kP9SVAvPDr22TWDjPKQUBtlnHQN0Xxrnpa60eFN8aflgC884GetA+rrJKukYzxGRvnd
L87uO6J7XEhczwK94TCd6eJdjC6qnvGZ8362XejQ0uk+PYKe2jKxI4jy7zboi1u4i0alsMEVQVk1
zpxSbrhs/Ob1NcG6MtosjezavUGGgC+No6PjPuNxx+6sEpU8VTrbXQugQQT+oT+HGH114u9D83d2
4hqmhEY11yEzDqCNYjxFNI3jXFrHDraL+1Rr3+mO6dFN7OlPP0UMzheWdD0rNs7ACYlVY5tcfXQU
EHHXj08Cp5VBnF9tNxBaoNgdR6mheQy5lSSx0IDuEr0l0gaIIpKQBmS2uk4gkxiPR1TTWloif1/p
/MKaJ0Hu4FXM2Hqbj33DVlrHAbAue24W7ymYi0gPzadSdp5vCC+T00ZSiMts3GWR6f9Mwml6Pkks
DvS9Nbep2goGqQ3vE4aTXR0UBQgoI9HwLkOJ1/da7z9Ej9MtYQ3Qz6/cx3RX5jjZ7ez3gzNwp1fQ
2f2HqYDNJXUal2JkiLAvaetOXWB+yRW3K1c7LqS9Q7vVQd/EImrlLBtXf1WCdWCoWUMGlqXxO2GI
K/jjE/0kTd37WR9FDelj+E0/I/QefUlTHNWiEciGqBsmqRR53bYH73RPB5Tq2N/s8cPuqlMpV46u
0qJSeumABUUFS7Lczpzk/PRqqmyQvOdX4WcFnpbaFqWh8xz+rBwwrgu6SWtIK63XqwoY9S+Mqjwm
78CcsqZyUSuhWmZISjjdPRjXF6Eu5ggg8Q/HqC5XwO5lvdGWFeLMwTt9fQ7K5G1vAzooClIKXPtX
dIT29ZBiIdYj+BkzAxGjrFXBi9Gg+o5PjgkV+ccYcF0JXgF2a9o2vsy26D3Phhj/cFfPw1lqCU1Z
hQULt7P5X3X4BppH+Jf5b+9C+f4TiahfHe1xjpYDlqwVBZ7RcF5B/ySLZodZLl2bJaDmZ2JUneos
6gTVBF/zahG3cMFh/YOde1sPErKxO2hBoy2wyhaZjnJb6eojcoR1x3zY1B0LCOgaWDfjX4+qXsUS
yrSBn4Viv7UIC6aLMzqDUVnxubH3MIVNLDunBSap9VtOFnsDfI8EWV6NPul/3MJ9mOP6EACGNQRi
lOL0eryPImw/l60LuZIfMeYH8qvuKZJ44sQo1l8RChuHmDjs0Y1ZlVBDFdjVdk/FSc1WrCl5wVyD
688Wl2xEv/hXY1wv15yJ4q8BJ6M4Wwu9d0EHIXldcAsAUG6UK66EaXOBg1DMZV/R54wmQq0dyRqv
gl+zr3UTmLtEYlv8QMLxZBsU4Ox5LxNDNYrcW9xL57joet1lEKHHUMcCfHn1Z3jIiXc8ohfnRVGM
6B0PEI9P7qX9GfQkYwrWq4jyvAfdWdwYodWHLFBuCkYNsnzaL1PPpSucTsjbGeftOVSAj8SM1UaM
K+mtB+gIx0KQOrqGB+u3swqTc8WH9XVQo+iNT7zyoJ072gfWtwSLAtVPwYkxUZIdQtp1c8pV3NTP
OP+KAtYJInAfucTfXMOCsRbTIq8iDbZVoIO5+FpxzPxlxrYifbBWkIzrwP8uhdy1fVAXJWyYbRqD
4+cDFBtiBXcF9xykgU1acRmrd2GMPPlZF0fgZjWi+g3wDV0tXZX+P9poUJbO1URoRm15f6eZTzdz
o01/TTG6BJojDoXiHactq9EtGiOqkzxPK7vUQ60bqshRsQCDKXsDl/14UST2OECpyih0UuY1MPy6
nPwjAyIkC+UU9+Zdd0ukGKs3APJsR3igDfUwxCA9usCLKub7ZWG2Nt41DiJfXm+EvB21pQo8iFht
NId5nWVyfit3kjeDQAVxQM06ybsQ945n1ViJxjSenRfgka7stuGVzXaRpfrJEfWbH+mVeptTdNG3
VuVEZ6f/Pyt1cLVQf9dGqrqDP2ODDp0m+oelwj8XA3ZmJhuyQ2sES21E91DvydtZAM34532CaApV
UH/mbLUElT7YLRyzlVjwmYuwplC4cebTr91tsGvonjLj6BmLVmtplEQ1RqIbtaLfWaofMXHzcbeY
9DF81NufgUrfqjflSw4HndM3m8UhZngtuQdj5DG1IRvgNIiIxLvTQn7XnYm3tLtz6jI3MWqhkMcm
9PBA8heCbvsu2xKQ3tNwxcCrM73YcYm5dm1mkF9o86MnbKTuCPe7R1GsyoKQ68kCwh5VUSl/xuJG
TL1DBCwAqtq1Uhv8u0PKv5HmNOQAoZsK3UlR1pBJ5aOFp+XXtbwHanL9cO4i7QiLAjYb8l5pZuau
SVwD5ozzqLTqX27tZcVs7KABIPkK0EuCQGEPK6pet57FPyziH6BzWzcGn66Y/A+47nyerjbgUaXe
419eDKZJ1AJ5xa+XCtOl66JnZTlZNvs/NxTfk7yP+9wNU0D2WYHVB3zULvcBhD46ZseXXwji+sgS
uWxRQHO8AuB9ACVemofcWjBsna5bzIzLXntDOz9MpfGE+Kf4ug1FaIwxtqUQ5fbCCnHXvFDhEmt0
w/tYeKindhkntQUPxQ2WK9eW1bjc3kZXCqHHzxAHCi9uZCuPGb2/RsWH6i+5tpgqmm4WvJU0hYIw
NLeLFOAEL5Q8D6XJwU0uG47bIdmQ1LX5yQfGHHL9De2bk2Sz/yd8X9yT/c+0N5VZCxt5mrHQM5Gt
pAwPvzgSz6dL1Ief/MEaYe4Eskzl0X2HIu7RYFPLQoWoerV+PIbhpiwDkEELm8BTC5Z9edCANRtV
6zSd8YGZnXYVWAZmG/of47dJP7gNJQI76PLq4NoIqMcXtBsyQLYhomBZzeo0i6vP2gN65yFyWKJ0
o9Hr+mUNewZy4BDT0v4poZOVI3qYKw1KFcYoTmfAV2Zc1puf5gNlcb6bK0cNG9Mi2t23NbCpCx1k
jpK7zH3sN2zdzlDlC57ChM2wgQtYQWkiUKAdTkgqbME2+8Lv3wpLzZpAL8w5rzKSQt2+3d+dZKmQ
1jiMGVhxj5xi8Rr6ZlsUilpAHUyU0dGqJnjxJUatRChxzL/YOSbUCCl+7cbOrUOa+WKl3HXPII6Y
nFB5k7FplPvUQ1Q4musVCDau1es1zL98kwIMSIvA4kGxKRBqy3R/F5jt+kJLTDyBiqfhGeUF3XkX
8Yv7UYY5UH6h8TDWG/nR0+O/mjf3JofEd5Rjld4ycYpKKnf4+I/yNe3oUc/W05UsnHJn+ClevheT
yPi33/PvlXlVUIjNVStKcgIvGMaGbhXjyay1YwnGmdD8DwEjPUm4GzShCCE4j7gM192QTk+QVBnh
umf0zX5FMeiD4xFLqssdEMqHKsUo/hKHGFpmaRwI3b9L3cdVzpyljpDs2UTCz96/18/s/9k5Vb3l
PIJoHluNeunCyRaJnngaGZZTqwb8trmv0Pw7zc/2ncmixfR3zS1z4+EgYbThp1F01ysVRp3sjnNv
adEa08PkxP8F3iwDhPRSIzN3g0odfyTVw6B9EUWBEMSMZR9PkCmvY7vGWb5h4TwoAT8uN8g0C01U
2jMHLyHYcpLBqDjNRvAadhupIGdS3Z+i464XcY4jwo23AU+LnhuKseldL2yrMg8NLvwkxqi4Ufg+
wTaEiNDpZMjcOgVKYFk14t81r5REp/Z1XbhhOZt0L0epJgXpZyN/rWqj7YRWmIX/jWRqJOGpqdnn
NLlxS1VGKO03ngm46mouNY/m2fjpH4XwtiJe2Buc/FP/Zj2X7GCCOEvZrt1cYsU6yh1PHYB6B4Id
Yl5gQoFo4FpiPIYFkdEf8pzTZY7369EqI95/DMTTuL8td13xDs79SmYWN5PXga7HqLvEIuN91kkL
U38uv1F4pOeioYhEmq33632qi/CYBStczkYfKdTvgAD6mhuWg8Hoa3VFlx0LQaJdcO2otZ1Ae9wP
12Kx2IHnXqcm7YGupzrLzhr61HX9aLULnea5Gp7bOzOaqyCEI0cKxQKE0AYkTbIdVtziaMslK6q4
8cW5+hFE/03LsM+ZaC1ZOL9ODGyl75kOx079+m9XEFAbSRujDAmIoynHbflw++Rst3RXnyt+YWgp
vCJ3VPrN+2DvamneIhB/sivud1agnBZwe5zxCr3U2z6isHXfmnCllVsdC18u5/k3YeHlCiFQ/WhG
xY5r5ky/oBRhGZAwirP4/O5Xt1fvSvxGB1pGFqylUW1lBbmKe7+9YjadHjC6/ANAj7i+Wk27Xxcd
onH6Anr9/o4wMFXfwh7behCDnaaHnpIePfBcny1yJmbfHeUevHwj5uf/o2HxPWjAG8l2THUFkdT5
ISiMvMAdxes7CQGC275S2Sz2t5aWabTLN69EbRJbD/jZ7mv25eNEoXydZvuGq82AWSSsQdRpE+cu
xMAztneWzB0tR91oA9q5BbdeKjR9Bdzj2bfZVMkPa+UjpuuVg3i8VGP7QVlIodiG1lsuTAPjKvnX
HhniWnjaWprff7BbLQevc/mO1qD7XbEjluQ+GJqdbYznsX/PqEeaGJS1ToX/15Gh8DQQ0LeplraX
ARJFsKyd+T2lrKyDEUFGkGsqhs5Fpy9t57PF42+bRlQz8gBcYcBn2QZsa0R/mmEYBL39PjZe+fVc
0biyQPth9tzpkJMTQGfNvQMaBpJQQ3dUl1eFErYItQEWOWLYiRm3pCa3K8hZlx7vnpHMIbS/QPGm
B7/PAGwCBhH3za3H/ADqQjiQFscCjLWsjF2veZ6A4dx7/fZZ8dCh6SNIpiL7TPHarTe06PsWveYP
kXuclpb7xXK3g2PQzxsoePVk6ISElZTfwEj+0MUGXHZI25fJajsBt9c2Nlsp5bzLMQSojkF8ssIB
NLyWCLLxK6XJRkBNLJgIQg3W2KHqFr3unKUqZJO0GgUQNcnL2jLiNE9Pq7JJPiPz5ry4wre2gYze
Kr/0NdVO3AzDeKrz/MFbxhV8DUyxhYGkt4EcLyaZAMOYglyVriUYlNVPoHhCMjCc/lGSRGvKO6Fs
EL/+w499BkuU/m0E+0NdPl6Rht+x4y5i4GixFvsv+XsjRYcfo4KjKTM75303tY7QVhp4lhSgiroB
EoqXVl/Lbz6bYCHnOM6SbFDFDFdn0zqNkpzt6zgpr5NCiqbVk/VnqedcOrpRlDAqw/prl5QWUR5z
wUS8hio5+lq15nPCkk5E4LjZNaUh/EZ7ZnV75b7aK1rhqyONUR265MrRHTLYoRTaMj6d/SxoT91k
cCGwazCLa2IxWjVQcri7Pq7gc6pkYV82D2eJ+1JHlSlZdSHKepkPaf3jN40/FYl3Z0g9Avpmrrtf
bgd6sJsdJ6h49tTfoYjm37f6y9IVMzzkKVwtAVGAO35F8RHqN7T0wMCYq26o2KWTIx7YmXW81fLY
6KODkfkGSf0feIO8KkuKHWmTVIn3s6g8+R6dVDhmYTJLhkcP6izhza6bQoNPYrgRHz8Th+g478Ao
SC7KIUGutoXWjJo2sjnybQ56RRQE/f+dCeyW2PrRclK2RZpMYCcvegVrjrKPO+0VpbzTTXI4HBtA
1eGbbpyBRab1MSepSpPs0Hzb1/pudpY5dotGpZKmSFsw/lVB6l5CA4KoQEnVAoMD3IMamuCyMW+g
h0Tm4XBX74KfY2/OhDFJzfgyORrum5fDsbsRseOM6ywA8gxAgF/ZBGs/xa4JRUmM9tofoYpzUUON
ECGZTR1SfCNZyp9ym2HOw+k8CxhrPo7CHPKBhsZHlfRmXm6iB5vPLKRRMBIPtm5rg+n7ybjyq5qa
3hHlA5kjfly+JvadQZq+JD4tlU9EJPk4Ny56/gRen23Gev9GlcazgGGKymvRFzBaVWfNSA6fzRtx
sLHCcSfH94DyCVLqcPkFFJ5E+Rn/EmO3coW+RvlzHhUkfn6r3GbIk0zl2uHLz+tgvH18soF2zD3T
yGB1Jxw4n5k9gGHo1H4oRMUaDK/Kz5p3Tx2exOYwYKQz1ud2hsiLCHKMmaZnaGP7LLoT/PGsFpoO
48tDJ7Iq67opXVRcNPs1ZyqREpr4uyGxb6PufsGc6V8TRGPkMWBjSWJ29+woRkLB5Su9kuzMvCAO
rWqkM1fJLMKrBgfS288zYhpIEbim3lvJAUc/u1CO6Znu0nUMSv/rZ8P7ruU5hLKJyP+9KC8Hqx4F
WoHzcXTq6dI9JhWI9ngeTy13ticYlTDDHFEgxH9LGWU1UaibRC6aFAWsnh1J+yjPC9GD8isg0coi
vqqjItAGjElT4HH23+KTlBaIA1QcsfFDsXeRWjkJptn6nBA7Ekdc0CJIJ0oFCzAvqOdIZLFX0VaM
+CvOjCZqHMOrI2yOuKOGlmsPDLFzWZmgCxbVjL26P6gFRUISMBphMA+jNdt3ecBguoeyxmVcnMn/
c387aN+gI9V4Dbau/aJ9WlvWtfpMeJXnGmal3SGaJLJZJBFZ6fUibJrIsVxafwKZBhPPIcDfOl4x
WMwfY+6CSKOU0UnmgbVXUTXBdknz6tPBTNQV6bvJLvgTe7Wo5+CJK3WPptoG6QAltD6hqC0Bwth2
cLgFLycixkl518Gj+ROHcWlWJ805X3WDA27L8Q9YcXXxRcoSj0zsVCKtIF2ykrxhq7MyzpOsjXL9
NXDt0Y6aUpiIByb+AFj8mpbVxeUrSZjIBG62ryB7pcYiUUD7zeo61WLp0GrSVBF/B5kjezKwfels
kOzqqxMAZezGJ6Jd0ZdP3CBcxuA6V7Zi+u27rPcvIRXRIcDBjEPtrQ2OBoA9Lf5QhJUW9pGLXmzF
uYMHPM3Ib+eQPHtBl0NJqZiB7yOviRFQ+q2DHPJ4gdSpmnvQ0tkPO3sSBXKCj7qa/iWZv7zwH6jM
87sWVRuFBRssYb+EQQS1ZBG+vfrw4WdLft9izkIOHWcV8Qnw0MD1dvN7rsRBjBdGXCoj+T3HVlyl
9YHDZ9UDcbqjV23KIx86FHWcE4qo7ytSKKjek3ONKJ1pzA9zjZsJ/bPtpbVlqpZMKEFLShNe/nr/
buA0wDGATBv1+RhM0FFjhop4PbPEbzCSX5us7l/94XnbPIUDfL/DX4L4coUc9jvBH1mwvppzDQQw
OHzBZ2qscb2HjxCWto0hmpcv4PrU0doO4o4Bkr8y0i3uA/avPehG6fR0RbArVGloLmlpH2ieKXRQ
X6loLSILxxMuEZTvchgRBjA/iEnegkwEPxrwaXnXnd/P+7bftbhA0aRoRMxUOiGEmuQU8vMrXyXE
crR0FK7Izd9gaSoiM3Z8LfuGVzu72SZRlXtBewSSPCFmLfpFH2hTxKKdUYw1QmBK2jBBHlniMb1/
t27NQ/wUrk31QjjbVWxGgG4+9C+MfStgkcO8bBkFCb1WPn7JHw2nbCw98gye2wJUl3uNIxuVvqQH
Dsn49wNwQiH6ZfD2jghG9jdr3taKevOPeM+IRJ2j6mYSwQw6eSOR4ix33ZOumi2chPk7fEYGA09V
PsF4eRKo0bzpQ92aUXY9VU2rE+MrmFSNVPmDHxSS90EDfT3Z+gwfQ0ec0gOHRNvT8M4hWBv+ENLS
ucXJHqSs2bEe9PMna6heDg2NjcSJP7VFHif6Mg3eZQxYmJqMe+1RjP98BXzqXWGnqA6mtbuBXwbN
DnnwkLwysvewE39bl9w7DU+a/cF5HMVGuMZkZYUHNXCluwgLdAsiXvhqH+GMIr/srP/+MthpS8T1
mUg/+Te0QvTHny52LYn+PFAeQowkzySI8DXuCYiodfoi17/rPmkCOWy+HiV5S4mMMr+NWhT4Ajbo
eHDXy+3TDAz/v7zzApfOVX/jam5mceWshoL5VDslIcwIb4v6tMck/sXEhpG69bLf/aM6TNmMDtxW
0vGiL4hPxAaO/ceaaHWaFR/jGxyCirhuaKF7gnyVkBjBs00mDXcxQcOE3UmbU+8RIBQePWeQXL7a
xX0ECr7JLx8BExyuI8x1bXLxmw2QOq39GBeVfwbqjHL6bRCOwXBE2mUOXFy1pmSf2I5cZugI8tQv
KTzlzxhEBcShLqEAbjwVcLdzar4Dvd2tsf4CWJdEp9RFNss66DaPaz37/j3Udx7oW2yX3e3ExsAQ
0rz1DjtSC/JoQC0MQ7M7XdS8vGK0CsUgr+m3NdDaSgaN1xd+YcZaB/AidXjYCKM0lUOMiBRtE0Dd
1QrFNsTtaT5Gy0mtAkADWM54pXMU+AwI72okhxIMECfSyT2XfYR2jT/Wy4pox8SWHdB/Ix2OwWP3
j3j4iusozijDO3x0pFfgZMtGreapK0g53Fc+tSzJzyWaZ2lh7a0l35iZbLlkQnChseR7AmPwpLlH
WKKx7pBlH4d6IKlvAst+mtK3MVjJ1R0Wn2QxeNrY4m2AGQLAPwIoGIRtJQVM1nRTy1SznMDScFWI
K+MZG0vMTXJqR4J8gyzGK/VBpIvfq+Tqx9sdKE9VPNaXGh6bFjhiXLQDbGkcI+fpoWThOIeOo7jb
1lpouPAH61+HuurQa6h0E6JBTQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
