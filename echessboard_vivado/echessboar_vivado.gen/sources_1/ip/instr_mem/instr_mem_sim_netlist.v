// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Jun 13 12:45:33 2025
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
H/9ucgt89oGWO9GAMg==
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
