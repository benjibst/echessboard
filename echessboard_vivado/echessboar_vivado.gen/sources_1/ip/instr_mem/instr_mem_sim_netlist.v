// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Jun 14 13:45:21 2025
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
/PZrWOIhbtcoCE3qg0s6dqhBLq/xLDdlCrK2sDBYXtrejK+EV2qCLluosawQAZx7GFg/b0gyEQPq
IIiNTM7E6fpxpMq/jrOxCi5LUhairnL33moIGjPfuHfQKz2u3HNj8fOkWMezXgqYWDU02mhwzqSJ
fXlrkwPe75VwL738r/C4JSdxtzotQQgK9n3uTbGrrRriuew4/DQx8hHHMBk5yBTKM4/CHRyq4Y09
POu+HQWD6iv3kJB2Ecj7KykUHd+t3Pv20Bqz5+m85KMOtqC0i7biXpfbJwP2dSPUnpncmEh3/eSf
/C5+kPYQzvVBnFr/2CEV2n0BGLW0c5nkbuo51WboSwgeDZzaNsQPn1dfzLAMawxs+wrPajnyzUlQ
nFxoZN083OT9A/lU/XQQXW+DHEY7tUPw3XONb2w10TsDbqR3Z1ZJjLWEZ9WghwDQhmZo3+b6WIUI
PhwxpNM2zCST3pK0gZe00dA6Xls+ulpdKleT5ePU0ue3w+GtFoUtrWm4gBY/8URvlk/R+JD2pKBq
AzZ7TD6VEsDk3BokDwB350dj8zhWzSEc+yw7X2X4/td6jZ95cxUugXWkN7YO38uhDLOxfHahl7sV
5Z8f8UTSA06w5yUv3NHPeC03NyvWiTCL5PbWegUbZXSjYIHJ8G9I8SecWStwsPnfVWs57egXqvO4
FJOrCP+2uorULJe62YDiJH/SIlk2uCiIUVtu6pHSGF/VvyniM1ZgJKwAEBYmDe+ciYjke/kTwsHm
MCXjVOronH49a3JanzIuPA7+LbUbDvXle3+hfn7J9uRWi8k4sFMLwMT/wIrw/kjWQDWO7Vr0OSMl
76ERmpXlvRFpQiXJys6I9+Rvq15njXwPGRYyIc3GJ3JkSasihwkn+tAWTLGTVAa102ada9yKkGLZ
oHxQfO57cASe0fPJ+bMKv7/DYg1xLsKlibaF1+F8/1LzCgJMDQo3ZY0rf3q249rVe7dc7RSceorg
2hk7KzakJMZZcKoglLxp6+IKUMIrm253IccR8EZEFBcI2thlRlLvfjnJ99dRVnZgE9NXFI7VqUsc
kYQ9FEYcy8pJpsGN8xH3OIP6dGkyVzEpDYHTI0lbpglQG0vHHWYLu732v1K0Wt+Fo8d89Xy1F1R1
SFKk2N9F8iNGsOeheoZo99plRxugDVOFLdkqES3N1ZI8BfwTm7m75ij7N9EoN01qf1Uwu1cwv3Je
wZIJ9KJzXNdH4nu0ioM4+7Q0wJZLqjl+dTcdnhIq3RLdDECt4q2TdzCOhjWgYBu+mbde6iyTQyHX
eWGVbC/SVOSX0cJ7Jgo7Eg+kHCBHxEOQnF9F9TFCY9DTGC709g+eH6bNteRwtvHdxo8H8/3giBW7
nKUxfSUZXFyxQehUfg9uxwHDCcnQtbKro3ylVXDuo7QVBomws7SI7n0CRFm6a3M8chbOwacF9Pzw
eISE7EBC1xEVr+jlOKu+vQmWeeGmiP2dUkmCLwYwBLUT3Snxuxgb9T3BkBdXvs0gN5AqAs/kYH/x
ggTlmtTsX7090O7PFV7YYRT+6X1xrOsGbY34emCzRHvfe6M18dD3bXJyxmE/op20BxeI9sLC0yHJ
87JHEMtH+t6aWMR2qWJ3HG83wxklt8hc3PGRkllMoDAZy+ou1nLqwY5cRA05+rk/84tmUuwRSc3B
AdgnzvXWiHiYIW1dtODucete36L4yxao120MTb+JL85FDnp+vCtjzqSwz2FdMN2XS1VAMFUYFk6Y
9UH6JF+mVncSFkzW/UAPOgh4A4IhEVi7wkCEQofc1jLI/HK8HnNLRQZbg/qXDXtBXff9huURqMFN
AxgFJjN0W94tkWagVQBvGs4EHHvIie5Ftn/Et/RpZGRXC+0Cg5RWwouSlvslEM2VwA58L9AczhGO
WAEIOi2wB6Os5UzAAkfDjFyJ9dZibHeXw5HIwEUWBA9cFkhBtACxN2BOKRa1H25Dw8HH29cT8G1j
3FGKixaJD1/JbSq1wtoC/52Z9Td9I/jTKDnExl7fLxQm8OzW5PZl8pwMkiH3Yda+IssjueekHKyk
c342ObV5Y2qjAKzhtJc6am521ppqr1kX3KgJjkyy/5g3ybptYdgS2T2SEzmRXJPUE36YMuXvu7Gh
behWbAlOpNUxdYkbd6CJ9Smh5m4frzQ5RSJEtaIipF7ZnD2fv3Yw33YKhxJ/GGiM5MEA+qPwbiOM
Ldym3Zu33VfpT7HevS2nAfanChdnIXN0R40+hpAN7AttjKTe+4/3NKsmRwR18s/Qmdd6IAkWERZT
yJbI2HQgkn5m+WLyv3TcA56mf7cmNDKgLD7dQpdNLEG7+TA5GktlpJ+FxrflaJa6JVzjz5DE4g+o
m/zVB5DY4M5WbYbs410Qgd2esBKIcPckXvudOHFTJ6lImc9vibDfD+G9IzBfHAnMNtlEfxx5RXyq
BoQd8+QO+3IHHvqOmunmbs6rolYAEBV+Y1EDRDOfjSZg868VJ0AafVelopG8FF6agnR33YgHezc4
md1bE0gDd6sSwSuzpIotbhEQIJaZvD+Dx0Rnjbc54lurdUMaLxyAej6l2XX5cHYipzOIIP19r3r4
D142crDo4RTneanRy9Wl3nYiI3QHldDPsJgzO9pH7aSK53pakEB87y3wwypXyKC6ObdBbXbmu0IV
OCabJfY54exd6qclybGuZU7cunro8LR5IwAh0UTtzFswJpXDudEB6XFMaO8kVJzd3whJBjbgiZhU
TBY1pzbBlnF2gW9OGp6OR5NwCz+k42MXRcpG55R6tb4xr268AiExE6j+J3Jh17HoGmBuVgnCgdzC
oUR1RrQSzPYzlxowkzHX2KugFN4ZDOxiPAfkCAYfcNR/9v7ws0TtRukTE9YRutLr1buRoyuerZGd
HUTAHPYtAt4A4zGIwPGVblXa0lashArTnUgQpW1lwtdGGEVLZKOsOVyFp58HGbHXdiv6bWa69iSf
wd3AYMEeR8q7FGNn3+HSBY3tyjAdpO+RXRvOJYKl+s7XBG0igoiG0VkT/VyRB/D9dSoaLHnbxK6N
1TlWXr3pF2uKUyHhL90J7DsiEaVvIx5dYt7tbxcb5jyfIhkj7jrfA5rLhrPB/S3UwU2O/3kLVz6D
NpUMEt6zGU7KvQS9Cy5JPWBZAvereqATo0MG4EBcuXkvd32lz59gv3XXOPMP8pF9rS4kQjuQIvxx
jcIku0VHKrpJ5Zo/TaPzAg74DzkAnDLwPPpE9xFoUAd+AsAqBvkh+cZGDReUM12+0YpdcKtbI/kc
pSdH4arjolpxvNSI2ui1wrW97qm6NoSCl5U6ZKfnxCvYvwA2cjOdXQ+Lc1beV+nrwVLBgqXe29/g
q37h+dpCjyg1P0Y4dLS9Z+sJJkyf+D0Ku4dWjqscGkrThjHHZLZcfVvQJHqhusN5DVlRlgB3WlOz
4Qj/dpo3krJVvtJbGT4OUgl3Mm8WVo773ufWerrTgb6Kcdg0a5ykiFJHGzuVeetnL2pQMD2883WJ
f0+6LHJtpHk6boHCluUK0BaW87pA4eP8qsr6YAE+gm/sqqSpd9xrMe7Tix0p9VXwdQXEJRKHu90B
4suto3hs8C9t/fqKYwaJ4phwmJkwh3NJvWXfuy+V+IfmOzw4psn2sxnADVHgpNLrcRbXniz2Xk0u
gXW9xS4hdKWwGdgW+6BvSL+G2d4Qg3MtUCiEeLJl1ze4EN2cO5dTAZW/tklmPlRrplj07Rm9cOsr
YCDVRKJMlvCsx7XFyAnhrSUFtHa30dRitxRlJtSHmGxTsJUKrxr+CQbTcB8oekJM50jFrId9fhy/
N2o2hPNMmgdgCW3qGq2dCU3olzfZqqAoPxwZyJlq+BpUkYaoMrTwbTKNyQ3I6Ft2Qja+u1wIzWIg
3Jy1eSssURgObT+Ed2g/x8pMM4yk9frOMbsIAHobvnBnsPrRRrRSjdW96EkJM2dvGEq088m219sO
or7tiGyn0tQFfZCCfXQVQUAdr2DdNCoG1EJ8C6+t7sy3bYQ3/e9NOr1X1l/od5DbzApYWDR4imRL
gik/brzJoMWTNd2zMYOqPhoDYWRm8fe8DC4EMb8DNAXtqk/0BjzLOWRfCpZKSvz06LgmN4fQzDFd
p8EyvdImJDKu5n20xUcP3/K6K5L3X8fQxnvCeOKfH28fhqCEkZEsfgHflC5Q9mI36NrdNe3CNtIa
BvQx1wQH08/NdHt9zzbVuzgFj5r/d/yf4DXEd3aQXY98j8z9m+PbLVR/6MaQzdS/zMckqjBfXEnK
lRxY53zIxyHcwPyQlcd9pA9YKws3JV8iBpOPp3mvKr7jiUTw3XGAUd9cxXB9Gfwrqz5OTuP3KFog
9phR6L/izkkmsrvtAc62xuPV/U+CXM+lk1vZ1W4JG0KLLxSUstm5VcOBGwG+hIk455wO9C3I2EnW
I/8c6HzOrLzXH1lEPPx5h0Oz9Oc1rlVcoP2PVLIsj+rTNefqCi4JZ/8RWZBS15kNI6tf4skKZC2x
N4weT/D6VnZ/ZroULJr4tn7RKSMgvcldScUnuOhWkovaLQP7oKjs1Lmw1acEPhSWhjpr3TeFkLaK
StBP14wZ3/qcUakwQsIYEv66dT4KKqbT/ORkLMiDkQ/o4WV7fMRa1R15CJxWQkzTdtH9cFalnrC8
jL2YFyB39SYph5o4r0UkY0zEIkrfnXTEs/QBc+BQ4TwBeJk29X2SfQBZXoWLeo9RBkTUBueaosQO
p6q5/A2syGWVJTBTjKNfa0IhrEBsey2s71WBmqvPTcWlMmQgLDauQuKGEbcIZGQjTw+NkLRkdYKR
MG1LAd42xcZuzydYUbFoABWVuvqFpSDwHHxPmOzi0F8dTrA4e5PRelIdIjGziKs3zbv4GnYkkoIX
JulmtMnKMrwZkXAX7NaFf+U7TutefYdr9s6VmMloKOntKHN0e54O2Tt0ctspdA51JHfg5kOx+nVX
+EpDWbNo3tXPgrrw3dq+x7w3A3WSxMS+7OJIwSXQaejCOR9Ze/KGHRLUt7NlSSKWRicKFfeCOfC9
u7doxsptBGYTSrEFouiOaUciqzkODjARKqE0p/LDfrkR4g28BdIbJa9Ym9GASyHl1XlQ9urROfNZ
+juYQo4oGqNiTm8NPS5rk1mReJw246yU/rlKIylD+n2AtY+V1OVZd6bgjGFjDDnvE+tngdcaMKh1
Lcpkt2WH73I/kgT7YDxreW0l/qIrfpoQf+UkLUyQlVSk0Cv6hvJ+m9gjR5ZZJy4cNYQzFQIVUsFF
FBbr8Gxc2547sPyEav57wK+Yn6nyQGf2HyjfYikeON8fVKI/1rL4LAyJgTN038Q5ux98It2PYGQK
Y+c5q7O+4jzTp42/suS5WH2x1KlU1VZJPaENlKa0/DFWVP2YXFA3lSoP8Yqm4fUVCGba51NFue8j
XtIH15eCoYY9KjwSPFUEmHb2m8qyzuiyu8duFPKQ882EdrEgXd7k8YqtcwfukydFphlDeuYdgWq1
pc4UfF9F0edPXFTTOnz/DBc5hrOLLWeZIOANNPMbA/H9nQSAQAFPrrPKcf4H4rBhnBu9edi2BpAq
S3/+3obExLlxO8Q3KxtNt+KNrfHX1xag5mUqnuqJHtMxDH8RWEURFpO42CW59NxC66bLOidkGFLi
/V9uP0zHlhuYKmvDAYAOt4YcXGBNZnsUPSfyHUSjKKXR4zpSUuK+9M/DFrHFZh6BMs6OplAWW9Sp
0Z9KKQyCfO7jB1GfJM0Qn7B7XJiatjwIX6/c27StWx8/UF29aBA0G1KFPQxuTwJzkqRww6x+jw7X
GNj8bsS2nbRQnhzwUfSpv5e5yDCykaiCd2Oqv6i8D+i8bhouVIj1QDcDNp6DeRF6upjfahxMXqTX
4Wgc8vPSUIzBJaxqZNDgvYl2lyWnFh9PqWlSpDM8aBbVVYHxytjxW55/UMAVdUHkRSqYxJo91YP9
KZFjWBe2Z66AxeSE5ZzIk6KcHmQ2J07p2/m6UUbCojWroWyCz0MY9lQ5hvDN/R1Ft0sFNYlLJbeS
ZD/zDYiKoroF63flP1pyEsT34USQDS5hzQvQwILvOdqrVZH5CeWjgjPhJxAcpIx8UFpBFRR5lfPu
UmZ8V9jRcttVSsWO+3NVkjodgo4RhlqUNYTQv42i2stHCx70ERq0Ss1sfnTPbGC53Pz5/+sNMocn
pQrMoM04HfXEWGWlIAwt+EFMyKKPeiP8XF0ykyzA/AxC9Yq5rrvxBmyYpkqpJbKXM5xdqD8aTYTA
A/kKva68bMuW7hhaE+gepndauy2eiCtdWPHtl3Em75QySdMhPhQwTz8cILfdsrpDEubqeL/lqIP2
JstwXzUS5Biz4DxCo0yriLmEwF8dudiweDWauiEDIppkiHIVGY4LI1/r8VRHvS5SJrosi/MfVnyh
Ajf6EPlPFNJBTS8COJSdQ4aV2U2VhH65Vt9bF43f9tvss3jl8YjCiAYALThirDCn0hiLkw884znl
1zM6oQCAvn4HHwzr1ICL4QNXfcUFqshtnnkuxdMx2k58wxelRVqLMuxT0BFG7Vim64hKO3/AwCT2
unzqxCdahQT5XAwk+Eq5MN2X8lS4yZsYnsD6Zn+aQaTWgOI0zzXf9kUggc7V3FDaaFyrDirs15Bz
DT0n6DuU+ucYiVXVCM1Cnd2rb1ccizHs7iOkS65i+zeGHnwEbOtKLrbMjoZZLw1eyF1IaEVJKr1F
eenN3mzt/IjpW2S7iwF0lP1SWzyr18i0L21DEsM0mm7pGav04+T+JnVgNeVAJVEFRw4DZJVbIrc3
ngBZEnOIYUXg6/l6jjExqd0XkGL0Y1cQztL2vmZkpnYrbtjugB3yGfsCvbAjyayoxGyU04jicMjd
MYWLIbUzvJnMRF9lH4tJU/hkSqwQWTEqejalek8+cPL6YBRePsRLz9zyk6PWIx6ncmGxkfCx4ACC
y1+fyFYLAgSoenSz5+4dhbtcf96tnkorO0RPRwRK13I4El7LtCj6DUbzSMNg8fY3BhNEMk9bduDW
ZHSL0j8PNgFyklulrJXsiqVQt21t9omLNROGeZSUD3EJuJeaK5MtHulISaBczZCLhRomTNuNYoAu
Wek1d6/zDOwVuVWa3hlyv0UpUiVQ+IWHf0ahahMb8/6VYDCuhRgMX0qHJE+syTX03udhte9EDKYM
AugRZUUNUwqraMXNjHx7kAfOavBldEmtllU15xh4mJ1MwDjeVmngd0R8FlNVOs5clLKK7YzKxAD1
8ENoTR0HJAA/jJzz6CBBORcnifs/mpViJtYA8ebbM6Naeyn0wr7KaxjsVegHdYb/Ayn6PvO8zr9v
/RJV8FjTLEmEUMCGVb0CWXHeknA3LjhAUdku3GSE1VRl4U/95JEwy8TwPeI0NsEd4CxSs6mHedzA
bv5Vcp+2xStrLBMMoEZVtRsSFhQk6RAfBTGCzwQYRPf0xjzrKJZoWgwp8dARlF7o/YYlFj0jNZBu
MhltwDWcGZlNbwEhEgyf0KJXb7I5Uh0zbwUqMSfI1yyljfI8yOIJR87eu494GxH1ncdGmjAToysd
7/mw+7lRdXJSvA1pdDJ2Fs0LApSeNAQM9ciDw6OrOYhIvf37ygT3ZuUr2CP23IQb9S2WcBwgfnNr
4ocrvkB56rl9aLhLbFosO02uvgG63102QPX/iteBlSuw0F7WBt+gRJRXJK3BbCYoym433yIhKkFM
wn20N1o10jAgZGAU5+sYfcxbx7EO4EQJP2hjIZHxwxsenl1SPUDck3bXRTmtrxD1Pc+8HPkNaK/6
77xGsDJUAHWiaM07uu9p7CUrCZHr5dmHhjy/xrz1Lg+rF2r7A3oAAshrN99bs+nWTGL8GK6Q1XLX
h7paoua6dkLeMiZBZOEtc5qsfr5pbsAi+0BYxT5zD3/ukrS7+DUP4/RdiHoQzSKdWUqqMiTyi7Bm
aNZn596Qj1OHMRvKf59kbKkCOyAgG10BLdQT8q+suPGR61Nw3xqEu6QGxWMjdVvUbi0Yj1qRjxo3
wVF9zVkJ9eguYyt2gmNP9bBDOrKAYKUmHaVZEZJQVj2xlBDB5d02AxTZJw5PqBQEhPHhOKE4BmBb
dJnCq8L/zIPne+66av+BlEu8XdkbxFvyEZFuQNQGabFbbp4swa1YhI2a/KJ6tGNDWEvGAM3nscvC
aDc6g+9Ou/EiNpNwXktgDxAPP3FyN3KR+D3r1LIitq8nwzMVg/cjT69DmvOxQOa7ksMXALAeA4+n
NYDWiosU98BuvVRGnGRI0gHEIoI1NPO+k8IZL33fr/3CyAo9UkaFyhBMbGNjyzX4nIsuZ2Cj5tuY
hWzh8criFMHuRBvMRX2N172A44c79nlVhiCzJaEOFPV9kjY0dx42zqLkbee5GjuY1pmkWLmyNn8o
4kFQEyzUVrNy3IxsSLDTaNGaYvLAy+wi0MMKkWvfesnOuk82OYzGEt64oWnalbwDf1BjFyIZfe+r
8N2C9NMkaK411mv+UmQFxyjTzfeiU9vQkHjrz0XeDzAl0xpmYiVd7VseiGT8imUzmsc2+vJ1KnCX
wVkTruMkzU+FlgGR8gi4xxDWV/YH6PXsE9UC31yjggjYL4Eon5IY9+4jGuj+Fv/pj0oGP1i6clFz
LY0+C/WR7CWVpdWdmfBxuugsG6Er/rp5dprQN5mDY/Poti9YZvaxlGY2TBKycn5YnfbAjtL2BnT/
xH1TbqbTx1q2FLaw56q50TTsSOWMMpog+SCjvdXbStdxKGc6HBRwOo/dgDN88bsGzjcWZT/B59x6
vmyefvFlBzcL7uXQkb9r1yUIaReordFHGgRM3GiGf8NR9e4DxVhZBuSgE4oKA3AJFC83CyHkfQVc
Iz8dCPO3Ss7iGjWi59C46vTUt3jmMUJZGVqQ4xgCynq+FVH78oTKmKJh7PGI50R7Ake3LNLWz4Nt
DwOJYAL7RpCMsjeliPAxC+SXALYS+K5IWW42BYDhNCjIgWcTP3GwjF8isutPlCbF+HA8Oc0yiHmM
VhVvDHnVD86KIpj4xN0wiAieW4wX6KjkMlJxnZuaxlJRkY2Q2mxO+FlowxQ9SFbnWu/VzkWLcope
bFpTRi3bwDH7FKpdUcAoLy+vZSOF7Xg0QpL7m4WzjTOJeL5GY4n/QH7gETbVDkDSyepp3GiTrNWA
1/vrJwctxo6+Rr5r6JOuImp3IWlpt/q65xNOK/WfbzRteaMInbnPXBLvqyuc5muR+FMt4L95LELd
9IVy31m4qoPZo2buVgbSM+dXl8ulMb4niVIM9iONfhjNoElSeKvir9qaENQiHGxfUZ/SGRGSf8ld
QaAhgsh1F6Y7/tqECQMd4/0DeAZCiU7gDYGEfSwJjsD66H8NAfVFIr1B5eap10ue5+1T1k+e/bFO
bL7wL0S41wbC9I8JhEeAdl8NEABxcgIU7Vr+GMfcIGJPfGuqZO2TranjXzM4jACzFdZCoYYzpbEW
vzZAZM8exFIq6mQioZoX8nbC0pCwFWgXvu+0o3aO6KgGw52E5ZKzzH62GLQvvG8FzTSfKVrvR5HX
IggfosxPqpc2UwgwpJtT1iy09UdhRQAJ1RPvxGPJo4mHG54vGGHnPEqrjo4ItS6klnbt2EJNRSE4
KJn5MD9zFdfXGLI0tNgksIUagslT8JGeKFoug7ixnxdwYq4ZVJ4KtVBlpL+vYyX3zV5qRcAKyeTt
yDsjnp9zkvt626177YUwTZPoMdvNoTpZhCi3wd43UOxGjCN9BhV36c4ngnF3QOJMfYbX2n9MePc7
5NR8H4lr0kEX80F7VxkftloS7n3wmdnLug49HZesmp5Wj0IQsBZ7YZXqyyD/uFtfKHluMfR6/hOt
jqR8UwvUOhPVDxcoH/SxlCVrc05I+LAUM43inY1N+d7KP2LRBw5KzGGikwzV++WwL2ktdulsbvwM
NA7r77fIOz9mdNmJJBfhcdV8wHE0BWpNP5VKUP7pvSWCDD8qHSd4KxfkjcyqyaAZenmEgrXDPlYk
tSLpX5oM+B9GWZNytxu6SatOVQep3HQ/q6onF6K9B/LbaObV1fEobFNet6QJv22CAKz8M5ZUtcKd
BwxyYIknyEQBW2Jj9vJjDFoBhXizPjrUpmeXgmwwCieWTLFfcHKPvzc3pD8l8/fh+y/HE02agL1n
eie3foidUpGDo1J/NDqO6Qi/zzfjGrsHRehXAAKPB+4RBMkO/9W7MYMoEtrGq0v8f4scG1g4xDaD
urRONTZT9ijOXpH7KRX/7xKYbdoDuxSr6QZKviASQwzV7s+idlt7Ff0cEGnSCbg27/t2syeYa74l
vTqy0YupisLaDKtJgmsFG2nESvBNz6WPvQ2jxAOWYAAa3zNdrQv1R0naf2GFLJV47fQJJ/Q9bQiR
KgCG+wvIKIgJbRSnmzatACOnGJvoXzXjqIp0OaLIFzyivfbJICJ4jNgz3DOS01BluEJ8O8nmKW1U
sg8H6XpcPQ4jhP3XLmFckhzR925xN+JDJHagUjIrAvRq0QnGpF9Iu7Sceo+UQST47+5tonLe/aDp
C+jx8UPGYnyl8HEXIFEqwiwKrBqFYC/rezPgpVaotoIzgevnY9tP9KOt6Hqdbne8940Ab3xEJdKn
USVq9+w9h61mvMXK++PIJ3f6gH+U/+IgSSAh9ALguQ1rryLjoxYS1pf+C5mLb45YohqI15G1kKxv
wSw38k2E2vI5gJI3a2HMmkpCDMrncBREqCe61ZAgw6TwJ3M0+3FVVlVWW4GE/eszaoGNszlWkN87
J83qZWGo1HX090oxuQ9iBw/XEKnCP7XBC+8vb6Dimo4GtF5gxkhqmxqzqgr+lqpyDMMHCpIeMZi7
pJ67aQ7dB8rKtKjtNvhW+hPeLRKDTX0HmZbCUBhYG1HX4NGkMbUc9OW1zsYDTAEPAvXLJIyEt5Jw
Wos+eJqvoS43rlwg8H1tNmpGzePDp0uubwmzSttIIYCfuX4/oVZMDs3u6F0EJuaX5SkzsYah6GPD
bSq4T6TZjaV+yB/JJyj/oNj8WqPQ2RYUAh6oLuivVoKoHSd3q5DXzH7jNosHJ56rzEPcoJt3FoBE
8d124LFAkAkDLWpGXEb52+arDQX6gvrIC0ScCtVBaH5IHr81+n50+b2pLngokx+REnx2HSCVaLpT
QCZIWa0BkPbhYOro+UvzdhTUKQ6XvDiMbLfivtXBkmyzFiN3NfXPQ8Jv+e/T9hfKpCEBGILY1j9w
crir0u0nNUeKKJpJxY0loJ/eksGEGvB/oTpe/7ixe/Q+HmuLd2376dHOu52hYg72IoGcFb640B89
axCikTkVyxgUjwT9LjjZXVAvcMbCwa+6FNAN9EF+7ipFubcsXfxAjYAjhgU+Nn9vcDBYk072u49R
X9jFEMJ1rCLLnKCrFFtmt7hpQ5y6Nh6LhCKZ42Ect7r4woNHdJIyODyS3AJCh6oMs4bLGqrOfU0G
XdufRH98etSq6Yyne5xVst1bopZN0JXLNkHlSqBMIXcmKhpYfjRp92pE4Htk87APmp0OqhFNeIQL
vJA2aLRsKyNt/NcSuKS+H5fWJRxpGedEnUPpR4rHkyNAMtEMx4zyYRToFOfES/1xM3UpSMVmz1Ju
t6v20zAFMj9XwvOJwKrDhS6tUJOgz8Igdn0rr5A6SgS7qSkWizTyI+mOOo23NLCLQ/HxGP19qAnG
FudEthmCvbf0bxJaAJrh+8UVnTLsPevwCKWZlNt5Jqi+QS4Zwif6gywcDIEbY+l8KOemKDyzf5ee
iUAeXXLGweaoxAP1/c2NTonWSvN6hCGf186YX4pMGk6FjgXaUVy6YqJgQCKC8h//zSBBjXnCEuE4
VgpijypdtPm9Ap0gzlQ/HetGHpQvD3uN1FBntGo1UpiupO9Rcye4MvRNPs0CGZi0P30IMMnnZgX4
A6gGWc6duHn6sVNSUDjDOXw6KChCVzzO3aj7X3ws03xss37noWkl08jHeQDTlYYyGyjvl3F++7Vs
01xx2OguaLPleh/fgMOmRJiXjVdbXEOLs2wT7gdCDdYV4Qp9xOipEEdRGa4nWd/vF/ah8AdUf1oc
adUcSQSFr4EG1MRQIHw2vlmFGBphFj0gXBIp/XEbJIJ5R6RrtTdhyE3auEqURp2Y7PXi/m9s9kIf
uZ5lcGH70Q81vHC3m6PemxNYvLZUU+5HZ4ZbkuK8nIvAtZnmHot+llnCtCHSa3t8dv08aNIL08Yy
iwzrhstY+EMRyfu8eYiYsYROf1H32o0Lz6P7FMBUZzcUb7dEEXSn1bEGQ8K6TyZcn7MFztVcBzh8
SRuSkR+WJ/aN+QED6qY1dkN6rvDMHhZC6oZ5qYL+OHbtjwQGqQfcpJx45kdIeLdu0zAHMutwyn2X
9OCN2HCkIMCjEOALRwcEcVSEvsX9RN9sKgxAkMhLwwaC47MOhihig9OyRjJSIWGkysQ8QNCWtNO6
hD3sXXF2u6JEZhkWiqJ7iBMRKE87QkzL/JYmyCP15DIYkQz8JvqNAJ2KBATT1rudRbPVF2aKYNVW
oNhQ55SEHv8MjM5RoErbyICNt7jbFjNYGylWDbOd4ERr1UXDKuZpVmBwdM9GSKcEz1w37LrQygyF
RJtSDuG3YpcgR/sxXPrFvLFJbp1fl7/dWzfos0q7+pyokoRF7JbRkJxmAgwheo0JwT9zB5/cDuvm
X20XDlZyf/8C+FdLj+YhgoFf4aZNnv2pUec46owulz8xaSKpRzVra4wroXebsXBHrglmbtVF7kaD
uTweC3wctgc50FenE1Nr2FBuK0N22AeGGnMap+hEuQ7sk4cXsPHqy1YruG6fulyyR7g/Vw6at1ZU
WatFVTsbK8pGt8qv+fHumeJ9nnyAwUShrvgOJRqaaG5b/BLhZnykMe7tqcH4ySsV4jt5qa/th0iT
R1ffZTapMVQXnFS9sBw5echSoRYdDtINF+bA9kP7dm8VkqzW78fxTVXrrWQipkRH7tVL6czA7kXS
01ZdhyDloNL7+OvI/qAZ4OXeNcJt/aJLBBiSxvER3OHpxaiSZS/ycIf+XxaPP/c9OGs+CkYXaYoF
Pe6ek2ByvGSVdGS7WM14rblESFpEOcuEMF2n4cimwa4TIe6ww6WF1w6QOS1ELGoDdQIz33PZWkdN
8cNXe9FI8qjKysT4xiJiqdsJVhPIZU0nOdBdoVfxxxJ9BZIfZpu7l+7W/aaQsQ1B0hwDbbUKFJVf
I+31NDGvN0MyVUFTun078XwQqu1/Jd+hckJHDbxwUd0m6GIlcwS9OqlRc6x6qQ88OaG4ijlKNa6a
KFsyc8TEBctxHE7LnehM7z6YdHLq0lmf7Y9UeAyJSLr9EeUMN+7srnbTfrtw4D0i8qa8pUIT85Cu
XtMqh+QPzHipZQiwTe/EUdykR6lSU61VaL41/qOFnNYwy99INkEO+6dWixAYEbgAqtcW3cWTVtJa
9sPjwjAr/D8kD87GvoLUBeBA/gkQEbrmSQaaXmYp0P/yCDYbmF7ArG8KwtUdKkeE2HhBnLJVrvn4
x5SydJRBB+W0cAQN90zbAeI44KR9kGJos8X3KyMn0Gt/aGb7GSUOStTFYanetO8WePdBxML0VSqC
6mRV0LABuHu7bFuyyYskjeQymRupa8Djw7VqBCALdUa3atTsXlGgzKmcZAPekt7woCYiBx5Q6Vik
T8gt8vRDgSR0Xqtb934qwPUTxL6VTfUSUveTqSZ0cQ6x8knhwOy96rwV4MBAcDwkNk/9hrp7Anbz
1PVxt/2w67369hp83DrV0mhvOsvKfZFM/lA7uNXKcWMYVLtxaKMt12qirQWPNcZ582nEe0LXoXti
l54kOVWku6DRneVP+5oDGFjKynYHsehW9kVG7PMqi8+5CaGKIouS76OZCierzx5IgUaZQ0RzaBkI
MbzYM1bmPK6Px9xeu0nHTIafO37/CGTZrkwY0Vp7yaKb4KRy4IFf8lJkK4O9Q2cTLGwk83S1Vrm+
buuDnl5XssO2mtJentpyMxi7URvBt5YIrZCYJX3ID49hda+VmgcwvVHB5MHa339cdL8HK/fEjFBo
YRcU7I6n6end9sMuRodhxWf6FS97Szovmka4RzOflUo0ocdtC3tC6JySkiK2POc/RjFKmf0oROM+
DVNzgNc6jwzlcCLhmq6iviE1tP1uFdoJwbKRDGi7E/hMCw120ZCpfoxCJObniiGr1Wy9v4Vf2Ntj
kqyh9trNbAblNWjBAL/pWh/pcaHUOJmgrga1X7otRW17sMT4+sqNs5eqvfprR88ilifmqAwMCviN
3TfvlHQJxxt0P8GgbUCouEOlXbW/sM6x6Qdm948Zv9IyKbEsamQE0GcBcaOeTd5ZitD3EfJGBX1k
wD1Cr5K+E2xLw1zHFWVOQZoaSJHAfCCRu03BELvoD6M0KaxGX/ljjdpNvVIK3qM/9fTH7cb+pou3
eboF2HA7vGBmvI17uSMHWYLxiNH8eFBCVRGFgxSiXSrGunD2jXJv+AlG1SlML/bEjnwldPEYO1Qb
Upc5UHppSRmyhKJQ9v8M0jhTRuVp2VR//V6JePHGOOEojFS5D0bLW4iEQq2aRCu1cuWqp9+Vz4yw
D0KFdiALtNtwQIJNZ6H7p9Qwsh+aV7GNgT69q/53r8j20sNej9msnKcSvMRh+9FThbVtB9qeVrR7
qRLRchGUJ38ilZc1qpP9ZIWtjIDVb8v21Q8pjaak1yIGJP8KTaRBtJOTrq2vhwj+okj/GgSzLqyw
QXToFak7Rcz6Dt+lVv6xFjI1wpN0u1KSRanoUiD+XLYMIXuvqQJrK8X+SQI2M4b36Uqt4bu2KBjJ
kstL7eAvdh5qrA5Yuu/z1ppWxNniC/UFC9THbiOMluhUNPf5Flo3ABJ6E6wmJ/EmKV+zMr7clxrY
+x5Ubmo/I+UpNjZBO17mahKhPHCsE3IgXzPS5zTSF8p8B23BPcjQslsia4UTL1NsLPLSlQya8LFu
GQTRPp3ZCo7VLIrTogsijO4Y7snSQDwKq3tMMlChPGmOFm1hBZ+de2CsNRW/2imy7qUSUoZELfxC
2J+jgnPU4AWZolJiMOFKEtd51aL6nfPky89HYehrP2wuM1hOnVNG6rAFPppOB2aN+wIbEOtJdvQm
gfhtadEmP2eIAPPk5Xw9SU5Y4VpW4d8k1FWmUv0WS9rAB/of3BFWZHyHzjiXewwoikuLuXPYgfqM
solHBBj3gqGf2KHHRo2srAr+HvJb9gkjfXxZB3ioDLsLwk7IB975FHJVpjHLR9xQ2Mj5Dubof5MF
JS5dfvXQyKusqPS9fwT5Hr8TjHZRqLFEwJINLKFe2vIxsG8K8Ql+gmPokhPwfaSw1yBz7wi15Sw2
shnX91+HE2xS3nUEnup8R+h1ah+Gi+6nAJRyNjHosXGE/7Q/MXdfB/2vPHS8+rmXB6QmzIrkTPid
EZ0g19NsD54xCYAyMudco5wZczV4qvk/ObwKVW6ctavIQW1ZdYlr8chG07SYcEx2+yJsSvUxCHrR
HeX5F3xbZIm8Urpv3LfsncQGTHtR/v0LIYJC1ow18mZ+wsP3fooI4HXekhNeLBIG03kzkjb2lsL2
7xgiUXsqSw/yJv4MnJEpOgCKsLFcCbIeQ8JLuUxh8BCF68qljMcY0SBPfLPJobyFlmdX5Qf1SGcf
qRuF096njMbpND2730INjA3vONPdaIggPwkWCQ9UvHl4mSr+2aB/gXLEnV3dtEtHnLL6VuY3uB1e
AskksUDLxM+OrtWH+nIjPz+QKkn7yvo8MVwGGusbTksqJjysVSWyst9d/4C+BdmsSso2f7lOfYci
ZeEWmOS9pNf9HWMFJUQNrdd8NDFOFJL82/QI0fpD2LBWCHmIoTaVG2BG3YMCoC9reQUhhFCNsz+m
IXpAACY3+iRBU1RQgSgT03anv7sqmJm0iCJQrOyDEK399tkkmL6U56qtbQ+wlsGv5194EoUzFtyi
p8GiR7y58VulHzAVU6ox4FIqPpWTowh25kzH7MwtnYx3pXE3sWY3yCRKq3f9vRFSWSf3b6u7phkS
uWWskyXSMhan2mxE2W1EoFfqaqpjcxrMbqAdZvRFmMpXBB1bbMmdG6mYtOYHejSmengiqJaiW+cL
1FZgLdnNvHD2TBBFYFvNajRqfaUYQU4kpkEBvQDksSogkRNYpE6qFtsyl5MUAJIyVroIeesj99af
12uLtE6Y0nyXDz7ifyxMsBHr4dRFzf4H9OrtOJf6HwjbwyXq3Am+visjEJ5BaaYtFozrWYdN1bt3
GtCXB1WrYuJgrQM8I2+iFrU/Ah1zAonDPBF0nqUxhfYWPslOZetfToxGnkGJq1GVNzp/pD3LGcE9
8mTKyfjakpnYiuKeSb8qsAf7ca8gYSnzewz8vp7CXhb9UXxuhIPID6jhVuoWIDsix3e0H03+UEcT
z3CvWKjoLACf4ug/8W4VpZrMwNezRnwZ8KNw9ackm4JBmXjd/gj2ThofVZHuOok+EMOB2AQfblKM
I3naxaZS0fr1wdcz+5O0TT3CRuAxHGH+4U2zGRjnZFiBWCbRdMuVeJKhDVBNmEXT1qf+ChKgYRZZ
pjeAmuk71ysCICwToLN5ocKhjUrGmjjpxH94BKqbWhP2q0tq4gCXX9IKhh0T+ok+zQLBr7WbaJR8
ANBI5vHuYe4stsLFgX8QQzWUwlbvhBxx8GcNLvUQaeCq8PzS58swesY2dXwQG7L7Vs936foFUkhx
k3/66whHIcdCWMVttZWASIJEpZBUGaIwL5CGRU9yfXMjhP6NSwB4eM7f4T05BPi+g9ybiJ7kG7sx
9AIEfGyU4113bY/2DVzf9Nb69dk5YSAGXhONLMcszTAs6Jfs8btPZRBfoqInycjsXq638FyANexd
R149M8oYt+5WOLvYmC8vrhs5ClriJQYzXHteLKg+HiMsYZRv74V6bkrEpytTkR3hwjQGVJ4lyoJO
y3qT5v8qTD2vWSKOquuU/k95MQVRKNRXrpfTwAh3WfAbr5Kv5kJ6RCUmyk1hoA2mWCZBWjlX7qIO
xldP/w5ny+QbVGIsJN7EoE9YqpnyT/zHO5Qv+0F7923Le5O+4V+AL8K/dRmVBaq5VWSAXtxvnnOR
kMFFw0OdyhuECgcpFzaOOFw109U1+s4203qE+BOa1lxFf/TiEV8D4HC0J8J9VhqVrYbMj+lIBuMH
jnIXEucWUKIxEkCkkgybz3ZPoH4KZiTTBLcfTNlEc5Mf/0OVj91EDAiYpOwoLe18CZU3aA2f06yj
1UI4PbhjkzO3hd/ZD6op/EpZK0eaTEST9oorU5VZoDkbXPya2v187LKmmrEHnmjxUj7ZEapfn7Be
QEVDjmEebLS5KSE+6we/I628kOBBcbJ+UoFPIJxG8I2+Jc/OiKhHYbYxi/CCMDBKeRoRG+Pk3Orn
cfVKkBCPBMwh+9csndqfs/0oACftFx5N7EG0l/ksh/VpvmqyaGjPJTn13VFfnAhZI7XgCvHKruoY
/aK4Vax3LapIU4KFq6MJQGRLJAFCejaxs7LNpUNJhWjh/yAgovz+QcwsSZAiS5l/hVpuZmis011H
1svF1zYHiVdJ/A4Tv32YPSgkt3ExJ4zuaC9oMjcrn6VkpvjvVNtapv34l1LPTkIscSHdTRPkU1NF
nc0xsVal1rjLo4NuxPwW/v/U+5XhLAjQN5eU8fJD2jeyiwW5+5mwtZDQzz32HPmi1nM9o5gYanOX
2cKxbn/dQx+cCsrR8/ANv5Q765t5NSIAXYuczrhmO14xMXTeEh2wQXSsz4iG47dgN6BWFBEZi6Nt
MDAB2/Vh3geoug2+DrEXWBLgODW7LIZ4dupZjVLPLAT5MyvIGUkKjtaR4InNH5gTa84iE3LzN0xh
RWhvAP1UPXsmLdp7/UyJ61jPj2/gJrjkjXfC/jyqV+8VxMY5TqpeSD2YEEtQGOrgkl182mB9eKfA
cL++9ERpv8V5qGZxoUzqeQfXLrS7ZZDOSE5ctU3hYtvuXGH3r01Wy+Lt+ULpHdhykYTQUDxJb/ze
Vjxmc1vWwc7xMdNozV/g08OPWMXUliK3rJDw3F6BU2qtWlm/wl8xBMQwAaTUHc/+XVKOJIQzU+9g
Y+MtuoQ8sHrYcLhHGo2Eo6D33paTGDwjC1TbhoiUMoc3YvB4okPBnQqhvTZSH2zXkC8PNACWsVXR
5B8F1Bpom7k0PPV7KYT1t+2+DxE96wwvVvE8v9OC8OXAJVNYaT0sh0VU0zNSUqwIBppx9bCfiOuL
cdC7YwYbmRCWyCZX10IBivowVgZFW6F0ApsEWN5FaGYY9K9H4ASQlUNKe5oBPbEaNvQmRAKBqUM9
FVcwBKyZpfKXrAaUZeVWb1sK0T16cLTIbVF/3tECWIoFR/kNOEgX/rBiB/k5a5mU2ub1L4yFTHTy
8RmEHJ+32dcN5aqcnh74numJS8f3OSMZGLRHKVXjAagZD6Wr1fY/5tpKt57+p1u2rIAVwSV7i13Y
rNvyZ50CIjBaIzCi3Qxye6UmZW9EuIq8wZ9ygw9RnIaBR2a3ZUVu30EB3ZMB07K3TSbBwkWeO6Ms
YSe67AdQFvtGlJ9WtuHc6qDYLRoOMW3kY663zYGSZabNq46gdX99vaFe5eBshSQIWdwLECtPNn5k
LK/Mern9Dto4tSb2ZmUROVWqbEtEkEgbeinGd2DFFjBlaqQd3ZiTJXymXGnMwQPkqRhKYdcFp9Gr
myt40UqcgEu9VbjwrmhvLFgtez9X4DxTkBDJ8Meap2MW0hGUUE1VwJ5slQ8VTq94t37fF6j9Wr50
PNDDNRHuw6rtIjhqmSQ+Cl9KCSyZqjfQ0P1XYwhoh3AXMEPcI8nWc2DwLaWmPKyVqjrtHmk2rTxc
Le5CP66z41v/QCX8n7dM2sqecJmwhirVnVGQ1FcWsITVhA39LyYDHXBLpihu+7ertNWQy68mQOS7
cZduMeGEtRi4/aG1VQjFgZuVC5wU4n4uAv+hFAP+sg7mvLnLZdnNnv0hZmyrMpZleHM9QGeJFCuM
n1UZ9VOh5PgOqw2uuuJ/B68tth/Gk1PIJbxpBAQGPvfNu6Qm5oG4EKB1pwcCC28fhihhNoDSj+a0
9oIuJPe6Tkv6n537U1fg9WfgPrnApQ648chrvyHjxB3pLXRJgqfzSHdp0rYmDsF2xH72w6lYw+kg
uEW7SAyTtw0VFb4PMDqWgo+ofuWuvqmHE7ztOcnOHklaz6xYSOg6yHTFDZmiQtyuwCBeBWQdx5h1
UwIsJjTKOgsNkcREFuAOwCj+Jf7FUi5MLlzJ2gPw+FH1YKoetZM0lfSTg5Sup0LVa+Z8E1kukq9S
p9IbU5VAzFPGCGNLAVLPKuVIXTGCtPxqI102FqaFdW3xBx1K3d+5katr1wv6bq+7bYPOyazBF0j1
Hffjx6SNZg0ZGjdLM+Bsrn1mjbZN9+942VXnf/p0bRuuotQiT5jWPWbgVmK7YbZDv4SOL7RyeMQf
bWgmoWLCmdpkQMBAMmHfATWc083sq431wf/MYsSZ0et4FlNo47b137NlJL8dqi9/eJp5qx2p1xAV
zXMLXG6BUkYFOPLmGohwzECt6TfIGgtLp/JYbRyAZuTAzBeU9ERIHVc3l+3n830VjOeCYInRZ+9Q
4u7I5wFwnSYuoEkmeE96OA9hjAFACZg/pWG2UJi1/6s1LNJk+JgaYWdezDvEKR5jVce2LNQMJY59
td7urjX4UZqmyjC4TIicUuRnTlrGOUh05HHsZyK46Eo38gqBsXNFFkqXQF18c6NxMu5xG2dFzGvz
rqsTAEiLkhAmSsUnmriOTCK9NzjOgbyn02Bf5sgt55CaLlDYi2uqAcknB1+KQ4pt9VytSdyE0y2t
yNeOLDW2hrGBKRYteO9K9Orff9gk0yNEZYPYExNAETtimVV67aAAmxn/Zgzt5hccFlfKDsTQxA/S
xn8zKwY2yBanX6HA3O29rFIKoGUveamK6E86XOYBu8a3nI9Lbux6ysLjlxC1Y2v95/WrCgZzh5wL
E8p7AHETBKx0g5mjWLBUYkNB0bgPOYb69ch7haPdSjaPEwb32hESk+f5QaZtNuxpeiLIBT7JSue5
jVmK4WmnD2A64CNrh8IHfmBDmu40pfZf9QWdjqFhZziAkuhmlUtMNa1h0yPYsciE7JYLto6yE/gV
2BQeFaxEdCZ9w9Xvw7KUxLc04BlcnFFMJPXLsXICC5W4pg0yUh0sLhQdmBiMFbfNSPAzemsBYD77
2tcyOyv8i837L7LMvdcCGIbaiYCm81x3pA74pItD0VNLkkkYEfl4hGt1KaZRailBw4Xo/2fUnVZM
Z8E0P7WFczfQt9KUpz+JX1iun64P3eDUILxFgqetRXiUn/8J+78t3rTIEDieUkdK+jIxC4406iTz
NFVLhYYrwud61DHNneEKys6y5kaCZGhBSWMfRhoCxbhXHezQeiekCOigQNyT73sEj/5leugVTsEd
sSPyu2xBVUzsLvMh/ekiLjGpD80OoMbm5zW89/EN4+7b6C3IQU7vxRwSjKcnXZA1IGQZd65tcyb2
fwV02NuCDzJITK9dbUVrN972B7QuuSE4pNmliMolHNrD1TDHqYez/EHMNejz53krWVoHm+FI7L9l
kRmD4/pYKnaUgT04ci4Y2zUopLJepKtJyglReVBK89cw78ZNJyCvaRNta31j22BhvMPm+S0faELZ
QXPSlHXCmBveMDZabu2I7LuWWapBEWj+daVEKQWSTWz4cj05ZN5FpxJtJR0sczldV5RpFkNNd3ys
97q/x5ZwWMaSt3AfBaYLgkiNwkz/48BYbrXL6Osnl2fnky9HbttVTO3nr58u3ppl8/63DoFQ2+er
rprG1rNicOZttG+KpUpuHs7/38H8G3k5NKBxIqOTFU+BZnd9R5Qsnwiuh1rfo4jcJxyMxNC/6ot8
GoG1Uwr5KInPQMqd92tpxSI9uxXEjfrDdP/C3PdTXl5i+E3OZrf4HO9keU+wkXtJJWyaYHuD5ggB
g3cKk7y8wpULkRq5MI3zSF6MXR+w14tiGLY2ihwx3jWaB8WnNemKbah+zPoytoS+5r14kOlIUglT
my5rj8zjM17lSZ7FlIqhkM3SLjIWC7+h1egoU5m7/45W3/A90OLHECSzOcuJajI28ZXB+GPwmfvl
iXyfmIyXZdsD+XLcV6TQfB34rRJh8MHkpV0tbI4VXUa3C78ocFtOvzSbGhL1HXaJ/VPOM8ounrlo
NYA4A+B3onzfsknRzKD6FLYGjVMGiLoed8SqZSpqQabXT9ihhCkrfADg+aIf/A4RgqgN3nHoMeGL
RZHCn68yNMIsfF8bc1CF0AQjgiUu77XeMO0LXncg8zowdYbtLuDD8wklQUigBC4BCN5Urfj0g4vx
TSxFaW4afy3tbJoIq4hFYCUDDPiNclYMT3j2KyXMR1iFg1QH2TGbhaq5thF5ulXfG8KQ+prv2+WL
tYoVnGDN4SSjVS9KPkXs8YIRWyIkjlXErk+jUvMLDL7Y23QWqs9F8HWUWDWUDSsfWSNBdyLOt1V4
R4fSgxAErXxZdYXg95+lGP+mDB2cYyAaEJ2g32lluA2X9YE1jWglIxjSd2NcqH7D2A8TsBGl3CBz
ntlYNCxPD2O9yI6TbVwySHzdDpICsD/QdOOIm4Dz8uKMYOIWMM81IIjxR+CM7MX1j63m+fjQgXFe
C4sMWEuhLI3GOxVqAdx/KWHkloguRxCeD9FrlVRIYCVz3xgP+TnzJ/9Lp1fpco7ciGBAp+2hYvZp
UpQvni8p8QUudxHQUJi5rcGu0H7WP5LgbXarrzGCyGpMjCWybF4g5NNG5VQm0hQszN+37ux6Fwe0
isOHsC0jd/06x4P6iqT2mWhHn0/hRdMQ/CBWp2OQpMdDllNqJRVzUI8TyBtQgkahQpOvpg4nJMfI
KUBNA+03NAXQSc30r0m5wnsWbA1+72k631J5OuHQ6UtmI25VnTZYm+B1G4AiE9tJP7oHczmQSTg+
Q/3w7mnD9fbMeBbga1qVeRzO61c2qgU35y5z+157XURYCTRrqSg4/2FtmlqU1fjwl4JiCUVh7bsw
aAoiuj4dNtNR1ZIm/Wbw5+JLGxuLmQWVPzxEIEPaiAAKQRYjD5/0oswfpxGXEqVqp6mG1wYjIYfE
mF/okhIaNJlzVJlHtWYDCjxfHi4KLz/J3AKGr5AVYBDK8wMKP809gdMzVpVRar+nRkCLXiEgT/dh
zpp5Mv8zzREzkGZjKC7Y5jzuoPHDpsGXC9ccFs6zXneb4GrYdu/fV4tbrz6BKT3CH+fWYjNqY4uQ
IherqCaH/wUgbYn14gRbgurLuSlgeuwcQUKEuqkxViDZ8v/tUicFRoDqLym6kTcu4q7Mr1+X2u9l
s5VkKrqn37fzlo4XrcguKXTVCXqfNcrBo2EveklVhXzMpeeHDiyfGZZW66mcFWEXRox5t8SM5sGt
pVw4AS0PPLc7CqqFo2cPXZZHbAqSufJJr6Hkt9FYjDSH0JMN2B0w1F316OwfTe6c7P2qKQlUTANl
r3Ymp9eFLswgqzZ6aCRKqgAtElXhUmroVTQ8COdi6/wKmKENV13ibFHp5jBFs33uKoWS16TScv5R
lLrUFISUzRJkDkjsnBopb26Avgb4QqMsuEw3INBGAyc7Z8l3TB3wruv10uBgplWifYnzPtPefqit
tYpeLjqWGTVKUMK23wHvDj+n+FySehsJ4T+K7/pouGKNg7q//NSeDary5qSM/S9W9G4+A0ejLk+H
ZF7LuRb5ZuCscYZ9sfXpvnDeSU4WU81+JplNVC2wcoJxFWNcb32cVEnNR6Vgdp7gZwdgYvr8W5s5
kxXac4nRO3X/zZlYcLFLqJz32vgkgQJSeDVjmo7QjUrNaAKPSSdJ3YfUs7hU7v+eoagvyCa3IB3b
P9Hd2p6eqi6px/OxSFgH/NeeYtbP/EIfqdvz65nWzA+xolrDgMnSJOpDE7IIIbeH3DQvNKR5ezGN
2RPPDi95hYrehqBF4KYx1wmBC8UHkLJVyApHKbHnK+S1SfZUS6xYAEpJf1f/WOBSOBHbkRbTr1ZF
OshAXtkIbN41/VWCFXEFnKhVRbiDmJKa91BNYlwssn8eRsoaz0tc84EBI6vcoORFUQR+w8cSp5Id
OCVpfj1iaDVeXzsrutAOs+1+hU7MuvrepWvuoZXd9nSLs3FnPLYvV8ugoQToWUAwib8+jg5SxM06
5c496qblF8EUKmU6j0R/NQQrhTZzEp09/wMugjAcfvfiX6LMzLBJkPD0RTFzfRpxqcghm5vkdJIc
JgeGQmYl5gZg+54enJDU+h4W5V95o29tjAfQuyamT2ba73oW3D0zVLHKxvX+8nlWIWDQHhAV0Kdq
JCb7RGc9FKrNLkzQopAwypX85Y3/mMsi6XiHbTVQ40B6tybdgtg2prvSbDV1d0KWu07N6L8VWfxo
gPmqHOy8NwZR9523hlqRJbaJyhWQeTSmAlIlAWrvqtN+S8kwtdKXRuPBJKpu4BBo4qlnOMA3pckQ
dC2UPnV0L713k9FoifruozIa9R7sy6I8oe2kpcQug0XMme80iiOOHqn+5xxqA2rNjwGSNNiJTx++
Af8n3nODAspySJQ6iN2PIkjiNebLe39wb59I8Oq5NWX6bKCIapQ2eYyMxfbgS4aiH82kegcjzeH/
tNwMBF61ouw4ayLXdhN8UW4JayGwGCAp33qvzbCqDYkShqG7EunN4MFd403sJS6qmcNUHhd641jq
Yz24absoGOidwIhkoIs8OO/jj0CpdAVjK5WBOZF3r9eTxxrQp6zpBreUx+HvSBKM9kLgb2fSHXur
Fn0OSKRxbb62vqSYrGv7NFXm33yj53rX44i+weT2COQSA/35XAlBARLblqY0L6FyZfIaqET/jfkb
n9Z3058ZCEDsoyLXpbBaQNkj+WAP5nMlt0395+iBofFPlIMOvg9OzBNgXyJVrAse2gD/iLhZr77E
sc1aeOK6J/YXAFRY9pzko/kANyQntr8Mv4WEzeWrGyIbqd6PHLs/8TxD1R5fIgg9HLbU82B2ysnS
RwVTvKC9pl/iymXtV6jbvCFFl+tlc7zlo3g6jeerK/JDA3p5m8yXNcT4487KXEfqzQMQkEvW8koN
JZinScUGs4IDxj8WuDLmzI+RWW4EdyZfyNOqd+vno4sSFGYhn92Veijo4SEL6kzvrTEXN7dSllZ3
Jc3702OzYRfUHLKrjiORyUVNKPQtHhG3fVGmlgOMvhNYpF1mo70794LI5uoHXAqOADRDNi3+WwWJ
2LTurbGlsduta13fSlx9qOnxQbxK0FqIVKRWkOhZGCTRDdGKfMVW3Ys+rCBrvhT/dxgOX6+FRUpa
0xHZsH/e2vRXSa3n9UJlED44dECVrjjHmrUwqwnJiV2X9dBIjS2p4Baxw8IAJYHgNtbZ0Obvy990
k/1HwTThqnU/BqJRbjKU8+tzAZN/Ic/lqOLxUBp9Ct8lWt+DxcyKzgrLh9C73VvQWf4V8zcgNKTw
3RtEJ7KyH3vB2qAozH41IeKfb6Qnu+pdY4SiDVuUUXAUenpTaQkFuN7IaOFiA4Nqe/U5YBSmRTFs
PwPuLeZuArI1aQY11J8yTqeqDTSppAm8YsS0nWu+fO3vPRwqzQ8W76+t/B1tmlzwZKPjJVV2Zh1c
+fao9JfYgnPqzgoAGy4gfjIcFoNmh+rd7Gf/w6EwSGmhMuQuqp42ah2/fQfocviP6U672y4qUrQr
MAKZNvY9mrVHnvAfMT3/IUB/USHy72/2pYc/mmYPk+7yAfuAIiL6fiZBo/u7Lx/2wtOwBfsraPUX
JH8yHTDzDPUUwKXVsg1eJ/ghj+NWlRdYx22U/cXtOQkaJjJ1eM22w666amVQmRzakeEMcDHkY1GH
T8NZxozV7gXNvlb55YvUz99wsM+dHOGGy3vQE2+S4b8xrLAPRGYrncME35XzwfrLMPj0Aa8P3y98
fqjkRC1dp+NyUSAWSc/ogL0Gzo4zEyMgraqtJrV41rwff2E+18j6BOEUVAIXpXUhOOUg7VjwytIk
QQ4BDUeZ1Uio0cnbqD02hv/lj2SAOdbjmN7xXmtL9drUlxEjwoPdWib8D5nVfyw798XuLIJJwngp
4AASdPg+d44yJCqEcg696ZBtBHaM56Nv3YBfqNR41zLn9aEUUB0CulBZ+Vs4InmSGFPmWxGyXKXm
4ke1rlDf/jrAnGeDi5TtgV161rpQd6Mf64+7lLarE6HwuMkonJlchW4Q/ZPSBLEJF75LlhN76iEX
Ik14kjqJWDG1L7zyXFzHx5vfUpYyogJCpQtMxBBszjQQA/aiqnaemgI2OmpL5K5oT9aj3r2jLcZF
q6XCfQwCHKlWhnjIJdGoTdKpgvE+xG+KBYPmQFcsCrKpLyCGqQMkEYhLFGLD9hFRo2kQME7GiVVd
zoIp+j9qOUbSuyPym5c1tCjV6n4VUhxYpCF5N5vJAh4HJ5aA5oaDI4c5Uyjk/znVjURlvsyhwkZ8
PdYh2ACKiW4TvzdyiPCl+aVzNyDjeVXKRSVSKxoY8tfv1cLFxGOzAdd5WK7s+WRr3Eu3OPZnmu52
XCBbLxqF+srpN9nEiakgP5CwquxaPYImcJZeTKazeKqK8ZF+NLLJAsA3ibfdZn4xgKdYNFivIjbU
LkjKHOzznyOwJjh63lvFkSlV93mogzcllyfTcmUv44AL62vsn5k2EgzWJaMujp9YYHuuVfHNZ5u9
GupioEFv2mlpMiDUVbM5LpXed4nBllT0F3CmwZyRvYEe4GYPsF4noW0dFFTs/yVYKCjElRdDvbui
HNPI9mOzyjHSpcg+naPPBd6YScmKXSeg0Rlh5wu2ym/EyVdbLZxYKm/e99B6TA/VdafNElwgHrEu
f4zZgyCyp364kH7sJjEEBWFewpkU8at2CYIjH7XYEe6Mfv6mKDDETpcofAqwWJwHvQGftX7mxxjo
+phTDxR1sa49gIm8hHN1F+m1MpjhHeA5lJf2GpMEmnT8DFYFEWbkpyzGk8yBMBQqrsf6I62yCqSL
jLVOZtGkzWntUm1vHvAZpheW8leYK/cfKZEqFX3AZw4siDx9baXFWnPD396KVww8FDM4HNr47zhw
o8oUUyb12JP3dk3ZKhA4vMI/5PMCEt1sdD0oqvgV24byWUh7o2tmfafI0z2b2+Xpm0NmqkbQbXiA
s+rOyp8Ai3R7C0p8lglUI5UHR0t9ZXRgrKboY7sCAYVaiIZJ5sj37Nt2vWWVC3OiCpmoJy7QT+Dh
Bc7XKF1wnYBljE4IylxI5GHxz8++A1FhrawE3Do98939Zt0qmvlMIN1LuH/vVsJ9R41k3RGbbIjW
fhr14cU140b7Mno8TNxEOx6+gZRV0s7CF5renui1XrzyYzMUkYeCF52Z/AqhUDSdSlaS9dlUiEID
sFKj7fvcPMSSkgcKqjjhL7WS3/Hb9u7qwbbtKrQNWRlBxxg6zYkbdsfmpDnZ9UoyayDuXOifsklX
QjenExSIUmI5XUj103avKUO8yIYtHCdUch5Mc7ok/D9Kpeekm/lmXKGa5mAYBoLFbUOtOwWfDhti
o/ebvEQKmM/yJjWcmAh9jCCD8TuCgWmCSzuGheLoch/21wwd+aRHcE/TU/CNWDW+ZEppqDgNQ3B3
tErA8MhHd0crq+YHaslbzSUP3zDfI1kDENewBw1NQNYP1wmp6x1kGoYxR4buC7f0kPQu34pR71oT
l8N7KR3X5oATPp7iuvfAmrwvqOV26bpiiYKghoFV/LkVagwVSFa6LlyryLq51cttDCh/Mk3YUCqx
8ZDQsd5Goq9sWC1HbXtDUNqYy+cg/KOhrE0Cd/+doZeOUL9RWsvlqsM5MJ+Y2KSza/6oDtdi82Mt
HKsiXA/eQcGJQOyTZiKvWYxjWKYEwV8irzYoignAnMMsuIvlEZ53wNM4HZ9Q+8ec/0e1Zxmf4hOE
kV1T36j2kTILxAd0//ql+JReAQHCJ4jPigDLTUcKOC1rnT/2/SPccx5ecUnix7MozK69rj1zmnaw
Er8nn6zSayhDvogfnfprQm55f/AB2jsVFJgKp3RJFi/Tgt+WtQ5zMj4kkmQ2TdYUUJttd65EacMN
giLqCr5HTLwoRlm1yjv/PqKCfx9WAuJSV9H42H5Mc0ASHEoEvLQhHnVnTLogQg1aDynTeOvT+VN4
ZcSg/20QU1FFqT12oPwslZK4iZOacuHluzJGH7RkIXpGq9jlZUZOxoCaW9AqUc0f7XO8Cma/Dk1a
+9XVybmYFTSy2fLE9tK7pWQZVr3DPC/zmIYAkTPOx3XQPLr4dQsnm5LoM3TYsiiDsuoIbb9dDunJ
kHd/d/X187thlSf2F7a5w4UO/dhnK3RDOJ7ERbrjBUO1oKEPEQPp2QdNfbzO1NruBFApiCAjnuuM
O/IZLGjRYPv53vJW7N24sbysRKC1fOLcyB7wrMt2wrDFEijm5eHDr0m1x4bICmpNLVaVk4PUNGRp
3HmoJubN/fDHEQ1u7l5AOXYAfK4f5WUgSoa1PFjnkWopGYGVrj33RXhllhjTsqHz8iTlnI+sl7Ge
107i8h0dGEF25PsY2jk4hN2ZVgV6I++d0RXodPA74H+wQDom6vT92FlshPRrEAyvePxHT+wPk5M/
IlObsk7A3MIkndgXl9Db8+p9oEtf/ozrqFyZKcF0CaadV8UnBmVcDMMD6QHbIH6TAjdvlsAwah1g
01zdxC76k2lwMYBmQiklfjUml27U+ptOY406hsS6tsqB8yjr7dNXt/klSBLEx7Hfl3jXKETRYCgv
FSKj/xEhujyOwnvuqfx5HKDCsFACrk8QA3ALGPdlprsu9VmYnJzfSoXibXQg+mzZF1UzjngwKxHS
1dJlq2iJfyH3W0vaVIOIXIxBB30KJVvmBA0g40aCCitz3qzDgqMZs0yPrKidCxAeT2RGakU3kf0L
vUHKSDNWd3illZnSmn6IZu/l8T8SPLpMofQWb9CrvwgZJsf5p1hvWuLKWUh5xg2bBex/KnymoT1t
nsl2/hckC8Hivt0HStLEHctKoekFZju95uZXvQejV0e9ZhqL9a7NWTKW4/qQrn5zji/THChnITH0
16UQeqKLjREqd1ICjTZBsgkvkL7RQJ2+/9UnwO/U527w4ti98vNTkelw8wsRNZJGlqDqoLDTU8Of
UK2U7aWznQrdFV6fgo2FXEq/Ab1+Kwg1BC3OzBo/42Di9EmGMHx3UO4/dVjfg+n6A/9LTSoevWYJ
zBEkFxs95x0N3XpgIVemPRSb553wgd9f166DWwdMvhi7IOIUJUaWbh1k5ww7lneO3kFYJKr9r9Bo
weh/N3F613+zvEI3/qDP9gQt79HVzIjRL1/EuCxZyPUVF91Hfs79YRVImkrh4ooev/Zj/f+aJ/E0
Vb6Jb6jvMtH4vvKc6FTXUrv9QCIeXwV+zp3YGEHNJP4A56Adbd3/H/wmpWJr+OApTM42uZmCGrqp
2hPqZcVs/M82hPkhGo4ImpbaFJEq6vA2qZDAodX58bhicGmdnrrpUx2hS6fhW0A98Czj1S7Z6rtf
YGwixN+l+vc21P5tDQ+cT7rBcev786X30mH29azu4VoNG8lFKAePCrk25qjJ7c0aYibu76nq3++l
/4GkIR+fgAqQLLscI4Bf3bMDkQzdJ2OXtUQ3Nu6wjWqsT3K+zpExNkxYhHSFnq/7skI0JRA48d1f
FaWNh/Uxq5wZhZ82c/M9XzmfM+Eke7hYOXUgcF9ygJMeeHQmDChGfWpoEJunuDFq3MMGreKL95jn
a3AJrYnDBgvT4jEey4gu6KnzJZ3Gw6oHcWe6Da8n1fu+rrYzGxZVo7v+ilyAvShS+1zNs/kfP2b4
/bKsPXhmyrfU5iFULY3+q3jH+GtRYQVn+H3WLtFywJ7RkCVLmSQpjDeoo0qgJe1QU/Wgo4PoVGmU
oZ3v0niF3vc0C6ER6RRiiQ9BxD1m69GlVqLTSIRVpqIrLCOlqb8x3iP3yACrK3jbOn9qR6ZTdyyI
k3CmSK0OtahUf0IbAv1DM+Yzg713YQEHAv2CVrFMfy4GeQbqa9J7PBIv1uwIu/9vp06Sf1bx8UxO
7UomZyKIf+AwwwvLKWKpdl5S6+6oPr7P9yy63kAeFESgAoad3pVJqTbza+EEPCa2EQ4/qS30RwZa
ztzTfChJv93X4IOnNeTO2NLQsgFf9kFf0x0MAt4uEfckTz+qgRGst1dM/pK3K6LlRZKaP4HWu7it
XCnbz0g2+IjrzdqkOkoTJpclpXqp0EZQAoLa7HMaqmqyVysSt6rhEj/zl2m3bv1igTp3lrMpQ2jZ
qSo3TjkWYhN61D6luNFD4/LcR8Sbcfo5SgoxNcnS1WyNjizXIzdqvNSJuckHF4NpnhuIJ5wZvAsc
o7gqivbQSn2lUFB0u3hZyR1et9eY52cl363QRKDBlSu6/qjtcFrpWVifmm9pxr/MIL3gzClml5Zs
RcPuVmvjTviBq1PE3OtxEKbjQKZakmlJblEBptUBtuJFrSYeZxRk+UgK4kb8KhzvjIGT/9bCD4I0
Z10mU08av+2fDnuW+tOrB058PNVxsWR/cu0edpDJiKGUshEw/lk4udCoe+EGNs5YdXK3UOWIsgtM
c0pEPqnsqQEDXNciIt1AokYGtaXAYB2XWDBsZrvzi3g3PZzCQa6BIzN/1UgvoLHEgROLzHZUg0G7
vKTccnNAU5UBSX8SAfu0URTGhpBE6V+lTgbAQSNlNRsoValI3CmBO6ba0ghsP3WGKPmWpwe1qSpI
a9wNIw7QTPo3/kiVIJcnJev33EHWbUCAURwChCQILrGKElt1Dwz+7yC8JgQeV5EzNEgU22fE1GEA
Heh0kOfPvoYpTREbHY+Qg8INDHBuRLCN50khjqNGeWdN3pgZ89rP5AluzL+wwiOlSbuvYiGtgC7P
SM4RDFe13BUlVAfhOnvJPtTczwxD1gJx06qS4Io0QW5DDzt4Xe1CpHMdrW2Em+EqoOQHJR9W6wl0
kPPzc6wtDZFa3iw5J5NNEJ8gI7hwqSWsrXWRd8fscxDva8E+ogpXck5mJ44WnhHIqQP+5C9xbRxc
nXBRJDEfs8OoRyR9RdksaO7pG8/D5JpyklxWa7ZDTPNVbjUE3TEKjcAu+CXMBUSvz90pm8yvntAw
TVsXyDVMw/c6Z7E/Fg7r6IpRa1tGofyWDh4ZHUfi7NjLjVvOjE4xqr2Bn0dRzez87R/4SPgdorrg
k5cl30spA3SuvGZYyaQbygIpDnIdVfesZDQYOH2BdhAfFGi9SBHXizFr2tnceLmDhslqEPEgQha/
My6Ryn+FXYsIFddgHK7wdT36+CEUIrBoP3pQKbj8uy2NOiDbVniXiZHvo70q88ChI8xjc5/drbH9
4pwFdt3mI/Lcbd0mnVkpOzq0exr/GPZjTFw0I0rAueuG+tekCgBLlXdqGRbLXkB8tVYXY/Gl2o15
tbJ70S++XCm0IkCqH12+Pv7FLhEmot6ODnWv9Hb9pYnKCO2ZQUIOfBupI+O+BFc0ZcKRBQrLabcl
ZNrda/+ckKMkD4WGBkXng7iTQ65eqPMoY0O7mF3Kw/PabkjWUfCp21CzEgcr9ROgjHWY0+rA0xVa
KLMmZUahUgAf+gm9WCcEdL0hqebTgM6o/ZxFbLMDPapELspQXbB+Teu6Kkh3VL9Fi+ff2KmKcrZC
EMB0ypkgRIIAl0TOXKotnQEnDSNeIXM23ixHo6FoZxDGjX0JqPVihmTc8Kw1fp0gp3+NA/cSva84
UHmEUFj68VxyO/Xjy5WrhkSUj97zAQQXQyDcCZQvejhO5OFnZZfit7hUWoAYo7gdLBAwfY8DidbV
b2scTwoirrTHHjvtLRDKqT1awOWwVRbdclE+4nX2iUOe6+IQiMYCyx0ued9NEDNnV/HM9tdtAHkO
W93I3fO8fJK5BGZsojlLlWoNJYzdKda8pZOZsptRwSKy30kRE9Y+xUQub+teYtzAhMdhkL2vIT4D
eQ4xOAl/j3xfyJkXGUZM+BUnuYfMGS3xNdGf+xSbjL9lJGdpxx89UDfa+Vmpfnl2VV78L9NeE0J1
pqks+D8ee1AD5CVYUuXnVS71AFl/3glwQD7Av+NB5hSMygcuGn9lgDnS/2z6SfX7/tigE0eQc7wc
3AfFJSdzeshRcts4b/+kd8ccyUAqmraWawJiUyncirXl+kRKO+xQjqrDb7bnEavnuq/Vd92cr1Jk
e/LHWvLzHMkj59Lwy5Q0Cd4R9I/K7F5oUnM4Lo0vn2vLqE209GG7QgpmkVtMv/UvIuveoYwZ6izv
MqePOLYgamHgzSTAAN36pKUBC+tZIv2/iGWzo13xtLGc1+7YzKSxSeIsOM0QQZ+LlkgrbyzR2Lp4
N6DSXn5bvpZJittEKqeyQwIXTsvPPpXWGg8JwihoYroQMg7tUXfKWjL4mir1eZcTMIp5YH89Ysul
Uz0aRq+RHh12c99RTNP6XWCV7P2z3D/HaVTkT7n/exU+zWdSlrj9bG/18zTTXPJBPmVYW7ap7Dzk
3prmFf12pXfjcis5ve9QZlQ/LUYtrGheNIPLRwL1uzLONasMfZnjkEiAvPWV5+JcRL0SC7/il8XS
i1bBVccZ5Oz3Lnyvo0OzFsXhTsf7WH+dTxRsCrge1viDanIY0OuNWyEylmqg96mZp9RtzO/fB1Og
J7Tahbcxt0l6krjsSzjfkFCHzLc26yxef5zzFDvSm0hSiGhBRwE9ZFzybGswPbEL2DDHhubPa4k+
3Fn6WiT2mFqd+MMqViRQLJujwQwU7U82C2MFkJVI2UIc/ncrMtIGlMfvwZxc/jGUt3aXlZ9Pg33r
ZxS11eLEjV0YAWMrvS/ehaoCKLWFf/0VOznl4dbTFZYIfNCBcocdBOdEQTQ61Nrc+T1NJ1FeDD4Q
xn11I/BExDqUSwWDEZqttmrhhUp1yxxqEHMF8WiNPvoGO3aMQmQVLr31CIJY1+tDvwMQ5J6771Hm
r8jIKFDAKIjj0TAIlLs3OmQ365FapFLKHDY84G28VLgO/g1VHOE/PpJMsZgoCj8U6AgM+oSJPjst
nyhJYI7sPvslFOSXzsME1qCN7lRsiLeSHnfZTdNy727Ndoodagj0gcOHmyDHzjjtIjpKd4ukSDsM
kkuIt7kUmFmH0btNVE28vF9+ZkuxR+jEZOvjpO4GdQTore48ZdR37Cv0v+GsigF9U8M6syH8C0wl
UL+IFaAaj5HvTab635Tz2msYJTro6gTtzGY0aInOiXl1TwGiTLNF5jFljqKxiaShUzQT+8Z8VBAb
6W8HDRXOqzzPjUiIcId9NPqFFh5Mib2ljGUdSEbczNnSiBE6BuqIa+FbHKpTHR5u77BbIZY4fnjk
hgg5RuERmASd7bN1v9ntKshQXxWAkXM/gBd2D4Ys/4R4zir9ac6RCWaltBrFcWzT9Z4A3HE84Nui
npLIBDTO/hb1TdoO3MJhKjnwlu5SMTlXFBoiPN3I1F+XJvEpkiikqlBl9sywP526Eg4YQnrNcsKg
RNqwA9VdLke2x+ByCxIe4qhau8rWgTgLQwJrq3YZ+YRuwxzTYhZ8BPsAaMgucRJbZp3KcpvAje19
GQH+upXJq7x9IM6H7enRn9lgsXeae5I3/CGLyoazjMBVn7pOPc+oCuFWwvEmBXgokUZGDKUAHFIs
AKKVvgYP8fc/gVIvlgHhuo/vQ2pHXOoUxG6xSGmxcuwLVIFF09EZ2N2UqLIiqR62rs+Hga0F9jpf
l73hHk8SHnlYg08jodJEaWWMGREwtteXkXOY7l6TPA55jYDBqK0fBPCi45Uygyqo7+ZKsqj1c0KO
/Yhmq4hYm6LR+b/sFHeFqvRo1iYmgaKWlmuyzP3wSCnYZ0B4ivQc0Hd0JupqRFa6sWuP0b6qD/3E
h9V2GO2YG3O21lyieFLjtUzxjgA9pjAqhDQwGtuh7p43WwFwhDhARaI8rzMVC2aZyUfEmNPMZKlU
6gY7nJwiUjejGyLGjgQf6/EpTKb2vznLk0/61/rXiYpRmVDA6gwzdWo1IIIQGsntt8eGDAafE5wZ
fYPoPlTV/NzOTsXcHfKDQVOvpd9bkiAV4QSnfGOyeE0LqNKhKRi13xveWts0pQD5i7Z/FLgU1vcz
VpuWCWm/t7qwTkN43DyqfjSHBF8f1aFzaIbBnSky0+BTIQNJIO+gJP2maNMagIBowjTLiycLe6QD
3z7+bYjf6AjU5/ilRMp5JSNd+juNt4z/x3OXKAWWWpmNU2rJcIIgmddTvY/mhDD32+uw6r1mQeCe
N/2tvXcS4BSaLKDnnWuumZwcCxVo3dFr8CmwOQpPfq4o31yecgQcOqKdczu0h/9ydw9BJhOhuumV
IZzdkLFsBpbB9THCYM+dUHHdIJmdIYIO7ZXh0Kvr4r/iycfkiZNqlcTgT64BObo0PNPUOGEjJhrS
CLHVomaf87F8XRZ8xG79nVZseYi0pzVsGnYXIT6VCAVRxKtnaOPzqfD2M+iFqGEfE4uO157XgPrf
ThBL6hzitumQ97rpcrESCWMnOZ9LqffK17KLGI74d+E1zU2mhtsaeXICv43pGq12ikUryJ9q1Ck9
GWy0WPg8ir5ZHhO4dNOeeqZHbXSVHs5kmO0z8FShVvIbgo49KiN6alCbw6nk9Jpiw7vxeti9GBAB
R6d+nJCXPumlo563OY57dc8NJOwQyGhzrrxdwf0vr84ieh4FtCPGan5NV1TcQWDAx24/fNE2RE5B
VFl1HJjuU4gUVP5vGRx0iCc30qe9/KiZFYz1bmhiGxyaSxE/v+UtvI00DoINzsatsDD8pnOkHVtS
xHbo+2OAIZhXih4ckHn4eypnHn0RB8wtqLjJWJPmp8+bbW0UYfSNuO4O4PBs+APzWbUcD3qqcvBA
CoSjZ0kJ00I4p/oj59oTNDi5PIPU/Hx7TwDYQ+BiE0o6y6G2pA7qyff+mI8EntjVT9Yd8WGYxJFv
NdO3WHDeqpBTQmk5r6B0fkT50xNy4cwaFW+tB/cCbh4knlpQWgrSaE6xwBJ9B0NZjSKrCSzO/oGY
++6y54EkifdG9KgnH2ljp4r9wOQ5TcJvmGxhPYGyuOidPFEM+0V8ELKmwleuqkd4b/oY/VVpy+Eb
61sxvsojrlzOmPD9mIf6OuTy8NEvQi3YSIl/tO/YTDTQCP07c9GmX9q79Jvvt/DqelnDtKWkwKdo
rRPofkk5c520TxGa8tIlNLaRBg95+z60H7RH5ESTH6an613P2Ol3mee5lniOnYSXv36UDrzmwCTt
iAHmqVdfmYq9LlxFO5uyeGQavcGpWmDk5CJZO11qPuB/QbyG7vXwt49Lq8q0lEO3gbgwAua5YyGT
W2gkTSM4QWfibirk0UtoDdrMB8OR2qbaCq8gclgxJ5NsqrUSJfZ24zdLB3F0azxn5TYJ2w26CwAq
vOKOtEEtJioy2Juno/O7syrLM8bZ6QPCc5ChKox0TYNUF0fU7CzApG1+ZDqgx1p5BSN1d7S6HKrn
19Y4oBj3xE+Zg0NiCNrzrA6qqVHNRgD2k+rMfLiRGMGGIJdkbgEorm59RoJH/UNxgBNY797d+iAq
EbxZSGlkqibS5MZWtXrPODBR+PZxLL7+qXSURvU2JQ/NEQK16sNCuTzfzAcLT3JOlTKrWTiFbrTJ
JYkfXxisWlBbiIQIgqxu2eV2/bhJ2ojWiokt8e6JOiHPuLd3bWo4k0Xt4j6nBhJ8WBdNJOClXj0g
biVQXTe8vrIgHLPd5xGPkTTE5TvbgalA5SVOtbwUFUavL6+GgkJ/4uUFzIPFVtj2TIHbQwUCW5wk
V3FffsOC/X16cMLjKx0oE5CtPhK7O5lCWK/0g7UqInaxu71a2ymS2YYWnvRDeysXgK+Kfgi1aoDV
YeuxLSVKlAbgyBeQBVJwFEaDs5rLz8NgMzBZbhQ0ox8BQ4Ud8I5JN5QPp+x4IOTgLG/5E1HzL+5H
HoXjl4x3KPJ8Bn+lgxJFRwbQdbAzPG2csGv/w+Q8mTXOvy1DXh3YK6eKIk6WBIxNmdUnvFzGlLre
oWTc0fMyKfSFw4nf8ZdXdaJmdbr/D4dJ8b59RXZN61UbAr7CTCTqrVBb9GgpqeiZ4C+yp9fbyofx
BjxcDzSeOdW67u6dl4f2T4HyEFAJFI3jErSLriTbPrtP7VQ1g/LgMJtWGo7q3IW3mYl44AFtoqiW
4JRhipJjNY9u0c2fi5JJkuAykhHljbhkeCP5Q0jXhrTOMizNxzV/Xe+bVF68gxOWU5+9hGBkkZ2X
Z8GR2vy1ogvw8KzaCOltSz+idvsnBCZQXz7/7uUK8BTcVHrtLDhvLbUwulNfLzHWgQyP+2fYeyrs
a+BUEUwsZ2hQbncGY6kumI4T/k0DaNcRsvuE2wAW9hmirYZ1+ru5NNsAKFM482qlBdgAXuFv2s56
yISQx5M9NlFf4247yDrMgZ9oOusQFQCnzPHFC006zayTGxa92pQvpem26RfTGQvseTGnU0wiN5d+
Dj+SIQWyAsjuzBb01W7n8diddFCjosZwoRLXYbreW0SMMthMGfanuNXvGNHDzovIKPxgR3K4VTcy
CHRqfVuqohr03rgXjZz1nhjfSYvU81V7owCazra4zFEWt7i48Gp/i32OybSr0IkTNwdyAP8w3J0j
db57XfS57a25Rx5HQGLlYVMzjIlKqrnbHDOLo8cpag77Us/qo/LTjN0NHEdJQTou/f2PL2cQSJNM
C3QP2g2QQ7RZ3suVhWprbxAcTKz3n5HXTHV8TmYTmrO0lifQUNbB+4FFw7wB43hz0t/rkMtKwK2g
ckgvbpeIs9xJvUuuho4ecVyAiV1BmhYQ2/Vc9PqaXbpU3dfhfemAnwcC8ENf8Fqi1CmLRnEaEaSF
Mi1w1B4XCS70XSwqEfCFNu+l64ZplmlrlSgBKjoljp2pi0DW5ziwedTjUiILJ5On3ZtTmqFEzgLh
1/qToG8hjoDSBmd4o8ALL1U5l8SIDzXra1sc6bjCmpkcF8w1kBUWcPJrgdC1DIw2lZHHdQhX170i
3FkmKGrnEoiiP+F8p/x/rdvxvvHecp/qsWemQdljMlG+00lix2KEHlcKIcEG6vIoK2xZfOFCdMUN
4fV1dTxzwn0CcuI6dCn6aSfp6IU8UrPEYM1E2PwJZ197AzwjKEy6CiPGQJcwLS+X/HXn5FiQS3U5
sXo1goMvndN3VzfrJwry9pnxH/TViDC3HdgbGv40Sz9enYC+aExwibqMLvWc8clJIB9ZoKI10A+Y
busc/6WW34aIiXMRgA==
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
