// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Jul 10 16:14:39 2025
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
hb8oJgJYes3iy6NjmQ==
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
