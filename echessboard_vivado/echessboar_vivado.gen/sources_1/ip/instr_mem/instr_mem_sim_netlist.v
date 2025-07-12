// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Jul 12 20:54:02 2025
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
ExLktbFXcHIQUxN78Q==
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
