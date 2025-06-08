// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Jun  8 16:36:59 2025
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
+K8HvthiWQ01NRAGew==
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
