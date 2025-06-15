// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Jun 15 20:19:36 2025
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
8WU3HwG39slwS6afyA==
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
