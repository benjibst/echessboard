// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri May 30 17:58:27 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27072)
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
