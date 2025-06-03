// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Tue Jun  3 11:33:15 2025
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
9+x5zn4RQwXa6QCAVA==
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
