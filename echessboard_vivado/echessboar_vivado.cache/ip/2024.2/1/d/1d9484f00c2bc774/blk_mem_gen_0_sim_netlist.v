// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May 25 13:01:54 2025
// Host        : bennipc running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
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
  (* C_FAMILY = "zynq" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
AhmMsw==
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
