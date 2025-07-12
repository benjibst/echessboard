// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Jul 13 00:29:57 2025
// Host        : bennipc running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top instr_mem -prefix
//               instr_mem_ instr_mem_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26800)
`pragma protect data_block
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
Ro2PL4j8GB1EjA==
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
