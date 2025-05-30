// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri May 30 17:58:27 2025
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
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
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
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
  (* C_MEM_TYPE = "3" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27136)
`pragma protect data_block
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
AgSGvA==
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
