// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun May 25 13:01:54 2025
// Host        : bennipc running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/benni/dev/echessboard/echessboard_vivado/echessboar_vivado.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27120)
`pragma protect data_block
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
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
