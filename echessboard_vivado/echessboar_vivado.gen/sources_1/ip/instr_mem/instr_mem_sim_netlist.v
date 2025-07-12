// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Jul 12 15:49:45 2025
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
WN43g1/9ByEmjwaCsk9sHzFQiDBPb/tZ46/BNKB/3BX1Ooickcn5SR2SUKMJtprtUWILcBQ3f0ft
hP+5Quym6uwgDHttfCfJ9fd5jibarh+f0Y8rfq/fIRI5yBtyfWzlXjz5SYcJD1B6uBurdj+m/hMp
yvTkiKp9hgjRbhSE4nROn7fBQoW6G0i3T9Gly6CI1nLFsUZbFEtc4e1+ewQtZSpX9awwUDmL86OG
UGTNzuCIeRslZvkpA2emU2hVST9L/+HQYZhdk1fNs+fWg/TSFjIM1XFFFpgKVNakFqZ2WndVa0EZ
Fu8Sypebskd8MZDn2ViXXswfNrpWntNsbRhJSM8GR+TDCd6MXjsUB6attvwdTcHDENnNFbLDKoWu
vQnU34pCaphswsmheF+eL49xnfchQnAmmWJhhr+JZa5y8Y2mZLz5os0eD4YwS/uAQ1vIV0TKCycl
6n/LYZYQQiEeP1SHKB0QfT4FatfsFTNWgxEKSTp/Dh0R3k6s30Un1yPOOkcPNzZEVw40wMKWwKmx
Zm7YRBeshiQlygRS88Hoo/dkDlK+Bi1bPOV7jk6NfwCH3bNf9xaP4wOypRJ2HLg670PYIUvnZf+3
5NDBBBPYCM+XszdHg7b+DpZRK35Ak+FP3jqePlFvYkcRkcSMMKrGR11kGrudC4gYuJ0qrs6AQByn
8iV7FtzJOBs/NIVi6AfzT+13MeeG1OPaPiSgP+BhF9eHGqcKtDxFhEKgVW4hU+YOBkgyfsMW8ryd
+2gRLMEwNTeXeLHHadmdbcLflLBaTc0+YSl4Ax9Y1zQNckdoF/N4G8+CuI3FlzUJ7vr2buNgYNmU
JROFGQcXmc9DAPLfOiRdSkBrnXR+vDGgHqxSmcIP5aXRqv5UTqCS4yqvL5J/Wj8QVXnIfxn071pT
ogo1F2uAUdwm1QgrtoFIPo0bWdbFj/AA/N+tWnLsu1Cp6b3FNa3xNr9qFL9W7+PgqX1XfCVju/QI
B8rX/GA6JNDGqFjeOnfpOb3SxAz5hgW7e6cBFBeTe5Ee8x6iG3QOGXSFtX77i5fa2gIsPgCfEic0
+zHjaTYfDytDybv32HicPWXzz+8Vk0hLw7TEepJJiJEhxlXTywrpuHk2fFw4hoQbkqmAmeYwuX8s
5Cd/jJXHDPk99YIqsTrpxb8HavL0Sie3JGBNA8DrOreIK0yjgNzZlLN5ZHefxlI2uTWj5upWP8Q3
pY/WJlJDBPXkfp3qEsnHhMv8YR6c9LTrN1FdS1mvk5DlDs38r5Eraai3a92uuoMKMGbGlXCbbWr+
dSw54U+bk6hDNF+sE4jRFqg9QF/tSYZEoqdMbb63gKEtoU08OjoNC4ucLsCKJtLLLK4YoHmmASsI
CR0lpknajg6u98Apq8FFfDaiRMqPmcklNVdkLKfFDNGM4f20XS7tMBuC0oqYqzqFYwvJcklJqOI8
KDeXkc78+suwfA/pcRZkMM+oBnejNzLZwYwevevDhl3q0iNheqmQuLTaPyyJWW1xokVMSew/9tfn
zEYK99RpSw4DdJfWNmE72+AeIj+NZ3c2ZCgKzBB5aj2UZSD02NF9M2Y2kjVEQPJOugf9JvOCdRpI
qlKAi72iHO5NWrvL13ZfPEIyqpi0dFXa4GIjJlFMjuGyzHuMjiymiRGenZ0CMRADmQumiwlTEs22
zTxTgTQLHJJBQx7V46knDVaKivBqpLafOsqx/gouEHtEv6W8ZguQfZuEnDtw5b1mKIpCfJs7xBW1
061lh9DxFo7IA6+CTdtLoj06fg1pn2Hdj7BD/V5je4biF/esDFW5jDyoA274S+P08/hO5FVtPGa1
xkgMPmSbwDiU0fFfZVFL4TeTHXKbgGxYac46qw2Il7HlJHr5Xkf83L97KWhB8Bc4lHajJmC1iom5
+HvkKyHemHN67+YLqMjMRQovXaFt0+qFGrz96QTn69MCdlOoO/lIwRveDVSn3JX9TRtA7m9zG0ad
FAiz4i7tbXg2VyTpsReakx2QpzsFTBERw30UBPSWNLldAShx57omxkZWYEFBD/nW4tHIR9Nfhg6p
5V3zeWO5lhdmVak4UHZa2B2t3kQPZXvOctkcSVb/lSWW2bRgLaPKiLYpoEseau723txYQEEqgb6K
fkg1X6X4UA9EcLhXME2E1kvna9uzZRhu9Xzfax39rYQuI5Ma8xGWFChTstpgq0UqBpvpxMOJtZ8Q
0e3gpWtWah/Zlp+Wj9H6cH1GYp1mOK3nzAAUEOSKylM3HNFSUDNLBHzm1EMkxFx5HRlOjWdhgkRy
fWd0S4ej0nwxh0sOxGv/dvHasjHSm84KgkQ9/oT070Agt7FwguQAMD91Gd7Q1MJMdkYOFP1qjHL6
BkwONeEn604elROVNqstk5HRXDQh+6OwOSbXdYYb3R+nbMF8E+SiCJSlJUdx6372TURqpjOefCfi
qkt0Lj643wxSNT5cFEmKc0UjGOcMvoriO0xpE+rsFCJucyInGrARgiE60z9MwNFa2z0bk9Od/8DH
2CK9oTLzaUGNBm4eB/Wsu6lAzw2xlGL7zAqAKKB+za7msRwN2qjGqSu24bbm+kCwzMnS60ygU2J/
F5q89NnAxUCp+CtlljcHoAywSIxPC4sItuJ1jLqs23aRvxiXuOb4hCHWpUZruyYB3SeCWp302rw2
kFWDmV8B9299hPoZrwZPW5xA5GNL/7JJufu7PqPVTFd4zi2noDXlPFFOTQW8WqIKoOQpTyzmrDOy
VeTiP8Uhofz8qqTzLqk5dSMe/LV7TZTbeCJM1c+kDUr5eBWCrafkQa0fESvB1Jt9tA3ZGgxEJ1gZ
aogkJkSLLPO9hgD47ng2RvXRwWHX50D79MJq5REV0BI8UzCQPxwK6OTeySyjv+GRy6gLP9NGVXse
Vn+gUGr1SNYuqZ3JhdyRq7mm8MzghCVUOLNbuUrXky/+8mVYIwKTehJemTap4QSz6P6/a1LzgzuI
stdrWsM/nGjQJS0eK0b8ZnZXEG1otbsRQyXUT15SKvbp1CQ8+xwPYouaB89mMZAschH6Os9YWz71
zDM0RK0pa1Zn7Obh890wHQzgmWAApvwY34d8W+Mq++o0jBM6KPe5fyfkDT0JFUBcNUv55mHSfFpj
EWEwhulZJMIeana4JUyBUa2o94iAory3IV5dU7NuCpU8Pb7nrR683K46zPGr5eviQbblg7T+nqQh
OZ6Lo3qB++mpCH8/uQpk3bKCHbnN18qMuxl/kB02Ybq+raa77dNCndVm018LbGke0s1Z2/ndZOnt
J7bGbrC+WFziLTzVZtFEQAddnTIhlcRJfeqoPbWSnSP6U9qEu+5LxsW2oJkWrjYJQo7h0P+fuhgn
6Z5os6YTawbBcNOY3mO4VQ4KDDJogbEbeIehiuMGf/ZKtbx7PxqCSsOSykf523KTd9m1knV4VTNB
v3+nYpslAJLFN/0Xwo81exrNEo9zJKFg/DPzKQr/oMvoVmMdMaHJT5j7fuGiGDYBbP+xxn4rEpLV
fG3+ZylA8QqJshSNL4GG66alQCJSJO6aXxgZFVqh3x9jYaNytjjXqtcCkCraev8SrL/+ya6Kcexl
HENOMACcMxn2eBH4hz+oCf89DoMghyo0r2vJH0ZrmMd39kz9TCCmCUWoNg+aRoL6glC5g1i32cuB
6SfmiJB5aLoNArm8l79kqsh5vMr/WaYasGfAicMAmZR40CqEYQCBht4T0sHjPt8W1LFUcnVBssRk
IQvxGuA5Sz/jkbbnaVHQ/qC9MfhVxQlgKC0Qd3aPY6cobTJECBUu2xkjRv9GdFj/sRAyxy4W4UBy
iHr5KMn5Aga7gz9pWujZXbAhcsZmOXhQgm2kKc1QrK4XdUMMBuFcxXQ7GcDCrvwjlBts76d622Pg
uCJHDtUbqNr1EntmkscDGq6qVDIBhZ9g3QSU6b1iG0+tFaoCZr92eQefSqFticzHfaQK39ZE/6sj
fw5Tkf0hp1eJDoVskwDS4VoYBwZ3xCLJ1XD4HYq7o/oGEtu7bp8E6SRtsn9UcNzdS6pRjTU4GVj9
rdgmMfg8tY4GXuRp8tpA18nX0X/al9WevlrDITqrLKzxBiDLyLC8Q6oyPGHSeDw2f+ZmPIhTypKu
6z2rBmkK44/eNfrPzBp9+fZMrcqsznrN8sp0rMAKgWrYVbJmj2uFRDoQs08upMqNGVLcxam7qi20
k582Ly6GQPVpvKqLd0bosL6tgFoN2aTmv0OeYwHL9vp5bHxIPZEN+bPsS5p/7Q7LdM4IMBDpqWlf
3iTL1sKWPH+1pH9Z5iefFkydQ7qx2gnz5ZvmolK9mrTZEsYyV+ZVszYdmuRRDj28pOCgQxxtdzAZ
i76f97r/TfArk3beObS2+fmNmmPdttB/MbI/zV1vqEwtFx8/lW9qfGQF9gpB8WvdGExQFjc/i2Yz
deBc9XehQG3W98UoA8Xo/vdhWXpxMjqxQxkdQJK4Jma8fClNLjNib9cpjij000CPTX3HxGRWrPzz
jE6GwxQ53MXGVqi/aJb7ezlajnkvxCbFq/TzXu+Sis/zjEYMv6D16KgTL7IADib4Ber0sxpn4wmR
Nyr7jMmNJs5dXLHVyRDHgeg/EtyIWcNWaq2kTa7XJK+H44CQQkJtN4/vKhOKn0shZOR+BQODxmkx
lPE+nXNTc9YVkG+dITrjRUqDhHAtkpHq9iqJwNg61R+xVz7BFVX0iCZrytWoCoyCSZmr+n6yCg5x
kuVFnlkAWp6jXNB5fcQSK8SRIC0teXucZNgSY6Z0mOx2t73EEUxmWfXMj9NNA9inASwls0oaJp0F
ticRH5+PSoW+djIwNnKhA3E/TwkVDLs+VdHKxASyx/oRHBQQfP7SY4c7Yf94aN3rt3DyB24vp7UI
Mk2gzNB6j/upv9n5AtoLZ/0/SYdqOoi1/eQGNRbQcCLyjzTVa8mjKPamqwNtiIW74VWzLZpXNdjs
mig6QFxGSQZJEdcJiSmlS56/pssaRg9vC23eVLqg0BtB4plmHmVtfjHpHbkSrHTzdNN6aLbKwd6W
ZJ06nfUSNE3mjIAjmX7iVPrPAv+4zXth6DSSgulbt6Yv+ZkDNjsJb8EYGr9iVMeU31k4CxmpJjfX
YpnJrw49eT0TDtyAuAsYn4a7BmXC730xsqSmdqdencI0yFyhodWrm+upODW2YEK6uZvhqGwv1Ll1
F/6DM5ZUN38XmFDPzSxkFsE2c3aKPkYi6w5FbgfkNZV9WcCVg9H75W5UiH2OLKZyD8MXixjkLYlR
0xxeKU6guNX1f56wwXFYEiI8fH6GCMSISPE0dbibXhzF6FOMhiG1KzL+jOTJQ2usKcFCtHQiFvZW
nla7hTcO+bkUkTr5VLTqTecl3sZCZpcCBg60sl7kK46N5/f7uU5GvRREtosfXULCzz9mCvHhTxZD
8rVqqc25iT8gXop1/BZ5kPk27gx52Oj56LxZP08902PDfreJQ8mng/pvTeUXbrJpi1eETmFFajN6
ayB6/5eoD7uoyxvzl/kBi3Q5TiLt6gze6QGuwLUjoULlcQ1TXvT7pWaSJZlJr61CJZe69xKletMK
qg4ZR4EcRUSVaGKrPLN2egulfNhOI4YuJO7qPZVbesIeBtuX+BSSvH5qL/YTR203xt5B+T2SR7XR
xX0nypoub7gI9Vd7s3RnVtjM9kQJedPLZqM5L8IGqyMB21yfHXsFbROYQM3sKwA7dPzP9Zf05Ew+
KAj2Sk6Ee2PES6+OyibqUXjMQo+Po0xFuXclUfuLotzUkOeqeeNZpqy4z2xdJAbsCc3wQYZp5PJ9
NfQl9qBKOAbgS8rVxq/0l82cFP3VYtacW3sU26n8S7FTYWhyGE5rZZlBfvC1uFHSVqeukP5ZO/kR
NYF7tZhdAMPKQkeSPosS1rD17kPLLxR2GcKFxf3sVaby5x3cYhUNMYzCfZdXdaDZzSoiihZaF8KW
IFbTRpHt9cOjqa3IQR+1s66D2SrQ/02U170HXJuFG6TFUe3RTDZS+36uhOcFSibPNLx6xC7RS7za
7zu5UFGi6G0BC1eiDe8SmNti/4YFu2n78P9mmOfYKTDB06PgfLzlK4MjXondzoxGYAgumUMDBW/6
dPcNwqIwsl0Fh2B14ukNpAAK3tT9Hx+BhxhzgZ6ebgeNwuUEPmD26Yco30wcOnUrLWzN6wYSvcQm
vdLsfmANSndC0YPZcZPGRMBO2Hcq2z6JhuMGBaeWbU3tyHf98ILB4dlgpZu12neoTa3DcfqA0uHv
CWvN/hPgV+BWoVqJibqE+JGdrOCto3Pwvp6TLH4HLKKUXI5kDg9SyNr2ClGOGEujuBLQq7pNwTXY
qjDfe9X3l01CwAqLiLOM+sMYblYxJO2HSn8ONq3mVD7QYyGyzkkeJGnwHdN4wBPOQPMcZg2zWhui
H+2uaJwE5Q6Xx8N70E7c0b8c37a+RSYW1adcv3LsCqDE0LGpCxnhSn/FzPDVIQawTdqTClugmCH7
fJOsJ4ccxneHww/h2tni4miict01A32eTsOitwtuiz9mMcXjDDMjT6Noqyba7NdvnBOMugxZwnHL
1F1Fm8DPpiG3nWIIFEX0tdEs3XOOxZNtwZP0CKm9mU67EDzBEwSkeJZBrii1B3Fs97Vb/9cBbnMi
C0fkOwGjE4Urqhh+UrJdArripjY9XX7/NT8pV7Rp4ZTCByFQdVy4kZBPZw6702YTCfm7ipVH4kDl
67GmNrePXGqVbQG47KnbpieVkmdNLEBpsd4b31/k6LnWyxqXARXyvhcBSqLTlhyKxn9DaYNn2eIn
t7zgIup6U9ISyqDoysccP/Ed+hxRGeYlnpEggVOEx4x9CGNErJNLtjsmIS8OWIm3pIsMvPWbg2pG
JF7auRFtL2JB+z6AcYOcEUpIf1Dee82GyklPPqycPJBe4ph12v+d2meJJKWs9zymwHX2CiG1ytsg
mHBpI+jiZthrkliM7O/7fQ7zBMmjiQKN8nr3t6ZrUX78JwMtqB8ElFqw5b/So4gMfNTQ/bXoiP1v
XB7ejrMHCh6EJj5uCq8S+aEWG760QmkX4U6Ch8i6SAHVHaWDZ5kKzkFvz48ZbvQLWYe2ZBVEsSrB
SLjFOWLL9aFVR715XGatFT8kbkA68xASa3qTjApTRDlyAYrw6m/bCsrqkKxJ0PIg/aluPvu+RY8Y
QapDaKMvSRj3kmhl9HKJtnJOqaUO+ApBBBWB8UOoh57lxCKBKy1Gq7ZSD01FAoBJDZHasS5otaBz
d3PPLvDPhW3NXp4gqbfeC1zqFP1ge+R2XGvalxG1EL6IG9zhLBaaG2XAk3nwatToB8+MmaXGSHkL
a8Wj5kaB72/oxryaodpWvFWrI7n7vF85mglULRhzatnskwlt/tB5hjofpeFfoEvrssLagyGEY2+2
GJOwtL33PT8/r2iFmL9E1HPzk9OJpS0zppAoR2vhdUotRpF3O9We30WV8Ho8wLL/nFqFo2Sy8kVJ
/0gfv2sV9V6fVLlwfHYjDCn9ZQ03PBuVvDr8WpStexJSnbtgcTkwuyYBsRJy3M8gxfG4Sa88IRzO
Vc/iQnHDUV+hxSiMWeUFxRzE+0i3IjX1kmUjEeChXtpOpIlC0uXiCgpsmdPaboOF5I+XFt627VE9
ZNJOcslP6HD0MuZ8lhf2VCzwBmzqx2lddnn3tyaDfr2TYvefRVweUrQ+N2PEHDhA1prXfSdPguhs
p40gnVIi+VMzbNElkUDj+ldJvif5IhmzHHlq7s8i/h/iL+2N9mKcAItVWb8XI9UGdKz6oqMyiAH6
8c27ErHKDGW5YhDpRRf5E9TtZ5yfBo51auJtCieVwPkW6gUEqtZ5SjdOLX4nW5TLhr3ksiDCCUpS
bhDi+QLTxk2t9Tb+N2H8unELuc1eoOANrysz1nYvCmW0EvGwt9FLYzJzGXI0nZi/LnAe9H0dAFIV
XxJKZXSD7suXsaViaZ0kgDALkHArhu4np7bKS2BC3dCDqhcVy+jOyFJ6CjJ4BeCJQ3MgEpMI24Qt
F7LVyeVDAxQc0HYty4sKFYl3iNRAG9Z1oXrfAnMoa3UaF5dC51Pk2neRCH0tZC8gU4Z9YPZvs+tf
sE1Xa6ZNSH9IQxYop6oHN+pgRuHLNlC+fsjydnxddIG6RcsNADx1vOkjsPyiJFnaAfj8MnAbm51c
WmHxo8QgrQIncl/sDEIRtcyM7WZpF7mQWx/tUrmwTV23CENsx6BfEItJONYuTZRScQieYpw5twKT
f+b+7iDfYVz5g3+uoIOqRSzXJ6RoJu+mZjrScErGgOONhs6WC1EzARRPXLIqdyZidVKKoJB831Sb
qUtoqaNNPvfr5fOel4/zYINMpyxQXkMRoyo2z/iqRE7zxdZlLL+ZL0VzyBRTme1PVK9RgBThkjyw
m3ML6HEjkhfkoz8QB7aYRz/dWSiNrBlyTOrQb6U4JJbArZitLB6ykgtXReQyC7T34FsIeNfIqvPL
KK5acMY/OaClAkdkgSP7iSD1eAFUcBAGct+kHUh8LArPEVckFwR4i+kbyg0QcyAKwANUif/OqV0I
ZI3ujFMj3PipNaQAdNInhqgH0ReksS/kXl5Qrle/zUA43GCD7sj1Ly0s7+Ppk0D5i8dcBMuyVr+3
aBMZ2kqsGC0g+Snp8IzUW9pduo602o9kh4JEgEWfRcPyGyyF1gg+wXXWWIwYReQ+JQDZ+Ksmkb6M
NEd1nVnbAZz16IkklvZFvwx/KWzHB5LOb5OgXikLeEnIqJ7YXxYquDAb7IQMYr2f+yQ8V9NPusOa
2Ca7zYga1VhJX23XAdXPR+WsnKNkP1MN68TA7E5tjBlIa2xodRn3nWkD4u+wXQRF2R9rh6sRJDl7
KPYinEO6u98BaIr8d47caoSs5jhQkvQ9Dph5mHXlSNXoko3zIBVpUbp/KgIhHjbdyBsRA3MdFIYk
9eApQ9StoUkwoEIgPcXlYxB7PGjV5+IpiiwFfFFS56YIr/xn7CwdED/2e28+sq8BqKPvXPDtmgRl
KPs5jGM0CGn3okyVLWYKWx20O21uemOX3S5VkC4/EMTmpz2KuEfRm7Thb0MSUflBcM63Vew8v47A
cP+TtvtDfICuBILkYSvmu+EvFJc8T9KkJOCOCEuEn1m4E3GOZ/APBZq/GmHcwsemOv6+X0mkThlV
Dj1dKDqgU8DoD7bPyHG+CtB9HT0ByKHdkwrU+nA0AocCAk0KlBL/MbFhGLMB60cgqumut2L+WUEV
gzhImlbTsqf6BsoRPWX6ZiWyki+xJ4H1/+SotQap+Cc9LvP+oCwq+ooArJIUPmYLG0vY/4o7cbLj
08VRkHTYutlIKLY5Nwz+Kk64DyKa66ohFuWAKagJYgQp5KOVlOg58qQsZLAp/eDmWGXtgRhIpRgt
vq1QHlemLjB/dMWSk4/oMYFx3IS63vLtf6mvW3VlvnvPFjegL+4jklAYh30bBSKlacPTjE/UL//n
nh5oDWAkE9pmK0eztFDgnE2cnV237ug8ifFgSpxIAF5N6c5q4JajgPZ+1znBf87K54MHUVvgnFny
jbvLaX/ObyCMnKlswz0hOBr6v9aj6ef070ExN5oMs7skgH4arw8W5NWj5YJZQ77w1hJZ8SEp41Os
6BXNfcud51z2+VxMYmHZSmJi50wHIxeGMSchEcJes9UiraYBRRLJ+IGdzg5OoPCkVZ2kbf1jhyxl
rUmxQygGUev2WEDDTncvMygUsIvEqP8E8b29xYphmgIyzCVOgdHcW/NhhWFaqxrp0gmi+YxNc8IN
UyJ7J+gBn1X9m91JqpRNt6WjC16AEuvxgJ9uLsu+as+GYQNq1U3bUdSzj8TL+xq/h4nQtKGRW2xF
JkscbLCMBc5vjnCEydscaM/bdRaVVwZEyAhHKQIAZuDgprujMNxM1Zu6jbFxeiFWRjKJak8BLyLJ
aVqRJqXYl1nkxfSZ3y+8FNwRZqJ7jDaa8CJJiwq5qkjuNeWXScZEEaX3MXq5ub5gYfzO9b1XyHgc
lWsZuHKKXQDLuwhFXndbmI2zZ32b8ucbC+iVRKZo1jds/Z74qOqb7IqWC6/Y9/v9/gOLj41uNAhl
naYuW2YHykOChVmIEUNPucePeN7pE9ye3We/L8qk1v1012V2vd7zqCJW48jAh4hhSf59wgEaRGi7
50aaIdBIYlTM7THkX3aUUjpLRvMRPTXPOU9r1UG8iVKdbKpFJAOIHEeDf17OAHJ2sf2Z25ypiczl
CtEvjg/IwGZMUgIIjeMsIflSJ6hQNAnO7QIaPawXohVsThQSqZrCDxKhW/CiSMeMtUoQ2NyAQB/0
YNz3GQRlWsq28AYPWkfSremD2XKLTlAUtrwTe8Syaz/3/HkaOny6vjZAbbbiSrNWyp7s99VBFIrG
MsUDLuvBOf6FEVbz12Rl1CEzl6/wmL+eLU/B2vHLvVC2455i/XkO0EI6oqudUmE2e4SU9QN+23IN
hFR448j+9ZmBOuyS3rbKEyCQE9d/wzsubjp9icSXhapAEr/T3+vJbbFR/1l24mm0dMOZlHxMQbJA
9NLXcL8VbiLX0n7o2tlyt43P2ilBK+6yKY/1YNy/0tGMqiKOmdKTmIeXCmz0gkk9O61AQrBy/9/J
BXDtlRlhQN73Cfnrq0QRhFNzkQvjhDprNFgOdWdpDJ8mfQt7n7tOFT23d75YNKtXlfZdr8JB429R
k2188Pp6fW6PGYKXWm44+9bNHS4gClSNovG7r8A0RkQg4WoCE77k/xTOVQVIHBDpHq1cH0aTGPQ/
yR+vsN56J2gL3qeItzTDVY3pPvOrOZUeFP8JU6AFmEPt35itMhng4MfVSXqtHxUI3h7uDIh8E787
F2WpUK8s4FqwX0qWwHQUlvaEqtc2dZJcs5lchr6di9XV1oAmz42D6qJRXtwwcBvkrUvjWZhiMEo0
VyFFhwmRg0LslOS6CgwN/d3jhhEIWSFskIQWQebYeG1a2YLpLwNzwJ4GmOwKthDx/1Qee3tw9Z7+
JVAyWyp84vrS9TPbvpG3IeZKluMLjvcdBT7vz8tMo45pXf1xN4wBo2EFz3HNy/zv1EapccvkaBkw
ScQR753hnu4PDCn7h8y9ceC9vVQ2Z/WmvspmZJs3rBxdxfaiklXSkP6SPbwUD0fdobEoxsKu50VG
knr4G7qEPnF0502tj7+ko27Cv0YuKsdzmRCZp962aXmUeMLGkC8kKeUtgMqYtY/9tauuSIItBZAO
U4/Snfc4hbjYRwVtHFzyXAYhqq1Hk4wnMBHuXE1t/Wibse84kE72x7gZzWB60Hkc+xWAsDykOfMF
6mxHCLrHIRcFWkNexIg6dyNgPuj9P7HuwxcI8l2T4uf7jmBzp9ZX4LY1IwUplhvKkCiLXb+YKERs
HUYWSjPWoeVWJNP+/8PWCYvkReqNpwneSlyeWhVL9PhlokyBKcC4mZUypZOCrHkOkmt3uwg4AYvu
7SoTAZFDObMW8Y7Ive0kjQ2laG0nExjrEGcNsQY/KOlIiYxPIVf6N7Az3UKWBMfBGtF3u28dOtxV
pZsp/VGWrZwmU4aQujL4j1GUHzcBrHFC2/1DtnsahZlYm47gjwgwlmOh76qPfE3KIZVMIk953vwl
5QFpVtvMWyt2uY5I2fDh1+IylTDZ321+UErRYdUZQjCjteAQxuzsoxMMKhAfeaBQSaAEUG41Qvpp
3hIAic8Tp8ZT1CEvzpzaDR7EaV33z3ecM7gVStM48zGXxAdAVkGbccTFq3kT6BOImYPMVwfpi0cA
AXn2G+EFW7/simjKsEXiVMTPuqstpRk1d96s1aNV8t3FSWTCMGBh/81jTeqy3uhzHSS3tyxaerSc
b2RbArbOJ9rVC77PJEY30VMZR9ZyABzXEZCwB9/pwtuJilhcDcDC8mRhh4x3iA46/Me7OCcC7ylO
6KRvHsLJA0nm5LsZKpu7TmPmK7pdm7/aMEzWYJrcf65XOBZ7eoPdK1eRhkuBD/rprdcjZ0jP+jsF
TAx+X3x3us5/f97vWfUW9dGs4KOREfGgR/vYY3OlDaGh1dTndBaICSpQOgrf9u+GWTSH4MCsNh+u
W4+lb4fnAB/n6975KVdUobAHS2UVPp1wmYqrAq+E6urcVgjTfCzRGOC9n2t8CsolkS56YCg8NE3n
Fbtoh9BDLHJKn+pSNlCrsTeiudPDFIl0u+j/mZXaMY0w1P/oUocy4q6x/APMUFCpVLt/+I34qxWq
tuZVurY9Yvkkr6SdlwYRaYzmYCmrUV7T08kxDGESGHSzEDJLPJepNj/5THDRjo1ZnpmFB6e9bcu7
ouyeCl4en+CEe2RvTPkno/QE+oyPiXFd+ELtVv6GZeh9WIXPVmtW5Y0JGbfrM2kIBiGLjgnRpV+V
wBsdzi1D0xm1nOPzBrbCRht1O4CyPUqQxNDHW4zSx03HFp2cL3gDtJoMgTBbqEIfmlPPCZCIMeH8
yiWRNIRcKcP4W8YvEWLAjw0JZBZIPxiM2l5GfoCcEuusbYK92cXtXdilvWuV0gZGzvyRTFe6xpPp
jGJtiflxJp32XCV3cgSys/bcioGmQhvJNM66hY7ZyG8OU4etLmC3twlckHZMITwUkZB516OAVYjC
QmqCJxJ9iz3Ua54D2p3ljLJElZEiEPcpHmGtaZafHzkGh8NaIQbkmDtMZ11wa6HhEj8bfakui2Qy
fjR7rGh2EJoDA9vy8YDX/810uVdhqEZdbPPB4OHwpH+4eXHx0c2Bmn9L781ft3uq8s5B7b3cmQRj
Bb2QODuJwIPuxtkMl23BmCbFiItTHCaN049J6hd+Lc+JQWPwoYYH4VtCmW3UavGT4wGE+AKfJ/Mu
mK6Z9T1N+uEW8affMylgd7FYslbewiuMJHGhKEC4aohFIi9/65vjkZq3DuhksNkffFLcRqRvS/d6
8NPVFn41mb/uuU3QbVxlNo7geerk6JFlxQIBJu2FPGGZRDDEdtQu7t0GgXpUj6pDjYWft6o2lmGi
7PExAuYCGPv83ADnZKT/5j0CmDLFQht4zfxUzzWJ+mfmAwEajBw98FbScZm7RLk9gYv/GzpPSjZ0
y1fbUoCOWc19OLj9RL2ZSM0iCXB3Jrqg6lB0ISWZ6dfEPYqYxHgOUK963mtGLlydfYnEcWexXV6I
fRIBdnzcSJO2CZRiJGJN1kWrNn2MWiZa+8/xdm3gqsnjFW+9FPUZR9Q+eVTJGjYyvPXOevRIELSi
Qj2WYFSnUFvjz36uD5RsnD76kOU3oexJaSG7LEOdE3MwsL3wnsjW6hUSiTskqt/zATz2AM+RkFqJ
ne78V8bNXsDF6fFbsbIhGu7NPgAQUIqcKbN+p8mESvyLTCcT/y1XXELXe8PCVY3qbUUV5/3ft7JK
iS4TjOTUnGKz/CAomPPzvGlJw0ghcFv0WaKA3MgzmdjuVjrJD5cg+ekKuWWGHd4TDBf+HFzAgn5r
GlepQPvKyO+jZTS71U6DX4cCoXpje2stL1sVsFEX7hRLhtddCbR78gTsEtzRr1OC6QDUANAGvf2b
+qIUCLFdyaF5s8a9eDdnN7wamQ08wbHq/aYOUv12In6WZQKE16sg7/+/Czi9DLgFmzI+Qp2fLLCA
/4vXhjyF+0xnZaHLrTAyrmZhRaQ/Kq8pG3Jpb35+Dsp4gwk27C2LxZEZbkLjKuljOJ5zwiK/1suz
hVfyrya/WQCybcKkw3pbbUWhlddtqZOI5yNQcC4AF49mTDIRC2n5Lv8+28wMl3MaazwmMYcG+f8H
DpFI8285SRQTBonBrqDDVvICX/Eux6MtswUZP1kqHbRVKjl66dq9I5IwO2co2S0mkuDoWPsPPdw6
J81Pw0atqB1ya8R4F94sNhe/lvwdDKQxlGcVgiaCsMOPsXzKgM8cxkWbZBN7dudS/xUrFqY8S2AU
ns5AGwZIiee+pjbtpBiWxC1cW0mAogtbqEqL/WrSx+RVYc4XKDlboa+SGXY9Dk5qaPAc/QlhrFcg
UURCSjnig5rYQ+5VJ1zdzntciL6GwSsbtYvFb5O7NXAuO3pFaGJB4v2DHXWpMsCMOMlZG9EYdoYn
MNT+XW+lambqXkAiTkIrSLVtJngUCH3gXA4vCC43BMxgtalN0Pf8kstV88t+1jiJMTSlJ+J6oE80
1yWkuNe5xiPdxNbr5Cke3zn0Jea2VNurhHB32TqgTBXMZtrhbgp6fFxjvnrUt7+kUsmXCwbjYAvp
tdgwdcPNUxuSEsZUu0rXEJ4O/GH38/OjYrZ+uogkw7a0XDw0i7nc5xLNIA98lrZ6aNp3z0pJ6tfF
d0DXMHnV6pYrsY1HojhzJTWwjqL84nsbM65THqc+nvJmFtgE9VRY6BKGVpCniqa56K8VtPMAel6+
qnNxtIeaSFbggdSuDkFCjHdZoCa4vaNjAvBuiqa3W7MXKel+JK9ivrpPciltZG/GuxVuR0kOvew0
vLXV33iMcQRkWv5+4fGmJ90BGyF8UaIebTHO1aw/cV/I79yeV4mphYysedahy/1peBa7Ubv3SaKv
F92QikTyO0oNf4mt4mcFq2lpve2BNN0z+q9n/8QvdTGEp5DQolVo55wlhhWVOWIgiRJxGVWDf8l9
6SQCEHk4sKPgmzqotGt5sL/5L08/IRmOQtn/IOjkB3SeCvPFSIIS27cEkq9yCy/df9+Ht6JNkm5R
5t2Q1fwME7wwI/qG1OoTJAEUhOPU12lrlvZsiVXtCE5aEKvvPH4yT5LC8cTwZe+XkyTF6sarMXBA
+aKwJ1831KhB+ORJGhD1RW/YPuEmNOQZFXFqUbFVJbXtvRhfHjx3AJFA2z++JFDnBeiuxApbJC7N
cVwsA2sCoOn4Qos5MDqrvYgG5PPxWLt7/A8RyNm7OYi2loS3LJMicPO/M9sEeMMiOmPyawSUZIbQ
ZnLha1oqaRHMVIfW2ahW+soTQk0ZARqwFbLvbZuAjUVZ67ifj4FVuFIHEzNryKBVoYz7XqlFKn/E
kYnTKmknUdSSAub7jVRdVHV/XlqJQPS6Z1jj7YW4rsUtjatz5QoM5NNZTV3NNGoWjnbEcIpMfjel
YF9duUHbR87BJo2m21gqtfXbejShwCw8hbx12WSaS5LVOvIDwTH+bULKDTaxYwWpdBschXrdVHi8
nyowsfU9L5mh1bf66zim6YhqMGX0n6TiAE1JmGkbXyhxHPDoGd0kQaMSCpzYq88/T6xVKyeqSVTz
SrfCFUBrVtZQgMDrGFIE0QCpoTZ+3O0Ul1i9lYcqZAUzeiryQELd/dFJbYJt80go9NdNIFmoHGa2
ZomeqgcMZUgYLzY9OfhZe4veBiXeOhuXjcJh2R+5n1yHQq9E5LfK+hWFE7sqIBGHcY7f9Yj/MIPI
ZmKRKhdVf/opmjfrzcOK6weBbf5PYuw1J7UAuBfV2Ss/U5G+19dwEmu2t8XeIOK98wuG9u4baXoq
/7Ya2l6+EUum5PMRAZkIZg4rgCQML6pfrOqHiLeSvFnpN4hGt9NgHnhmWrz9nshR9jgL3ooaOxSa
Iq+KiLxsvl239VoraE8r4N8TEy/gkVW0L6BGeOoXUtZXyXHtSer8ls5cbWwDLkxUWZpbDf0cn/Do
lFN/vOldOKXWrIEAwlmYT8AyrIqaUf4bZzdmK2c0CuXLltNYf/uUNF//oBkLUqM69WwUjZhkA2iF
VaxsXhB30Aq8QJdHPrAwwDyEgMod+NPz//eX8Ah2n4TtE8fFPs/Kbm+Xs1xoNn4QN1LTnCeYwahk
+RDZmHlBnogS+7/MOvxLB6BSrruXSF+26Pdpsh9Bt0Yx5wABlu93f61hl1gpzJ9Pv9eN2lWztQyW
wqrvpH5SFL+K4MYN+L1zMEAF1ofNbj9C/9c/th/ywSB0KU0FlpA35BOMskoOtVkQdMsEqDFrJKIR
id9ZTL0SHyaZIeTHGvBrPddEcNyNiAOtCFBRoPpYJxuGo2jeQBe1Id5flRRxIkS5xlVi00KmkHt7
pihbtK9WWVK/bpJ8w4ssy+Y5dJQCdKPPKK3lSZmNg7h2dloyxO+FAPw1NJctQX/YnKAa0ZJ0PqdU
WS+mVSUQmgCS2mjmUdy2QEjhb698wayP5emWyGXHlGp6JDG2GL0uedyQ3mkwZwCHhvjSt0LGdfDU
QWhrI2hoszda64WcXw+VajOQNAk+fB2bOcRFNP0Id1Rdsdqp/iP9eMXUrfbDOqt1xGovyFFM/R7R
UmVhdL8iEyuRR/GZvKvdBIiYm4UaN9Q6x0mEXtc5Gh4Ge7LxMGebfZk2T5W7qVGtEgDujhRlEJGM
mz/4sPFKmNtq98AUbrIMYsQyzpTYMjJrdejg+uH9I3ED5SbKdazREyavkTJVSQjaQgHwjVgedp6A
iyGXmx8Hfy1tud8FzXf+e4BxUTWhXDbRmh2rwIal1qnmN1UJ/yNgCd3og+ObBt8hiAkQIJjlS2KT
Ei04mPlkaF1klIzaVC9kjupBAlR+WVAzY/air71W8njTbs7Z4TuvMfJKT5gllobdFUcmpq4kiDlq
TvAmAEDF58IDDJztcJHygWY2ENyzFCVvwGrmqlIi/nSa7kBnVlNp+8mXHmF1slrjlb1vkZoeA+Gb
M6So5a9pH0t8wUEnc3JfD1yLJ0xreCkEr1CjO/TOLM3PrwLr0/rqC8SaIjImLesfdGvKQPTqB6aw
DMKI4MvRNLvlvGdMxW/X59dvBA0STjOWs4DS2J/JMxd5nOP3pBPHwagi+r9XiMs6cKILSIT0XHGm
Jg6Rcf4YDv1NnF1vkxGk6emiUMLdax0Ma0y/4dMoLHm/V1GBOoiRZs6k6ZxIPqMjG/vPL+dIeA9H
kzfhZ841rUes4VzcFgqqcoNOE/ojerXmizPHAKdiVw+HpvKd2p80HZUTnP0/OOJPHP+czFnofsXX
EN4kptEoV1Na+RGG/kzbWzpEovDZQoNR+C1uIsR44DIlluixafAtMGQ/9/EDYda//gdwhrZD3Ks3
qecuEDbPWhe9IYcCVpYJLLdlEcRqUhHRsHYfBeZ3S45RBn7EfpaDcJu6zm/fq4UF+Jcduxdxa6JJ
NbtVa8TjbHD19hUignb5DTy1HvFi/NWhfNZvo/cnjq2g3QgfhEwDKOaP+ri3fEweChlkRnk+4lW3
LPlZHoTjFHquhNMt1yAhASdjOzCrThYMUPSuuHYUlZ0pl5X5yikKyllPu09aY3Ai6B2mr7uMiNxG
/NiAvCT/md5FPKm283I9aahNvSvEkJH6O62uuJLNzWADSXuPeCI2gWXJ0VzMFgR71hQu84QfRt+E
BVa3IsKz5fGONmvWaY+/njStHaSyrlT15uo+A/UOCvwEckkZDpjvGecUns8YFD236xryuFld2G1E
8ftPQFRRJ7G5rgiByLb+vGsl1woAer+99XXQa17mi/nkbjew/ufRGdbQGBzc4n+1zKKYit/hMCJf
dptCS1VFNKsxGjcZeZpnlXxQ/ywSJ7GxQAmPmsXJnAx5R26nI7bI399jU//dH9n1dneM0U1n/xce
S2p2w6c/yj20LNr0GVYJ3fz3a/nN1LLQtacPRWHWtjiZ2ET9J0/qg1YElk8HUKKBTLqSvej90Ice
oNLJBN/YB/XCL/AZjYJzucfUh5mZRA6+sTNKEHT5IrzZS/iGMvTdbWavHpsYJ5MGYfeF3crlorSS
mPto26QHjhmkm7psQgQTHDzZypJZKs32Ri2qxzFC/VYthBlzT3im+zpEYpnNa4fAbVjjuX3kXPLR
qUrPB0PIfyn23cnWsRfWuRUV5Xecq76zKcDHrjjf33AXc4S0UwptnCdGK4NakSvWNjilMSgaf7XY
fhJ51r2elAoR6yYETM7CtyWam4UR52xpHQ/r7vrxxGASldOqZ0YudYTUHyehMAu5Wc2cFxy4QAJZ
EyTvAhv43AC/q7Q2iarCoWCEL0rvqa+krZWi50+YH0FsyiertJTuS+ni3tzO5Fs9mWkeEzQoLBIX
XnacQb02GRtzTpnoAVepasxus7RBWwJ8XdHdECPKm7riKjTjHN+fzHwmFis/GcMGWTd+V77sMSVl
kJajMlOnnUqFI80Swhez6oAm/lUu+OW5HjQILR4dHZA3xrEpaKhsJKumGRlhNvhn12zjwAhjL92S
HTumLlEgd8K7+rXeQewmAaea0cpY2ucePqdq2w41j9LwHfYu1RkBFrXFlQPPspUtRT9LedcFk552
mCMypiX6wSB7xmNK7GGfgo6UoQTgmDx9+Bv7Et79tGbyPtulWI7vX6h6sz8lCnVUEdFC3fQtKaPR
S0K/v7GE+dG1QpQMzhnngrUt1ghLc8aB0IZ3j6fMxTr29kJiBJG0jM3IcSANhfY7b2WU5Uj3zjbA
bW97hwdwumC/8cJ7EtFY2klTj4DRu/jsN1Q0Ufigu/Abi0Lada7jvi+N5ZQJs3P38Ftv4bJGvLyA
vIQ3uYxDfqvExUwUWNdoLON2yKmVDUw3wdetdE5V/98FLmWfHjEW6MeV35rMRPHeuBTpNY4M5Vk2
YACT4yUag5NXocHH85ib+5zo4FHwPLtwBAOMVvXWotrOuq0b1EdPTA9/QpjUYU6IpyQKSj+i12pk
AjbDc5aEQI2vFNRyhCNWtPzYaunlMWSsceLAWqjtv8hNLRFytvgRn7Rsl2SaOfBdWE25s5xffKHa
LGtr9HX2oUCQQ8WaLnlA7GJTp2DkT4FJbBkAoDUBPV4PS2Oliv8e4+BbzsUvwiOvY9VWbWls5Ga+
/SurYBltpiPUi8842xACxKk+Pm59fUiJ40ImAS2p8qSCOgUV0m4dINE9EQtVhjeBKLE2K8mNMB+I
da2HXuZvtn/0hNgcqMGxOgLElLsealavJ9b0puYvpgXMxtNX+ZWpcocynzX3rFNs9h2jhCEsCjvx
RqKF0K9zKDPQAdTdaNeYlEoZonNq1Ch4fbAWbS4K6+9eDq5OGNquzYxKjvzWtFzx8/Z0+YaIJkoh
0Po8S9DSI+mx29I3ErdRLQU19rNesHQ2Uh5DsHT49AnWX+hG5/A2SqM7pHQlchsEKKlB1nyilEyR
qoZMk4Epz0jrev1jQX0bKYAJVerW85LuN85X962OzldZ4bxbxJkJwzJf1T+64SnrIwdVE1gcimK/
sTDfmIA12hNa91oWUtgGnSpZiR1yn/tL/aplFlGGd09Yu8ZD24iC10jqc5Nnh5wkK5bsQV3nrp2J
0r2k8DpsCsFUD2VpqL7wGwQVsQMqNMl9HpFfaYeiXdPSlPftPA7xwaupP269XlTOXtGndTQrdRDx
8UzrvE6p3eocreueuKFdtuP+8zDcdP54z65cFL1VxhOzXdjg8boY7M27qmPaIoJYJjtQziB9kfdE
yeHrHO2VM293IIdyynX1kOldP4jBHe3UE7XWjkx8qA7/ZOi07kthSZQPtBh1Dr71Y7MxtvxGJuAt
qx21altItBwMqMWujTsuKzKn6pgXDlMe5r5LjV8K+Axrtzj2KjLpOUa6sKp5txRogY3F9VOP8MAY
WTCC2mouZUYejREJHXXtFz+rSEXUn5kMxbIFhijkb56O2+8SYj7M4XinW6KZLGPZvPXQOn25may3
N5vt+IsRgT7GKUUW8k3EhSu0W7zrBzqT+VPBRtDFU0oS5xB42VYSCTGlXENdq0ntjARdk7lzGajE
sl3IBs4/9bFtZzBVKgFUjJ4krxk+auGz6kqb0UdvgK7yNVIuZGuFHfdWPaOE91QwWWx0h6DA04qC
6tEh3Mgu4fKLXf9yopfukIIcEi+y0JAxjgo9UN53/ml6a46dAFX8tWHiEwh3ZVkXxF6vmU2/F8as
dW4vLPrGWNkda1x+VF1uBHQeaCe8CcfGquEo3i4mME3vt2UBfK8G/DtdqqlR/gTukBzJBihBeSws
RfZffWH1VEswIjVne1tJ/s2sofat2CMCxkZNkly5C6/PqCJf5KQPVFlRGLfroI36Z2bmVeT2p9aG
SLxtDQbijWz7swcohSgtmnw8QnrIqE0+1NLpxhraPxSi0K4u2KvWVY+yvwIFLGkdRu4fBi7ZIYlq
zw9tTWIPUWCsQnFvSmr1uSJ/ZfJ5GXy9GKCTktOrMfYE0VU5RWhatm3x0tV7MOjk8EKAFl+r8euw
EHHWE/3k0Ef7zj3w/EQOlicykuubZc0TpxqJ1r5ybFXDLjPKobx17XCIJgDn3nN8R/mgZN0RGkJp
MsObdMIgAX2pkttmIgChhsXy2y6RqWDJ5/mqipRFDmOTqPqtNCmMUDcR1P9zLd7uEhO0zj023GzA
dyntlj7ih6VP7zrW1OEXfYl9IVpkh7Cw8Us+tzchILE1fulTqjVPTH7ww4OXm7AhM3MjQ5QN05yU
sR6ai0ffmgnmUJSEfycmmRrvCszQYGPqjN+KICi1eL+mTvOGG/YHIy2Ew/ioB95PM4JlZwR8Phf5
qEHZRubTRH1AkawUiQCQ3gDxilu6VkGkhz6Qh6P1HI5zlHCkRBWjk0DKWlTWCgjNBs/0m61IsrbC
wlxdn99bj3ZLz+NMuSM3IlhrOz5kmWz4TVrbmCYWdUcjE9gbdHQN8a5srcUmg6DURZ5X2xvL9irx
c+zJQ/o/XDd02dg01Srcl8/UOn3dGB29kHDLsaaf+0FbBTcNE1cbw8E62sgwTfXNHSeMz4H31SK/
Qj05WX3MJ49+uQ1s9dGs8BMLLu2yWAtfqTMY2zw99TFBAWcrI4aGCj+ex31pYwiPSX/SGK0ZVEU9
bWQTIvNS9tw92JoyFTYlIN0uMEtsC6X8O3LmcKubFCeshRZsqN3KqaWP8yglHBZv8i31IWVBVDS3
v4XKVO66rcg9jnbBDEOSHCR3Afr1hjIdOiO/JdHu6nvcFEsEEVgre6+WYd4exIsq9I6xNN1y7b7W
rZWiDm9HN0gGmvY1ePh5p8p8pIQXClpwGEMP0xKe0NOYN4FIsql+fojjS1QTkGTdtPKuD9zYLrz2
blQEUPvLwZ2wN8xRHG6an4etwBinz83xD+AL48A+LQSU0psKwOqdH2P+DIYBdANRh4faibosgbzX
QWMYF6nFht7p42XxIeS4xqyRalO5FCDtZyxczK9LuSFnFgMNXGKJLJPwEkZz70A5K1HJdai7ZvM0
tlVsNY0jLePsJ+617j7dpFhxGP+slHr1E3PhnfDtYmaQEFoaenuerQwJ3q5WgxvB8DgL4attSgX2
R0hEQWShoMFbenwhws6Rtu7oZe++HpSmGavm1/4ZdLSCTUR9QMkNVZEjb9qrpYAIogB2+v3Sn9Ia
0HvhzlwoXkp1I/ZoYSYRga9yXshbGCLDkHNhAkUx1wL8zGzCNue2AYHdBVIFq8IGMK3KwYzdMQqd
oavTVpaXzBrNPyH/DzlHONHX/5ov46y+b+VSD8qnJTbgdmwn850rjE0I/PSRc0Ov7QMKwJ0TNSRd
HoaAXKbuVfzL79T9/4q+VhstbqrWfjAx35AOodgq7bcYtgnhusadNajYE2Fu5YMMQe7BXjlVW3JR
BEiq+BfGu9HSM3ZdU66SHUvzhABAjprU/L6+CVWXfKGrVqAmGf0Qq038eZRp/80uHCGUvSeKIuF2
G5zSMzbwc3atbRjKuKUR+3yhKRYW5N3URnELAQUF9CSDoOtHZFGahSMlZ2wR0JYFvJkYOamZ29Y5
haFBycnMgojMJszLqj/EyZETFfepc4fkcwSP7YW1aXQXErxh1HN62uKQHN2RlQaANJzXgXEee0qH
VHThrKtB8Z85aVK8e6AhoLN/deAIYFhqnf70qO6tAdQksxzJS01spKl+UC61idfOckBgQ1Edm1Tk
qDX9PE0VNYTWQsZW5xO75RRU6jpZ3YBEIF9yr01ozjbm0tXQojr5V28cymnA06N2fjcrh2HnQcQN
YP+pcqYC5BGPeMeFQVxERNKprQzglEmvv46/bSXHMRnbUzQuSCco3OVNIKNltl4vdPBLcEhLAPRR
RsCU3KZdnbOn3ShUdPIWgvDKijdFyh0Mb4zCVlI0jB+0CxadYFGN9GVAmsxc4P4MNI48Vx8+ptgw
qIQej2wqzhAk/tvuyvovF860eTptQCEC7JvYKox+7o89xMbbY++cWujeIEbU470pSQXBVnsCE0CE
vco7HzzREPh91oNynYk5zzGEvAud5t36OSUaK3Dv5HaLqx6aCeHV5QL/L555Kj5GR0KeLSP2g+3C
5T5WG9YN0QvbWGP4DSChI0GnPu6iA/FdaL7dLOniUVU/nu8BkxhhHevXet9upZRlS52pqcoBbTse
nxzHlHJIXvECPI1mzRkpewk+Bm4a4AkWpVBHkfTJhaXakIWONyRNLdkrdVRlz/tpABUN69VHmmGC
PGl9u0tWSat0MyRGTIWzCu4/ZSUDQxEyVIz2QTL5TCTG2J/7pcrY5O7acjbIWOao40xMjeN70zau
z4hDkUKfAaTkNMK9XAA8baRxLhQtQbFc+fELEJyq47/wt1WJeR2sbwj0QgEvcduqUqem3mrwDuig
CgkwnIKs5vZwg1NhWK+DFKpVBSO1RCMlBOepC3fdCKgQQ6Y/Ee5M8gxhd6WqXaV3MGtY2/pCoeso
JR33n4xfExBwqLX4kO5+nBsMGJb2AbjCUEtlHa98/wix6P2xNSuZsURgMcTAub/9VGpYcwqOJ5K+
mKThLgEHJtheci6aoQJucxLRLPC/nPbssvOtWCarvwYsvrci6ZmQngHvg+HJK8V/6dgO3+X7brk+
wLP2TQ1kg0vxQ8QxjyclKt4H3iG2rKTtdMRlDvi71xd2OmJUEh7OCZOHajfiM5n07yVzbuRgBpq1
hPQQKm4Hi6I6poIrayBHmW+/kG38EAwT13saAEUBRFKFG7fpjDUoPqKNELRmBt57MebKJLEhKZQm
HZ+iepwDBLTMagETkqtWg5X5bHGZXtA4D7xlmgPK59BHLnJf5/WnKbLogVC17QwtRZdEazxf0XWc
17wL8Nswn3m3sti4QxmKF5+vhFmr67l1kQKwzvjzZ9im/hbc+V7ve+S4kQJl9lNVPL9LSoxAnzi+
NtqVRoELrntu45k8s0pjxZNCLpA8/Slo4u8+MG/1HUZKkdQ0mNiSxD73I3iu1SZ9+51bKx/WBmMl
hEu16YDU/nOcQPEdqUcAlYmIeAXrpFDGXs6/qwdzHge6KDSRDkER9vbETXXSecVg+q4HNTeHwHpe
4jelpJ7LkJ8wx9MLYwyIObPvrZcH2kcuxkFT9TWziHA2FDOqJEajxig/y8DMJWrM/En44XRmIXo+
UTeelOaUzZ68+bYy5P9BpJcUG/AktPBif/3cvU+3vMmuM25WX9RYx/1uIN1XWHAtHVavbtrHNer1
AwcZugM+WoS9HMj7fUs5ESPj7rVIga9OvpeHGjsE8T+y3dg0VxX101YAHSL1q8hSVMKpxwKBJ2kr
wWlIXV3Pswpz3YcZ/wzJ1wMsNYSVHusRN5lmmKH4fHJapUrqolOagZFoZt7G2FaVnKkXmzcL8uUP
fohLrxWfRu/b36RNNe2e5c5NIQUFmrTGNtqxJ2/a+VtOFMLYP0mEMfzenpWtYn8bAcGig6G/mg4+
mTSth7RGbrhWAhqkr1e+ma/8Ou00ypsCsq8LD7oEL6uQTO1V7K9hPsAA7OXVGSLttX6HdNzeVIxK
Wep2/37WEjWyP6ENBj6kHrE+3erlbDx7OHOy6zE2aygS5iOl/TIVPE/4dmo4P3M5mFDuVUOfuLjV
DDodZ6zJQimQVxbI1H6QPWwKjSdivEZSRzdAPLDOw2Egp0DIL0I8F7biylrD51Ickmk1rCjmgqlD
5C+clNEpsb9TPtYalIcXns+Wk+tenY4GAY4TldxhlTCczLTOBRsggAdrY6slqIv2EyOsIn25xthm
X8w4/DYKarbsFOF/E+NsV1ZU2kR44iOj+sXWSq7U30Ch+KJQAzPLK8+oZNqDxP/8nlqlTFkkf00J
m9TGzn3LRL3/hKE+5MFxB7IeATvkLBV8e++1wyWWiIZ5ALf5JDsXdZvRweqbAJQWwCCrIv56VGgv
QtNeDmIIrUgygZfXCHqW4zeTmO/W+J7tniQ837h2iTTiQ0Luesu6b8xpSdo+IGf/cPn1VEZypJEk
YUj4ejmWd6MlvKPJP7g541YdG5cLSgJ16EgJy773Szc9M+JC6N+s5ZfcCptMFSg11KHfWUx2tXJO
d8M265h6EDX4imvxVU9SXQuaL5YS49kcaBHKM88kZJRQ72lfeToH6LtaMumbP4Bm5aHZbxBykw72
1yWyT501t3cA3iY04gJG19MsomUcYol3ugABBiN9C22iHacGPtvem9jvtGQseKvnrOFsNuWbM79t
NBnn5wnXtep9NAcHk3Uf5PsPYijsZCN/KirTx8v5BGa0LmLpMMvEQqTq2K127QKXeGM3Ou/WEMBo
arij8I7tear8SOPnq4HaxKVnuELYkOSLuuHjYuEzQLGEBbwzDZoN7/e5bRS9CDM3fB5LAUitpPHS
TT3tzGMyBgeKQaKMkRhypT/2GstUqQSKE6/QQnFlldxKz499VrcccU+z6ojIyChjmdMWmwGy/59x
8dZMHv65InycokLRU3KNcymMFeezFSioUmWetK7wwlAMC8WSIXo5hCC3w00F8AUHNvcYUhJeMuvx
QzTSvWFN0GR8V036gJF5GBc4UMgBnPf8klHBq7g1K2L579ZXw6X+zvPEDSWRR35DCUuPLEYCGTgh
ExvE2ysz5ocGJaTKNcA5oW/r+/9dXAyUimODnuz421nIFWP6pvS0jLwE5cJyqpr8dXvyHl3wlKJS
B8/QIXEHGNCVvTkOgcXaoeal/+Q5Hp0nLdRQHO2eoHsmPSqKLE23QMxajaBGjwRQ/joVbCcQ/p2k
crWHCFyrz71wN44Cvbqc3VgBq1HzNzvKR3CwGdFd4SbxIqZRK9dSYaYVQnHwSBU4eCI8oe6khbGO
jo14VOdCeoC1lHVtdmCfRANqLGfJ+dcqhXE5qoagukLYkiO3cXNLJ0XwJURoyqGn7egOEKCSk9i2
a+I6RG/z6iBsl+4Tj+DUBGG13woSUkoe5tdrPozzH61YL5kOVBvN+uaBopAGhDIapM6Fv/L+lDPP
D7ssmuaKQFvW5BDbgE62wn/U5aO5557yU7wdaB8VEP0d9/3ZTiiJe+LmVoHcqPLjkHRoE6Scej3w
A3yznPBtQgiHgm6rACbVZCIoZoUOaTN5Zq5eoayxlanyCtMBcfx2JMB5RFLs9MD94eX+wFDlGmmP
56w9x7yft98RfilKg37F0+C/bxTM9R8i07cJTsjJInmhEm+/sa7oXsMamvCo66lZYuKOrBT5NRlo
zzzLQwgwXe+rnhX17wAI5B8wis3C8keZ9peteqQ9WrMRzU+QOB+F5p3kCR/zvrfPUvWRE/nJO/rb
B+2FmGVCCGGlb8MXGJJQKdIRkfXHLb/AUjjRyHfqUjA8aBnwPENU1txXvamCkr0lIknG3Lr9QIiZ
0JtJXU6wjae3iqQ1+Od0/zKtcLpBYqcl6yj/rLAls7nuXiA4opbprB7ZObRvUBp3tx0O830fWs/B
01gRpJ9bncsQE7IxDwiOnyfr090oRJsW1s3JTkrpcXpEdRtjAxbhz2MPrmX6vNh87RCaOIKUqoKf
VpWJgYLyN2vw5HbpKmw4qlhBsaF5foa5Or+ZD4FL6WQ7d5nVVFMeFyb2tJlFzGSqLmRYotsiqvCl
lcg4aVG0LbD8Fn9kNkg+yh0W5LEjomEbkpa+GgbulygBPotVUP2J+9JtLWUbppnKIStD7eZvZiA+
Gj0G9+L/3V4aJiunfmMaktHL7ASbbg1bTY+L1wtEpSB+rmrvNHTbdHgLGDTK7EeHyNoGskgcZSMT
SmZf6+AfLUrjWWYl5MoVdFHBriVcEM03APjSOVDaRKH1FlJ6cRGIUDp7IH+ruMhzHP3V7FJSbyDl
cg0JPpT86NOvoZlBmrf8AbIrN/fdshkSInGonNl5hQsuWzkK8RYzuuYUtmPXJdx20DLpa9SASIDi
vS9iCIui9s6Z0mIn1r5Q/Y/Z8LPIESV4i2Dcr1g7x+T/q8aO+9abmwLTBkXUNo2OkJlZ5EJXk/+3
EIKyQAg0ZW/X954gWKe5sgM0slehqW9AdO0IrZKpF5pGbdBedU2MPLfkN8vahudYmUeIZl7hY4cH
sAf4XalPtctD7D1Lef59pQmRMsq4NGVtOKqCRlMIojT40hAkHOM3ybM1Y3756v7G7rvNZaW62U8Z
3ED+3dTCfS0pjtPNFOlDKrQE9esRG5rMcmwNQqkA4byrQaA2QQ7Sp1X6QfvG3Ev/NSpYK9NwPRqC
OwUeF9CHyCShc+vIXDUFgRC5MXNvC7n1fwOB99ynJtB5N2nDmY+VihMaVJ3LqpQJR1sw503OYQ6/
ngFtcPUQm/irCkcARtG+Ek9kE5Q7dIoUPTbrY6/bNM1iD/INAU188vY416VuxceZomQO2V2Xtxt0
Ur5nLRRU/OAPA0LRgAIqiLFNr4JddwsYQZKX96yuJE4NWH4SUsxB/wls1ITNu66gzkY+wfE+cVpG
PO1xj8dGSqkk/Yp3uXHfJ7oCpyHwqBAX7JmAWBpxFY8QZbtgpLluMKCV9KNtOVk5Hw+eTKEDNuBz
buDlWakdZe7TxMv4yfbcotk7ftaceFbWPp+Isrq0zfuTj1lOu4ce7P5ZDOmiwNx/od4NYvuGWDm3
OdssxihkHxT2dQlL+A0uQ3tJwBUZ4hBX806WOS8POqsDMB3UX8hl6gCX2OHDTYahTuhfQAIteED3
EX1oOKmrsTHD+B+nQi2FSOInWmVz4uMcSTR0ScnvCqg/Zxr92ssxCjGj3wz61xoyX6gUaqkjUMq5
DwX7QUHmjN7m91F6/nxv6kljGRo3M/gFKOp+bsAXtHspuIrSkv5yLM5xbMFAK8xK8g83X8NQDVeH
SoqClSeCPBVioe4YfOu2hzjV3eY1+V9jokysKwlH0Mg9TyMYB/ZK7DxaSYuB83CPV9bzBMTGPKS3
KzZSTlztJnxFTWR8Dyu5+zrLLVvq76VSEdCHyAgfk18po7bAbrT+CebKEngNzeOIieWqty1ejtyG
Pj9kxYI8HcLZKX1GoyTHws1N2dYCVoYR+yj4S6AEVOJXXaVELMx4tROrGsmZy+aA3dVXgUc1Ucfx
oCz885+A13VUz3wHBIcpkkReLkcF0vq9u2Fna4rKJOb/0taqvrQva+d+b2Eud/ZU74z1M+2HqdHJ
wMBkhctbanFu/V9cJzARyHBusS7ycboBJ3MDnkGub1pcSUuzSL+v5aVJbNX9+LovLLgmPFOWjbZX
7ZT0tXAujAznvol1lU0ehR+GrB2uayQgEPGTSndMlvvSq3tqgjTDmHO2Ky9U4iR3tkM/avCSGCCX
p+iGB30Swp4FDcvki1hwhJ9krV+VCEywq4exy2i6xPcp6BGyh/FeMAhLaH9DvhvrVnWMajeljz3i
X4zXuh/HTed92iha9rbXrAVEzbCPElPVfxW9P6UD/FPJPBlMWRpXEOq2pKP9F6ufFdEsc4JtRTIS
CIzrMH1ruhi3/2DMKSv87AYoJ+ejP3hsAeJHaT4LR/UjrcF8EWTT/eqRvSBPolxJlVwzh8gpxhLt
TBYJ0rbzbVHXl5ZLqktv1zZ6xpc5WGwlwXeyzL7w05RwZduUkvaa+fDqxkYXm6mXJFrtDC1wTA3B
vMZzRtcTCCFgqNmpBIu3SAW+wi1FkkloRUn8XY5moFo++bqY5Q1dcWm20nRJIUEBlYfA7pS2bsMZ
1JOGr++6eBMysCIPGirbL52t/OETvNbgtERM4iB/i5XsOj0Hd/EC7OaaYdRgKR5+MMr02Tp3CJNb
+/hHVOrURCZVTJoXsuk9PKjcD+bUC4zaJ/sRL/DN1E5YpyUqezWD44PC0+UJ/Y6eGfDe3P6Z/74U
hCvfDlzNcydarNXlu2cASYQuPHTwAeu+YZaogcqcQZ1JMRniJ0oUt1mpWHWrPbE0Csep5gkdVijk
cmj63zS0PehuyQy2OMmLggb97SY/4hp/uCWJmSqtZU0Tm/n5D1cnu7iptUp5KOBXfNFgeMfcTwIy
fYMpq1JigF1dagzdR3MYZ70qIEUyiqjYYW6lh51EiS+pfC8if1r8DHKEhGqphpgMLJUxIrBr/Rk6
BRsvw81vdseJ0C5rfrqReILDkSbTI776zTC5I1IZpHPnckc+QqVQxSXgH/LhCR5nlK2xkDp/5xNI
Ewn02jlXtxEAip6HxVvndf7Wm2NBlITQd1VLIgzzYfYyYI5+1mh14kzHJomEYOXW0Ons6sZztxox
XFFpq5pZXpTh02eDPTEwGSMGZpfk0orrZDKyedHy2i6XWeuaDUwwSSdxRvhhlwlZt/+/w3AxujXv
5Cfd7h9w6AChmpeHM8sSBLnR43aDPpTHgwF2qiKTyObGQ2mCSNg0aQre1GPyEER6wfedOZqVkgYh
bSS0JFmjNss6iONrm2nebcbgHf1GwpOrnlwtjg8PBNuOY6DxGrPEGy3H/fiWxbyj6aDg/3HG+Rpy
0/9lDUUUd5d1GEwo6BkVNjkR6lR/NfxVZM8oRK8bLPi2Te+JCfXzpLMvPYJapGsJNIbQJURFJRHP
rlR8CbQFbbv5HjTWqc2EAiib5r/9KrDoGt31xsBgGAbtTUmo0rcDXSVWWg421BsWZewqolnf9484
Cvw7yPpaXV+xCHPFnzwTPpIOH57W5J/7wEINts9TO78sAvlQ66K5Zwb7uNzjPbjLVvwU2IsywTFa
hzx//E0fDwodhXrxBXzR6BQqrTTNsBh8AdMt/yWTYN60GZkSqhj3XEQ22EFCj6VDrxVrk8HSiJ00
L0TB1S7PQpUk1cRvfGZIKFzjCgR4pVbLqQhp0CkjpNtzUzbFZwRzlr43scw+R52LwyBC4WT1+bEq
DQb8XXucfzjwUztBsFnQgSi0NQV+FwQASZPjVFQb56Yb3I1mg7lPwToNeQhZljulw7JOKeejvppb
MR9bG8YKEFcn7EgLz2ZCpm268+9YQUc5DA9HnOnfSAdqqprzp5plbFTuSbySqHZ5chKw1Z0XuYBm
JlKxnII2h0ZpCas622EKf3En8nZxTEBGDWV7AXe1DwlxU8BbYpMgwH/2fGqcvkoGPXo+Bw3or2cN
1JUxQfi0QBs+ByDfzWcXDh8zcAAYbvAme4TWQgAzU+3q2vcE3kQylOgyWZwGc73cdhVSMSG1oOKH
f6sZXl4TcppyCnI5hFcUQJ/16VhO+3mszPjj6fg0c+qzOnCA/o04meDJbDs9TIjZKCLyvOUhhz7t
DoiwqKCEASmM9xKEngzdVFkk+eK1NvjPs2aX4CZjLV2Rdlr7m+R8BB68nJM23DG1UsE9rHRGK0Ku
V1LAAbKm+kBgZUKPSgXmyq/r+2XBQ3FIqMBvhlw1kK1I+8g/tHZThghvvMPy7SD036Xn9An6CY2X
rD8g6dpzRHXHEncn0mkE592sCVi6EF/9IyBE0kO283dl9f7yCAUpY4MgLxTWKD5OeRC0T8VGmk6m
66x0/vcnCCRjqPgPgN63c3R+EtBcQAYzhlcJGtksvfUj1uTJcKCWPNSJax+MCto1eHuNj+uRuecd
AdFFbjrPZ4aE+oUjYLNVpt7N1yRIl9sSo+UPEFGhUlM03eCCGyhdHHMW3TU4veZBPCrmYnIMY/UL
Z16XTYkVS7hWL0EI9zFb2WkoegE/ECdeLm+c7KdyhhPmJ1DDkCPXzM0rckFTaRSjOJkTQ0PaShmh
tnVqD0jS20rJp6Aly0yPxYEho250KPjicE/O+CqzI73glrs5mNhEPMbDNxRi096y5CcQKpYNoAVc
eAjf3eyHA2pJEhbTyQRh20AMBVA1uD2goZpsXyZ0hF8wg4Wn5+H3lSZjIIOvmD4e78atAhZ4xDsK
HKR0/eEV4NbGtwjw3w/5Se1wlMRM7WEkGKgLLschg3qCa+m28Dxv8757zTY0db/uOtf3zAB+TXNU
dRNVyoRFkWMpn24jE8A29lCqpFCftolrRcpl7tOpQEGy/C3Mn9SUIRUvU3rU+8oWT0/zE0YqFxJQ
dQz9WTV9e4uXP3hQwD5UbJPXry2lg686Z0//lyU6XN8BekKAGlnjbsm+S35fKzfQSbqbashfRMRE
JlNp7ec/bmsrgc1j/yREnxN3OEas+LfGe3mjyrobXimZ8ZZih6vcB9bcfWdw8r3wZeFaWzsqilyV
X2umIh4YSAWvhbzl1s7UgMv6PRDtaDRwT/K3kKN3RCAAa/4DIWpqQ3+blKIx/o8/H3CjoiY6vrOa
Lxf0AaANTH/ZK2HKGwSX/Z9TAFG4lRhvT5SGRtLM6Zs+Rw6Kbzk/FPpwwbIVcevQ17z6AW+fjM/s
TxusdG0q3oJN7INFPftm7TAze/iNnDep0fRfFc+cMBTtCvoS9WOzoxQszIqP/giIeujIQ+10xBID
0YwX5s2lrrm5fMVA8wghab7O8iIQlxC5zwamUOUzZjGQ+bvDH6/OKlQviz7JwTRwKVwnUP8bFV54
slL9KQEDg6If5r9NQkGLMCBa0YLxtjhbZE2kq0JZp+n+B6Gc4/JgsJy/NYO9XQx0E0k1DpE4YePq
+A4UATrqQKchk2NdxuwcLHnHYbvdII8uXdpKdCM/ubm7cO3XyL+h/lqp4gYfsq4wCp7fGLjJxiC7
7e5SVzlMU04WZD2/BADrEPY9TONDDrDUzCeFKDzwGmZayHDkrhy43Seb5beTFclNW2YyxFgUWJOx
3/iQTJ9A/U+ribwyP7VQe7OxxwA+3PHP9LpSyDxj4LKd4AmINz8j+RafLy6eWg0i+IKe56uj1v8q
YXi/bXYddkZd/8QpuGrUTWvEMQSFzR5bLkkc3VxJim5rOKMQ2pDs7F5LA/0nAYNMcOBQpnQSwlDb
t9yBBMp9dkDs0Uy2obllSwFWdOwqCqPv4LsNupDWSyhiQ+CUlitCc1eBBBAx0xxqzURWnF0wBAw+
OlFCmHc0qAdNmeuNUBzu1ZztM9HsElOCtsPNiGEmPTqPKxXT3zdJPSSLUwvMwxTH6uKcmQQI2ZMN
ODaMEuCGYmQ/P1f0TQwvENNWLfUKloQ9/Tp+R7CCrbuVMSilsISOuO3JFzp89bnd7jgaw25uAwkK
GnkMJrYVCnBCmw7Xq2x90ImR+AXxyjb7ALlVS7QrX6c2OHFwM9Jq22+R6hBFswmTJS5+WSvfCRqA
NRIoH/aVTaezSaih7wXdbCyigErJ7YuOL0IeZjnE1kldLEnZGQT1RnNg1DazXjkrDiksJjw0CNDf
/iepTZDNyBq/1tSiaKUT/uBf9miRM6FdH/66ZYK10edEvs+9i3dpd1hUItkR9Cw33WIzhCysQ1d+
dZ+OZBFNM/0TXJvuP6R7l2hTX0mtxcbfxH7rsHRSFitxf+NSoZuWmsgQxJc87wraATbTgjlbft//
M1SsAVunG5jTjjrkY53zuQUaLeXTNS1MkrYcR+tJZQV4SzVT4HHj7F9eGqJO3ktaTPZWIsR8lwo7
QkpSLrh1ZP////SkE5UOo5dulSsd7SJ/1Kvw3goeh619tjtc3Rih9VBHFIJf7O2+bsGj+wtaBRqg
lMEF3H6eHo308ZRNcEU9oeHHn8s4gUSYcXGdQJIilgdo9DRoLaIr5emchaHrfGL3AyY3+2vvuGzg
DnjNm2FSCos49Gf6piLkE/8kKONkBjTjfeLBnfpihpxUTD8YKLrDnRWJFFemZIK348nj/o0blHLu
9E2LVyL/Rv7pwOoll0D0EYS8lIpPI+jgB+0cBt436hp1sbidNVkcwZgBszcWT+jqj8bgDfeBdVXJ
OJvklEbvj7VJraNZk5gqCGRSZ8xYRq+0N5sH8rdq2SFG+hMFtZCIgFgMDGFAVtQDYR71SWNS22sK
YWvRGB3X1UOApQAC7fzIHTtdLzakJx4nAavFS/XNiDPJMw5q+CYwDZ6Qf+1v++HzQJi9YU88UCr7
pG3o8ABSc4gVPTUx89VRuGB9cltwwixGN1Mhr03y9v9z9sKMXN0AuJqSSOfh38IZqT/xqxsiN/HI
OfL3DL0PUek5+A49LouBcuhAlTezvt2qa4RHd0/RR5yDMITba/59rLv3spRRDHBC3NI2siH3yypI
OodDvKfSIEYeopHrO82Kgmb5f9VqmJivbjt/MXVj62lEbVMuic0jis7mtDf+4+eMBPI8q66nKyQC
uYV4i/fg8xCynbfpZcxoAvdeRxUmM8ia0UQYquNIFyxqGVPRvxw8We96ItlsIq7eevMi4lAFUD1l
Iw7aLfc3vNoHkpuJWlBYpZl7ll0wZ6lnXMet52pQC8u27du0eWkzBcB8ZPo2dlpHPirsdUprbDaE
flSYPTwXu6N4nPUaIaTKgZYwqFFa7PkSiroiN5PuNWWE40hViIGqZlPln0HCzYSxqS7HdqF8mvKb
lNGsgmCyCYC/w/YE3KJWimnpTT9aaPwTVoPXggQ91paB10D3Tjr/RhYVym4Yv8K9xawUicICWzRm
LsOyfg4Mf4Q9C10smKFW6kQEOTDcor+ra67tKAYVyassk8J7lHqIN7EVIyKve9fPAu9ohm1qSKVW
4gW94j4UKsFgwbgiH5Nji/OiU/sPBMussXUZatGn6bg12kkqfV3vFPCHGmHnjeDyIKJtinakxVYD
xD4jWlj9segpe1Ngd567LqropPvguQaH0/j5YjjtFb3O70w3Sd5ij8KrQV1c7MWOMLMdIB1Tp+wI
7BdYgfT3rSrKhR/pcbaO96CeURJ0KgDBr8+eHMedkrXbJkbfxrZWg5991O0zTmqmD0JwLxtME7eI
U6hTVPCTquwTkLIY4LTfgmN53Q9SSEbeT7yJdE/m2J3t2Z6IERJDK5dc7YoQYgj9I5ksSy2nDQJY
CKx7GPLj3er74yvMoXTl14GqgzdnqTCzmbT5xsn732EKHNcpz1uI0p9igrBpB0cymvA/5jkZYgGK
Yc/E7TuY+/y7nsPphN18rq5g0tqusKTNYx4tkNjE6FYqD9ZVCQZ3lRLaa3zXp40bgQk90imV9f+p
wymKnk/uZdt5iUV0qMa5ghX9gLJ59NSMwsV50jYp5TTtRsy8d6OvgCOcN6DoMvJauGGRPM+tPCJw
Pj+ZZ4r4jERU3em8r5bpSPDoQPZ3nzukh9tTDTtW3l5YBPSPZAN2ogf/3Bwmb3AGUuCqWPGrxTeD
ux2foXx1zQI/1KN6SszTVilmdEkiXXBEV2RjtDqRg31i/hkGa6E0pP6dwr2x3SeiqjTHxZ1GsQrZ
xCIy0sEMYTXnqhCJnNdzxTY/+SVI2R/kIAs/gO1jlsN2X1d6IlMJYO1rOUEPafy4oO2lmTif54JU
0S7Pex/Ypyp1+NPQZY+OtYoW1VBArDEzvkzG3uMx9WyelvgYfGv/20+PTPMENJAeDnJ9e/Omzb11
3xm6EOYpcWw3Avte/XFhX4XRTt1qyUE8I7KecmL/7ubPwHGERL3Lq3A6Op8VBtuL7tfDm3Ea0q64
jKcYt0bI8ujC2hR26jTflNUM8mV49mojhoJVlE8+QE7B5dkc9o2LqUSRW91yKEWn3MvOoHOWUfMr
YEmQOqTxEZPuhVilGIoke/xnQTWgBy+SaKtbaHVn9beqUsFNH6tYWpxtL8UfsJBa9HB0N9s46P5S
HgDy9//fAmopEbxZljuZNQBeb3sne+xptHjxGn8cUZ1gBPbcPy1iytSt/+XpGY4nHHTDbhLCBniV
mJI8taWW4SG+rCgMrvv1/2mSuMTz3hWZ8Vy4+MTuHDHCpHOrzwuytBeKtQfNBiLXgt2JXCJG3o7Y
5tYyMF+QLDfSZOTAgZiEBRntf1lRIVTh4IS14fzxocq9RZi4cllGWwW2X8+msbpDClLTDUNIl67X
QXq+vRco3cC4AdV/MD8kNPez4LkMqjZyiECEI5KLzzStNu6VNVPZ//fNVRR8rPH5VjvqFcnDEHZT
zimSoA55Kswuyrc13OeyQqJ+f1mCm3LnJRSz0h/e5NI98onPnUAMhOJmFtN8V/0ek7IvYLOUGX15
HtdMFfRIpV9wBLosO1p+iQeY0WMbEWQynDdp2/o9dVRJzvVChpZKRbHARBvHu6NqPnPoQllGoAPJ
mKOTj1wGWhJAzQId19eznWTSBcqCeQTqqSDTuOAqyB+uYM2bPYAtfaPa8GP6B7zVIzej9XqJxoWE
Z3PMZdjq1gYMwqQuwRmTbqB2qqWLig21AosjcOPokdHW21Gp0XnO3wNhCak4PZTfvCJqWOpWSSOW
ST/FQcuGgOFbSAiNz2KaQJXk0GAM4N2jl6SiRHiNWt0wgqqEqftM8ZOBJuWGsYa1u9ETc+1KftcV
yPEx7h33ykHRwAXO+RD5adIPRPKhZwejVgwHbqE/uqyuzMNoUV7Q70OlyhhV4lKwDbf7CixfPbwc
71o+NUvVYbi15pFVWap6uHft9ild0KjE6LEIxuvUsyZ0Do+pTRe/r9KV1eNcEDGENEIU32OvrzvD
rhEU34cZuJr9fyPe3HBHh116KF5EWVBqv895eAE08V+0fLqWnFr8KzLEBJHp4NEb/NdcLV9P4JCq
avQdGcQpLBW1jXbYqFlnzSX92zGzfq5O22DW8GC6NoIlx5xHEYXQzWGfODL9GuXd9CdMCYxRO2hf
n3FJfIdzLbxuXksJSl0FO3MHx4PDj9TVNHaSvQXdnZm645aUA7oD7OdknURiUQSTwK3Cy8PS3eWC
hLiclBHu0B4cvcSpoVTam8h1E53O5GmFaBNWOlTtrFmay+f1TE5GsCExVH9+18qadTNcpBD2cKk5
H8fcZ6xqpBexBBIHDJdUaHpO7xe1dFV++aPcIKWrLjS+R1fvJDgyoB9C9rs2fH/UaYV/vx2TJk/Z
QlXkyD1qab4TsNTQabpu/L/Li68CHVH5dCnSbCY7WzzfwQNtGrT/VaG6eUj2gEIBxSTkcTq4TgHU
ZYDDzQzZOcVIGgT8KebGwCOEFM7utrgdVuq7TAozbyqIuNdcZpk4CQ3Tk94vdikeCzzOJXdZEYcu
D3Ovsh8HLX8nIj7DMx/myCpQaO57xVI+hxYY8DERCdnVMqf5arIbisOsvjm6HfoSNd1d5brjrYIk
3TpnhzWYVpkvtKd9OoUMAarZJ4+KmwEO7+n2smTTDtT3FtQME8IudmwOR0t94nWqnrG9CQ9L2IF7
5+XUl7iJySD7ljToI96BMGTikegFrLUs/EVqQ+DA5YY4yL7al5aGjp5HFi5HwaTd28TpGDWoePN8
k8Iho3MTrnA77371IvXSJFWPAE2AJ+AXhq6rPsciuD4xDXjmQlsBeNJVbADajU0b3xM72LJp3ZiP
bjqNrHd9h6Ft6YBFdd445+ibX7f0/Q1H1tHbGaK2vKqNDbIJ+0U1ffjW0YCrspmbScifbozdjETT
PTNxzUYIMv4w0ljyAiVRK0D/KGVx6TiDmTvekElRxKWa6IC9fb9uaI2Jsbv8VpWEjHaTB8uUiJmL
4TTuyxSV1NIOPuqprgOyGulayJgWLSwMV1vC11HGSw07ZuYVQ3mqCmrAkYhlHK99m0uDMgBpkcva
16R16PxvoS9M8zUsitkDp6P0iIcknod7crRKD9gsFeOwJ2/t2y4wgQYqU1L8mmC+oO+bjpnm9fRI
7E34aLN8Ylh7DGeI1RSzV80KRnSxGAN/02UHEWBMjFynB9D1XBTlTyZbBP9PZh+PozyVOQf+HQ7z
WP1ghJeMAp9KsH1PK1EKUFYSYKrwcazYIKw6yK6GsU90IAPUKReeyJ1TOlVBOyiCMCqDJ892ApGL
9BF8Ok2tBEh7ED7JQNLI/Ixu4k9ot/vOIJ5MjRxG0er3B9R+JvnjgeZNi+5mnHv473GJqm3q2jBI
/8hi+BMOq9zQveXSttf2Jyl6Ay+ZC36/QYq5MQd+Eu6JBC1qSg+RPi9bY1u+f46D6IwqXJn4Vt20
2qvTJ/HylyCqb8v7XHYBpwvFEWc5ZnHV6FbgjGo+OSkaJYaVEyCN7uqSCHdFnioYT9236h1TjlVY
5SAIF8PICaJdmd6D77FB6GXzsfCwDvdWDAJKWKYtPEq/04yXTp1fDECPQ1JapSVULGwIe70S02YY
TR9Wg3PDjsTRzjvXTt4t3r6sBgxAXKAj4ka92f03XhTa3FxBxQEbLkPfguXC2hQB4wxK5YyD0Wny
Vr5YA6zupD7ttf6yPwYpwR1g/vBXkms1UYLlqXE48MgM1JsJnKRJN5rBOk0Di7JhcoM4J7IJwIir
aIzXBASN/gX1m2h+nB7hJsPiV6x+A8391Szjyzxeem7p5/x8zEv2a4XbY/hZNJROIIzG5KtWPgwp
09Mdbbz5YaK2oVED9Q==
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
