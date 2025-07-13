// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Jul 13 12:26:31 2025
// Host        : bennipc running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/benni/dev/echessboard/echessboard_vivado/echessboar_vivado.gen/sources_1/ip/instr_mem/instr_mem_sim_netlist.v
// Design      : instr_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instr_mem,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
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
  instr_mem_blk_mem_gen_v8_4_11 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27088)
`pragma protect data_block
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
afxJSgvBA356xutYtA==
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
