// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Jun  8 13:55:43 2025
// Host        : bennipc running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/benni/dev/echessboard/echessboard_vivado/echessboar_vivado.gen/sources_1/ip/instr_mem/instr_mem_sim_netlist.v
// Design      : instr_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instr_mem,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module instr_mem
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
  (* C_INIT_FILE_NAME = "instr_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
  instr_mem_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
0KDu6pIHCjg/fg5mew==
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
