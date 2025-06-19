// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Jun 19 14:30:49 2025
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
tm6zYbeQ12OscJLsoA==
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
