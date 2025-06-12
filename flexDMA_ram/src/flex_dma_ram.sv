
`timescale 1 ns / 1 ps

	module flexDMA_ram #
	(
		// Users to add parameters here
        parameter integer MAX_TYPE = 16,
        parameter integer NUM_TYPE = 3,
        parameter integer MAX_INST_PERTYPE = 16,
        parameter integer MAX_REG_OFFSET = 65536,        
        parameter integer TYPE0_NUM = 1,
        parameter integer TYPE0_REG_OFFSET = 16,
        parameter integer TYPE1_NUM = 0,
        parameter integer TYPE1_REG_OFFSET = 16,
        parameter integer TYPE2_NUM = 0,
        parameter integer TYPE2_REG_OFFSET = 16,
        parameter integer TYPE3_NUM = 0,
        parameter integer TYPE3_REG_OFFSET = 16,
        parameter integer TYPE4_NUM = 0,
        parameter integer TYPE4_REG_OFFSET = 16,
        parameter integer TYPE5_NUM = 0,
        parameter integer TYPE5_REG_OFFSET = 16,
        parameter integer TYPE6_NUM = 0,
        parameter integer TYPE6_REG_OFFSET = 16,
        parameter integer TYPE7_NUM = 0,
        parameter integer TYPE7_REG_OFFSET = 16,
        parameter integer TYPE8_NUM = 0,
        parameter integer TYPE8_REG_OFFSET = 16,
        parameter integer TYPE9_NUM = 0,
        parameter integer TYPE9_REG_OFFSET = 16,
        parameter integer TYPE10_NUM = 0,
        parameter integer TYPE10_REG_OFFSET = 16,
        parameter integer TYPE11_NUM = 0,
        parameter integer TYPE11_REG_OFFSET = 16,
        parameter integer TYPE12_NUM = 0,
        parameter integer TYPE12_REG_OFFSET = 16,
        parameter integer TYPE13_NUM = 0,
        parameter integer TYPE13_REG_OFFSET = 16,
        parameter integer TYPE14_NUM = 0,
        parameter integer TYPE14_REG_OFFSET = 16,
        parameter integer TYPE15_NUM = 0,
        parameter integer TYPE15_REG_OFFSET = 16,
		// User parameters ends
        
    // start of AXI parameters
      // Width of ID for for write address, write data, read address and read data
      parameter integer C_S_AXI_ID_WIDTH	= 1,
      // Width of S_AXI data bus
      parameter integer C_S_AXI_DATA_WIDTH	= 32,
      // Width of S_AXI address bus
      parameter integer C_S_AXI_ADDR_WIDTH	= $clog2(MAX_REG_OFFSET * MAX_INST_PERTYPE * NUM_TYPE),
      // Width of optional user defined signal in write address channel
      parameter integer C_S_AXI_AWUSER_WIDTH	= 0,
      // Width of optional user defined signal in read address channel
      parameter integer C_S_AXI_ARUSER_WIDTH	= 0,
      // Width of optional user defined signal in write data channel
      parameter integer C_S_AXI_WUSER_WIDTH	= 0,
      // Width of optional user defined signal in read data channel
      parameter integer C_S_AXI_RUSER_WIDTH	= 0,
      // Width of optional user defined signal in write response channel
      parameter integer C_S_AXI_BUSER_WIDTH = 0,
      parameter integer C_S_RDELAY = 3
    // end of AXI parameters
	)
	(
// Users to add ports here
    input [TYPE0_NUM -1: 0] TYPE0_EN,
    input [TYPE1_NUM -1: 0] TYPE1_EN,
    input [TYPE2_NUM -1: 0] TYPE2_EN,
    input [TYPE3_NUM -1: 0] TYPE3_EN,
    input [TYPE4_NUM -1: 0] TYPE4_EN,
    input [TYPE5_NUM -1: 0] TYPE5_EN,
    input [TYPE6_NUM -1: 0] TYPE6_EN,
    input [TYPE7_NUM -1: 0] TYPE7_EN,
    input [TYPE8_NUM -1: 0] TYPE8_EN,
    input [TYPE9_NUM -1: 0] TYPE9_EN,
    input [TYPE10_NUM -1: 0] TYPE10_EN,
    input [TYPE11_NUM -1: 0] TYPE11_EN,
    input [TYPE12_NUM -1: 0] TYPE12_EN,
    input [TYPE13_NUM -1: 0] TYPE13_EN,
    input [TYPE14_NUM -1: 0] TYPE14_EN,
    input [TYPE15_NUM -1: 0] TYPE15_EN,
    
    
    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM EN" *)
    input t0n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM WE" *)
    input t0n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM CLK" *)
    input t0n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N0_RAM RST" *)
    input t0n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM EN" *)
    input t0n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM WE" *)
    input t0n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM CLK" *)
    input t0n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N1_RAM RST" *)
    input t0n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM EN" *)
    input t0n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM WE" *)
    input t0n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM CLK" *)
    input t0n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N2_RAM RST" *)
    input t0n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM EN" *)
    input t0n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM WE" *)
    input t0n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM CLK" *)
    input t0n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N3_RAM RST" *)
    input t0n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM EN" *)
    input t0n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM WE" *)
    input t0n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM CLK" *)
    input t0n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N4_RAM RST" *)
    input t0n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM EN" *)
    input t0n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM WE" *)
    input t0n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM CLK" *)
    input t0n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N5_RAM RST" *)
    input t0n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM EN" *)
    input t0n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM WE" *)
    input t0n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM CLK" *)
    input t0n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N6_RAM RST" *)
    input t0n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM EN" *)
    input t0n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM WE" *)
    input t0n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM CLK" *)
    input t0n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N7_RAM RST" *)
    input t0n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM EN" *)
    input t0n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM WE" *)
    input t0n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM CLK" *)
    input t0n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N8_RAM RST" *)
    input t0n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM EN" *)
    input t0n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM WE" *)
    input t0n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM CLK" *)
    input t0n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N9_RAM RST" *)
    input t0n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM EN" *)
    input t0n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM WE" *)
    input t0n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM CLK" *)
    input t0n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N10_RAM RST" *)
    input t0n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM EN" *)
    input t0n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM WE" *)
    input t0n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM CLK" *)
    input t0n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N11_RAM RST" *)
    input t0n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM EN" *)
    input t0n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM WE" *)
    input t0n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM CLK" *)
    input t0n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N12_RAM RST" *)
    input t0n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM EN" *)
    input t0n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM WE" *)
    input t0n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM CLK" *)
    input t0n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N13_RAM RST" *)
    input t0n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM EN" *)
    input t0n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM WE" *)
    input t0n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM CLK" *)
    input t0n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N14_RAM RST" *)
    input t0n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM EN" *)
    input t0n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t0n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t0n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM WE" *)
    input t0n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t0n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM CLK" *)
    input t0n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0N15_RAM RST" *)
    input t0n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM EN" *)
    input t1n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM WE" *)
    input t1n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM CLK" *)
    input t1n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N0_RAM RST" *)
    input t1n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM EN" *)
    input t1n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM WE" *)
    input t1n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM CLK" *)
    input t1n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N1_RAM RST" *)
    input t1n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM EN" *)
    input t1n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM WE" *)
    input t1n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM CLK" *)
    input t1n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N2_RAM RST" *)
    input t1n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM EN" *)
    input t1n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM WE" *)
    input t1n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM CLK" *)
    input t1n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N3_RAM RST" *)
    input t1n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM EN" *)
    input t1n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM WE" *)
    input t1n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM CLK" *)
    input t1n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N4_RAM RST" *)
    input t1n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM EN" *)
    input t1n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM WE" *)
    input t1n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM CLK" *)
    input t1n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N5_RAM RST" *)
    input t1n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM EN" *)
    input t1n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM WE" *)
    input t1n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM CLK" *)
    input t1n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N6_RAM RST" *)
    input t1n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM EN" *)
    input t1n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM WE" *)
    input t1n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM CLK" *)
    input t1n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N7_RAM RST" *)
    input t1n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM EN" *)
    input t1n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM WE" *)
    input t1n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM CLK" *)
    input t1n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N8_RAM RST" *)
    input t1n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM EN" *)
    input t1n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM WE" *)
    input t1n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM CLK" *)
    input t1n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N9_RAM RST" *)
    input t1n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM EN" *)
    input t1n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM WE" *)
    input t1n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM CLK" *)
    input t1n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N10_RAM RST" *)
    input t1n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM EN" *)
    input t1n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM WE" *)
    input t1n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM CLK" *)
    input t1n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N11_RAM RST" *)
    input t1n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM EN" *)
    input t1n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM WE" *)
    input t1n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM CLK" *)
    input t1n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N12_RAM RST" *)
    input t1n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM EN" *)
    input t1n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM WE" *)
    input t1n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM CLK" *)
    input t1n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N13_RAM RST" *)
    input t1n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM EN" *)
    input t1n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM WE" *)
    input t1n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM CLK" *)
    input t1n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N14_RAM RST" *)
    input t1n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM EN" *)
    input t1n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t1n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t1n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM WE" *)
    input t1n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t1n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM CLK" *)
    input t1n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1N15_RAM RST" *)
    input t1n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM EN" *)
    input t2n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM WE" *)
    input t2n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM CLK" *)
    input t2n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N0_RAM RST" *)
    input t2n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM EN" *)
    input t2n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM WE" *)
    input t2n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM CLK" *)
    input t2n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N1_RAM RST" *)
    input t2n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM EN" *)
    input t2n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM WE" *)
    input t2n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM CLK" *)
    input t2n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N2_RAM RST" *)
    input t2n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM EN" *)
    input t2n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM WE" *)
    input t2n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM CLK" *)
    input t2n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N3_RAM RST" *)
    input t2n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM EN" *)
    input t2n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM WE" *)
    input t2n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM CLK" *)
    input t2n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N4_RAM RST" *)
    input t2n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM EN" *)
    input t2n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM WE" *)
    input t2n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM CLK" *)
    input t2n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N5_RAM RST" *)
    input t2n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM EN" *)
    input t2n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM WE" *)
    input t2n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM CLK" *)
    input t2n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N6_RAM RST" *)
    input t2n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM EN" *)
    input t2n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM WE" *)
    input t2n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM CLK" *)
    input t2n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N7_RAM RST" *)
    input t2n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM EN" *)
    input t2n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM WE" *)
    input t2n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM CLK" *)
    input t2n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N8_RAM RST" *)
    input t2n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM EN" *)
    input t2n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM WE" *)
    input t2n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM CLK" *)
    input t2n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N9_RAM RST" *)
    input t2n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM EN" *)
    input t2n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM WE" *)
    input t2n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM CLK" *)
    input t2n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N10_RAM RST" *)
    input t2n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM EN" *)
    input t2n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM WE" *)
    input t2n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM CLK" *)
    input t2n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N11_RAM RST" *)
    input t2n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM EN" *)
    input t2n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM WE" *)
    input t2n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM CLK" *)
    input t2n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N12_RAM RST" *)
    input t2n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM EN" *)
    input t2n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM WE" *)
    input t2n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM CLK" *)
    input t2n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N13_RAM RST" *)
    input t2n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM EN" *)
    input t2n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM WE" *)
    input t2n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM CLK" *)
    input t2n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N14_RAM RST" *)
    input t2n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM EN" *)
    input t2n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t2n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t2n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM WE" *)
    input t2n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t2n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM CLK" *)
    input t2n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T2N15_RAM RST" *)
    input t2n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM EN" *)
    input t3n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM WE" *)
    input t3n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM CLK" *)
    input t3n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N0_RAM RST" *)
    input t3n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM EN" *)
    input t3n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM WE" *)
    input t3n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM CLK" *)
    input t3n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N1_RAM RST" *)
    input t3n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM EN" *)
    input t3n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM WE" *)
    input t3n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM CLK" *)
    input t3n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N2_RAM RST" *)
    input t3n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM EN" *)
    input t3n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM WE" *)
    input t3n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM CLK" *)
    input t3n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N3_RAM RST" *)
    input t3n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM EN" *)
    input t3n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM WE" *)
    input t3n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM CLK" *)
    input t3n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N4_RAM RST" *)
    input t3n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM EN" *)
    input t3n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM WE" *)
    input t3n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM CLK" *)
    input t3n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N5_RAM RST" *)
    input t3n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM EN" *)
    input t3n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM WE" *)
    input t3n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM CLK" *)
    input t3n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N6_RAM RST" *)
    input t3n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM EN" *)
    input t3n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM WE" *)
    input t3n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM CLK" *)
    input t3n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N7_RAM RST" *)
    input t3n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM EN" *)
    input t3n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM WE" *)
    input t3n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM CLK" *)
    input t3n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N8_RAM RST" *)
    input t3n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM EN" *)
    input t3n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM WE" *)
    input t3n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM CLK" *)
    input t3n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N9_RAM RST" *)
    input t3n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM EN" *)
    input t3n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM WE" *)
    input t3n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM CLK" *)
    input t3n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N10_RAM RST" *)
    input t3n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM EN" *)
    input t3n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM WE" *)
    input t3n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM CLK" *)
    input t3n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N11_RAM RST" *)
    input t3n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM EN" *)
    input t3n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM WE" *)
    input t3n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM CLK" *)
    input t3n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N12_RAM RST" *)
    input t3n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM EN" *)
    input t3n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM WE" *)
    input t3n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM CLK" *)
    input t3n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N13_RAM RST" *)
    input t3n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM EN" *)
    input t3n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM WE" *)
    input t3n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM CLK" *)
    input t3n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N14_RAM RST" *)
    input t3n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM EN" *)
    input t3n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t3n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t3n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM WE" *)
    input t3n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t3n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM CLK" *)
    input t3n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T3N15_RAM RST" *)
    input t3n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM EN" *)
    input t4n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM WE" *)
    input t4n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM CLK" *)
    input t4n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N0_RAM RST" *)
    input t4n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM EN" *)
    input t4n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM WE" *)
    input t4n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM CLK" *)
    input t4n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N1_RAM RST" *)
    input t4n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM EN" *)
    input t4n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM WE" *)
    input t4n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM CLK" *)
    input t4n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N2_RAM RST" *)
    input t4n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM EN" *)
    input t4n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM WE" *)
    input t4n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM CLK" *)
    input t4n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N3_RAM RST" *)
    input t4n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM EN" *)
    input t4n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM WE" *)
    input t4n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM CLK" *)
    input t4n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N4_RAM RST" *)
    input t4n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM EN" *)
    input t4n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM WE" *)
    input t4n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM CLK" *)
    input t4n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N5_RAM RST" *)
    input t4n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM EN" *)
    input t4n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM WE" *)
    input t4n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM CLK" *)
    input t4n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N6_RAM RST" *)
    input t4n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM EN" *)
    input t4n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM WE" *)
    input t4n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM CLK" *)
    input t4n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N7_RAM RST" *)
    input t4n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM EN" *)
    input t4n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM WE" *)
    input t4n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM CLK" *)
    input t4n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N8_RAM RST" *)
    input t4n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM EN" *)
    input t4n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM WE" *)
    input t4n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM CLK" *)
    input t4n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N9_RAM RST" *)
    input t4n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM EN" *)
    input t4n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM WE" *)
    input t4n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM CLK" *)
    input t4n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N10_RAM RST" *)
    input t4n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM EN" *)
    input t4n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM WE" *)
    input t4n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM CLK" *)
    input t4n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N11_RAM RST" *)
    input t4n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM EN" *)
    input t4n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM WE" *)
    input t4n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM CLK" *)
    input t4n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N12_RAM RST" *)
    input t4n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM EN" *)
    input t4n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM WE" *)
    input t4n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM CLK" *)
    input t4n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N13_RAM RST" *)
    input t4n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM EN" *)
    input t4n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM WE" *)
    input t4n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM CLK" *)
    input t4n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N14_RAM RST" *)
    input t4n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM EN" *)
    input t4n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t4n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t4n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM WE" *)
    input t4n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t4n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM CLK" *)
    input t4n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T4N15_RAM RST" *)
    input t4n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM EN" *)
    input t5n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM WE" *)
    input t5n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM CLK" *)
    input t5n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N0_RAM RST" *)
    input t5n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM EN" *)
    input t5n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM WE" *)
    input t5n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM CLK" *)
    input t5n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N1_RAM RST" *)
    input t5n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM EN" *)
    input t5n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM WE" *)
    input t5n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM CLK" *)
    input t5n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N2_RAM RST" *)
    input t5n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM EN" *)
    input t5n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM WE" *)
    input t5n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM CLK" *)
    input t5n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N3_RAM RST" *)
    input t5n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM EN" *)
    input t5n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM WE" *)
    input t5n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM CLK" *)
    input t5n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N4_RAM RST" *)
    input t5n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM EN" *)
    input t5n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM WE" *)
    input t5n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM CLK" *)
    input t5n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N5_RAM RST" *)
    input t5n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM EN" *)
    input t5n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM WE" *)
    input t5n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM CLK" *)
    input t5n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N6_RAM RST" *)
    input t5n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM EN" *)
    input t5n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM WE" *)
    input t5n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM CLK" *)
    input t5n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N7_RAM RST" *)
    input t5n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM EN" *)
    input t5n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM WE" *)
    input t5n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM CLK" *)
    input t5n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N8_RAM RST" *)
    input t5n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM EN" *)
    input t5n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM WE" *)
    input t5n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM CLK" *)
    input t5n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N9_RAM RST" *)
    input t5n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM EN" *)
    input t5n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM WE" *)
    input t5n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM CLK" *)
    input t5n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N10_RAM RST" *)
    input t5n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM EN" *)
    input t5n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM WE" *)
    input t5n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM CLK" *)
    input t5n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N11_RAM RST" *)
    input t5n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM EN" *)
    input t5n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM WE" *)
    input t5n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM CLK" *)
    input t5n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N12_RAM RST" *)
    input t5n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM EN" *)
    input t5n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM WE" *)
    input t5n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM CLK" *)
    input t5n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N13_RAM RST" *)
    input t5n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM EN" *)
    input t5n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM WE" *)
    input t5n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM CLK" *)
    input t5n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N14_RAM RST" *)
    input t5n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM EN" *)
    input t5n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t5n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t5n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM WE" *)
    input t5n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t5n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM CLK" *)
    input t5n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T5N15_RAM RST" *)
    input t5n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM EN" *)
    input t6n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM WE" *)
    input t6n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM CLK" *)
    input t6n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N0_RAM RST" *)
    input t6n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM EN" *)
    input t6n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM WE" *)
    input t6n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM CLK" *)
    input t6n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N1_RAM RST" *)
    input t6n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM EN" *)
    input t6n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM WE" *)
    input t6n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM CLK" *)
    input t6n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N2_RAM RST" *)
    input t6n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM EN" *)
    input t6n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM WE" *)
    input t6n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM CLK" *)
    input t6n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N3_RAM RST" *)
    input t6n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM EN" *)
    input t6n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM WE" *)
    input t6n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM CLK" *)
    input t6n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N4_RAM RST" *)
    input t6n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM EN" *)
    input t6n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM WE" *)
    input t6n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM CLK" *)
    input t6n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N5_RAM RST" *)
    input t6n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM EN" *)
    input t6n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM WE" *)
    input t6n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM CLK" *)
    input t6n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N6_RAM RST" *)
    input t6n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM EN" *)
    input t6n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM WE" *)
    input t6n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM CLK" *)
    input t6n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N7_RAM RST" *)
    input t6n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM EN" *)
    input t6n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM WE" *)
    input t6n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM CLK" *)
    input t6n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N8_RAM RST" *)
    input t6n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM EN" *)
    input t6n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM WE" *)
    input t6n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM CLK" *)
    input t6n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N9_RAM RST" *)
    input t6n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM EN" *)
    input t6n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM WE" *)
    input t6n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM CLK" *)
    input t6n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N10_RAM RST" *)
    input t6n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM EN" *)
    input t6n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM WE" *)
    input t6n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM CLK" *)
    input t6n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N11_RAM RST" *)
    input t6n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM EN" *)
    input t6n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM WE" *)
    input t6n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM CLK" *)
    input t6n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N12_RAM RST" *)
    input t6n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM EN" *)
    input t6n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM WE" *)
    input t6n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM CLK" *)
    input t6n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N13_RAM RST" *)
    input t6n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM EN" *)
    input t6n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM WE" *)
    input t6n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM CLK" *)
    input t6n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N14_RAM RST" *)
    input t6n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM EN" *)
    input t6n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t6n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t6n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM WE" *)
    input t6n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t6n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM CLK" *)
    input t6n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T6N15_RAM RST" *)
    input t6n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM EN" *)
    input t7n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM WE" *)
    input t7n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM CLK" *)
    input t7n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N0_RAM RST" *)
    input t7n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM EN" *)
    input t7n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM WE" *)
    input t7n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM CLK" *)
    input t7n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N1_RAM RST" *)
    input t7n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM EN" *)
    input t7n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM WE" *)
    input t7n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM CLK" *)
    input t7n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N2_RAM RST" *)
    input t7n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM EN" *)
    input t7n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM WE" *)
    input t7n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM CLK" *)
    input t7n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N3_RAM RST" *)
    input t7n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM EN" *)
    input t7n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM WE" *)
    input t7n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM CLK" *)
    input t7n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N4_RAM RST" *)
    input t7n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM EN" *)
    input t7n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM WE" *)
    input t7n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM CLK" *)
    input t7n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N5_RAM RST" *)
    input t7n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM EN" *)
    input t7n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM WE" *)
    input t7n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM CLK" *)
    input t7n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N6_RAM RST" *)
    input t7n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM EN" *)
    input t7n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM WE" *)
    input t7n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM CLK" *)
    input t7n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N7_RAM RST" *)
    input t7n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM EN" *)
    input t7n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM WE" *)
    input t7n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM CLK" *)
    input t7n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N8_RAM RST" *)
    input t7n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM EN" *)
    input t7n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM WE" *)
    input t7n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM CLK" *)
    input t7n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N9_RAM RST" *)
    input t7n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM EN" *)
    input t7n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM WE" *)
    input t7n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM CLK" *)
    input t7n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N10_RAM RST" *)
    input t7n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM EN" *)
    input t7n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM WE" *)
    input t7n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM CLK" *)
    input t7n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N11_RAM RST" *)
    input t7n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM EN" *)
    input t7n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM WE" *)
    input t7n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM CLK" *)
    input t7n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N12_RAM RST" *)
    input t7n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM EN" *)
    input t7n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM WE" *)
    input t7n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM CLK" *)
    input t7n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N13_RAM RST" *)
    input t7n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM EN" *)
    input t7n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM WE" *)
    input t7n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM CLK" *)
    input t7n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N14_RAM RST" *)
    input t7n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM EN" *)
    input t7n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t7n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t7n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM WE" *)
    input t7n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t7n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM CLK" *)
    input t7n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T7N15_RAM RST" *)
    input t7n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM EN" *)
    input t8n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM WE" *)
    input t8n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM CLK" *)
    input t8n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N0_RAM RST" *)
    input t8n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM EN" *)
    input t8n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM WE" *)
    input t8n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM CLK" *)
    input t8n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N1_RAM RST" *)
    input t8n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM EN" *)
    input t8n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM WE" *)
    input t8n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM CLK" *)
    input t8n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N2_RAM RST" *)
    input t8n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM EN" *)
    input t8n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM WE" *)
    input t8n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM CLK" *)
    input t8n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N3_RAM RST" *)
    input t8n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM EN" *)
    input t8n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM WE" *)
    input t8n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM CLK" *)
    input t8n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N4_RAM RST" *)
    input t8n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM EN" *)
    input t8n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM WE" *)
    input t8n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM CLK" *)
    input t8n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N5_RAM RST" *)
    input t8n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM EN" *)
    input t8n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM WE" *)
    input t8n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM CLK" *)
    input t8n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N6_RAM RST" *)
    input t8n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM EN" *)
    input t8n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM WE" *)
    input t8n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM CLK" *)
    input t8n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N7_RAM RST" *)
    input t8n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM EN" *)
    input t8n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM WE" *)
    input t8n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM CLK" *)
    input t8n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N8_RAM RST" *)
    input t8n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM EN" *)
    input t8n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM WE" *)
    input t8n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM CLK" *)
    input t8n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N9_RAM RST" *)
    input t8n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM EN" *)
    input t8n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM WE" *)
    input t8n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM CLK" *)
    input t8n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N10_RAM RST" *)
    input t8n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM EN" *)
    input t8n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM WE" *)
    input t8n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM CLK" *)
    input t8n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N11_RAM RST" *)
    input t8n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM EN" *)
    input t8n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM WE" *)
    input t8n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM CLK" *)
    input t8n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N12_RAM RST" *)
    input t8n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM EN" *)
    input t8n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM WE" *)
    input t8n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM CLK" *)
    input t8n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N13_RAM RST" *)
    input t8n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM EN" *)
    input t8n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM WE" *)
    input t8n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM CLK" *)
    input t8n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N14_RAM RST" *)
    input t8n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM EN" *)
    input t8n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t8n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t8n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM WE" *)
    input t8n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t8n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM CLK" *)
    input t8n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T8N15_RAM RST" *)
    input t8n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM EN" *)
    input t9n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM WE" *)
    input t9n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM CLK" *)
    input t9n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N0_RAM RST" *)
    input t9n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM EN" *)
    input t9n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM WE" *)
    input t9n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM CLK" *)
    input t9n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N1_RAM RST" *)
    input t9n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM EN" *)
    input t9n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM WE" *)
    input t9n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM CLK" *)
    input t9n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N2_RAM RST" *)
    input t9n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM EN" *)
    input t9n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM WE" *)
    input t9n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM CLK" *)
    input t9n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N3_RAM RST" *)
    input t9n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM EN" *)
    input t9n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM WE" *)
    input t9n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM CLK" *)
    input t9n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N4_RAM RST" *)
    input t9n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM EN" *)
    input t9n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM WE" *)
    input t9n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM CLK" *)
    input t9n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N5_RAM RST" *)
    input t9n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM EN" *)
    input t9n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM WE" *)
    input t9n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM CLK" *)
    input t9n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N6_RAM RST" *)
    input t9n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM EN" *)
    input t9n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM WE" *)
    input t9n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM CLK" *)
    input t9n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N7_RAM RST" *)
    input t9n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM EN" *)
    input t9n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM WE" *)
    input t9n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM CLK" *)
    input t9n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N8_RAM RST" *)
    input t9n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM EN" *)
    input t9n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM WE" *)
    input t9n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM CLK" *)
    input t9n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N9_RAM RST" *)
    input t9n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM EN" *)
    input t9n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM WE" *)
    input t9n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM CLK" *)
    input t9n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N10_RAM RST" *)
    input t9n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM EN" *)
    input t9n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM WE" *)
    input t9n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM CLK" *)
    input t9n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N11_RAM RST" *)
    input t9n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM EN" *)
    input t9n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM WE" *)
    input t9n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM CLK" *)
    input t9n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N12_RAM RST" *)
    input t9n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM EN" *)
    input t9n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM WE" *)
    input t9n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM CLK" *)
    input t9n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N13_RAM RST" *)
    input t9n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM EN" *)
    input t9n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM WE" *)
    input t9n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM CLK" *)
    input t9n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N14_RAM RST" *)
    input t9n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM EN" *)
    input t9n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t9n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t9n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM WE" *)
    input t9n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t9n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM CLK" *)
    input t9n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T9N15_RAM RST" *)
    input t9n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM EN" *)
    input t10n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM WE" *)
    input t10n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM CLK" *)
    input t10n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N0_RAM RST" *)
    input t10n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM EN" *)
    input t10n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM WE" *)
    input t10n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM CLK" *)
    input t10n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N1_RAM RST" *)
    input t10n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM EN" *)
    input t10n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM WE" *)
    input t10n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM CLK" *)
    input t10n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N2_RAM RST" *)
    input t10n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM EN" *)
    input t10n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM WE" *)
    input t10n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM CLK" *)
    input t10n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N3_RAM RST" *)
    input t10n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM EN" *)
    input t10n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM WE" *)
    input t10n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM CLK" *)
    input t10n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N4_RAM RST" *)
    input t10n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM EN" *)
    input t10n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM WE" *)
    input t10n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM CLK" *)
    input t10n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N5_RAM RST" *)
    input t10n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM EN" *)
    input t10n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM WE" *)
    input t10n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM CLK" *)
    input t10n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N6_RAM RST" *)
    input t10n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM EN" *)
    input t10n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM WE" *)
    input t10n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM CLK" *)
    input t10n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N7_RAM RST" *)
    input t10n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM EN" *)
    input t10n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM WE" *)
    input t10n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM CLK" *)
    input t10n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N8_RAM RST" *)
    input t10n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM EN" *)
    input t10n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM WE" *)
    input t10n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM CLK" *)
    input t10n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N9_RAM RST" *)
    input t10n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM EN" *)
    input t10n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM WE" *)
    input t10n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM CLK" *)
    input t10n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N10_RAM RST" *)
    input t10n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM EN" *)
    input t10n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM WE" *)
    input t10n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM CLK" *)
    input t10n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N11_RAM RST" *)
    input t10n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM EN" *)
    input t10n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM WE" *)
    input t10n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM CLK" *)
    input t10n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N12_RAM RST" *)
    input t10n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM EN" *)
    input t10n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM WE" *)
    input t10n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM CLK" *)
    input t10n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N13_RAM RST" *)
    input t10n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM EN" *)
    input t10n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM WE" *)
    input t10n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM CLK" *)
    input t10n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N14_RAM RST" *)
    input t10n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM EN" *)
    input t10n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t10n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t10n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM WE" *)
    input t10n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t10n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM CLK" *)
    input t10n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T10N15_RAM RST" *)
    input t10n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM EN" *)
    input t11n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM WE" *)
    input t11n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM CLK" *)
    input t11n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N0_RAM RST" *)
    input t11n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM EN" *)
    input t11n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM WE" *)
    input t11n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM CLK" *)
    input t11n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N1_RAM RST" *)
    input t11n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM EN" *)
    input t11n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM WE" *)
    input t11n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM CLK" *)
    input t11n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N2_RAM RST" *)
    input t11n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM EN" *)
    input t11n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM WE" *)
    input t11n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM CLK" *)
    input t11n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N3_RAM RST" *)
    input t11n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM EN" *)
    input t11n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM WE" *)
    input t11n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM CLK" *)
    input t11n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N4_RAM RST" *)
    input t11n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM EN" *)
    input t11n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM WE" *)
    input t11n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM CLK" *)
    input t11n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N5_RAM RST" *)
    input t11n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM EN" *)
    input t11n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM WE" *)
    input t11n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM CLK" *)
    input t11n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N6_RAM RST" *)
    input t11n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM EN" *)
    input t11n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM WE" *)
    input t11n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM CLK" *)
    input t11n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N7_RAM RST" *)
    input t11n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM EN" *)
    input t11n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM WE" *)
    input t11n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM CLK" *)
    input t11n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N8_RAM RST" *)
    input t11n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM EN" *)
    input t11n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM WE" *)
    input t11n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM CLK" *)
    input t11n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N9_RAM RST" *)
    input t11n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM EN" *)
    input t11n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM WE" *)
    input t11n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM CLK" *)
    input t11n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N10_RAM RST" *)
    input t11n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM EN" *)
    input t11n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM WE" *)
    input t11n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM CLK" *)
    input t11n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N11_RAM RST" *)
    input t11n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM EN" *)
    input t11n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM WE" *)
    input t11n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM CLK" *)
    input t11n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N12_RAM RST" *)
    input t11n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM EN" *)
    input t11n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM WE" *)
    input t11n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM CLK" *)
    input t11n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N13_RAM RST" *)
    input t11n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM EN" *)
    input t11n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM WE" *)
    input t11n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM CLK" *)
    input t11n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N14_RAM RST" *)
    input t11n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM EN" *)
    input t11n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t11n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t11n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM WE" *)
    input t11n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t11n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM CLK" *)
    input t11n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T11N15_RAM RST" *)
    input t11n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM EN" *)
    input t12n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM WE" *)
    input t12n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM CLK" *)
    input t12n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N0_RAM RST" *)
    input t12n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM EN" *)
    input t12n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM WE" *)
    input t12n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM CLK" *)
    input t12n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N1_RAM RST" *)
    input t12n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM EN" *)
    input t12n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM WE" *)
    input t12n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM CLK" *)
    input t12n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N2_RAM RST" *)
    input t12n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM EN" *)
    input t12n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM WE" *)
    input t12n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM CLK" *)
    input t12n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N3_RAM RST" *)
    input t12n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM EN" *)
    input t12n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM WE" *)
    input t12n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM CLK" *)
    input t12n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N4_RAM RST" *)
    input t12n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM EN" *)
    input t12n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM WE" *)
    input t12n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM CLK" *)
    input t12n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N5_RAM RST" *)
    input t12n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM EN" *)
    input t12n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM WE" *)
    input t12n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM CLK" *)
    input t12n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N6_RAM RST" *)
    input t12n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM EN" *)
    input t12n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM WE" *)
    input t12n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM CLK" *)
    input t12n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N7_RAM RST" *)
    input t12n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM EN" *)
    input t12n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM WE" *)
    input t12n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM CLK" *)
    input t12n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N8_RAM RST" *)
    input t12n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM EN" *)
    input t12n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM WE" *)
    input t12n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM CLK" *)
    input t12n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N9_RAM RST" *)
    input t12n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM EN" *)
    input t12n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM WE" *)
    input t12n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM CLK" *)
    input t12n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N10_RAM RST" *)
    input t12n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM EN" *)
    input t12n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM WE" *)
    input t12n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM CLK" *)
    input t12n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N11_RAM RST" *)
    input t12n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM EN" *)
    input t12n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM WE" *)
    input t12n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM CLK" *)
    input t12n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N12_RAM RST" *)
    input t12n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM EN" *)
    input t12n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM WE" *)
    input t12n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM CLK" *)
    input t12n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N13_RAM RST" *)
    input t12n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM EN" *)
    input t12n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM WE" *)
    input t12n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM CLK" *)
    input t12n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N14_RAM RST" *)
    input t12n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM EN" *)
    input t12n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t12n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t12n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM WE" *)
    input t12n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t12n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM CLK" *)
    input t12n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T12N15_RAM RST" *)
    input t12n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM EN" *)
    input t13n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM WE" *)
    input t13n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM CLK" *)
    input t13n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N0_RAM RST" *)
    input t13n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM EN" *)
    input t13n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM WE" *)
    input t13n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM CLK" *)
    input t13n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N1_RAM RST" *)
    input t13n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM EN" *)
    input t13n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM WE" *)
    input t13n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM CLK" *)
    input t13n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N2_RAM RST" *)
    input t13n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM EN" *)
    input t13n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM WE" *)
    input t13n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM CLK" *)
    input t13n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N3_RAM RST" *)
    input t13n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM EN" *)
    input t13n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM WE" *)
    input t13n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM CLK" *)
    input t13n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N4_RAM RST" *)
    input t13n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM EN" *)
    input t13n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM WE" *)
    input t13n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM CLK" *)
    input t13n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N5_RAM RST" *)
    input t13n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM EN" *)
    input t13n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM WE" *)
    input t13n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM CLK" *)
    input t13n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N6_RAM RST" *)
    input t13n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM EN" *)
    input t13n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM WE" *)
    input t13n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM CLK" *)
    input t13n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N7_RAM RST" *)
    input t13n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM EN" *)
    input t13n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM WE" *)
    input t13n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM CLK" *)
    input t13n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N8_RAM RST" *)
    input t13n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM EN" *)
    input t13n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM WE" *)
    input t13n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM CLK" *)
    input t13n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N9_RAM RST" *)
    input t13n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM EN" *)
    input t13n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM WE" *)
    input t13n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM CLK" *)
    input t13n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N10_RAM RST" *)
    input t13n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM EN" *)
    input t13n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM WE" *)
    input t13n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM CLK" *)
    input t13n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N11_RAM RST" *)
    input t13n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM EN" *)
    input t13n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM WE" *)
    input t13n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM CLK" *)
    input t13n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N12_RAM RST" *)
    input t13n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM EN" *)
    input t13n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM WE" *)
    input t13n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM CLK" *)
    input t13n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N13_RAM RST" *)
    input t13n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM EN" *)
    input t13n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM WE" *)
    input t13n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM CLK" *)
    input t13n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N14_RAM RST" *)
    input t13n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM EN" *)
    input t13n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t13n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t13n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM WE" *)
    input t13n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t13n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM CLK" *)
    input t13n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T13N15_RAM RST" *)
    input t13n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM EN" *)
    input t14n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM WE" *)
    input t14n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM CLK" *)
    input t14n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N0_RAM RST" *)
    input t14n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM EN" *)
    input t14n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM WE" *)
    input t14n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM CLK" *)
    input t14n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N1_RAM RST" *)
    input t14n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM EN" *)
    input t14n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM WE" *)
    input t14n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM CLK" *)
    input t14n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N2_RAM RST" *)
    input t14n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM EN" *)
    input t14n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM WE" *)
    input t14n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM CLK" *)
    input t14n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N3_RAM RST" *)
    input t14n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM EN" *)
    input t14n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM WE" *)
    input t14n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM CLK" *)
    input t14n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N4_RAM RST" *)
    input t14n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM EN" *)
    input t14n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM WE" *)
    input t14n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM CLK" *)
    input t14n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N5_RAM RST" *)
    input t14n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM EN" *)
    input t14n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM WE" *)
    input t14n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM CLK" *)
    input t14n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N6_RAM RST" *)
    input t14n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM EN" *)
    input t14n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM WE" *)
    input t14n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM CLK" *)
    input t14n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N7_RAM RST" *)
    input t14n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM EN" *)
    input t14n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM WE" *)
    input t14n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM CLK" *)
    input t14n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N8_RAM RST" *)
    input t14n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM EN" *)
    input t14n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM WE" *)
    input t14n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM CLK" *)
    input t14n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N9_RAM RST" *)
    input t14n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM EN" *)
    input t14n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM WE" *)
    input t14n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM CLK" *)
    input t14n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N10_RAM RST" *)
    input t14n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM EN" *)
    input t14n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM WE" *)
    input t14n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM CLK" *)
    input t14n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N11_RAM RST" *)
    input t14n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM EN" *)
    input t14n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM WE" *)
    input t14n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM CLK" *)
    input t14n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N12_RAM RST" *)
    input t14n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM EN" *)
    input t14n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM WE" *)
    input t14n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM CLK" *)
    input t14n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N13_RAM RST" *)
    input t14n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM EN" *)
    input t14n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM WE" *)
    input t14n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM CLK" *)
    input t14n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N14_RAM RST" *)
    input t14n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM EN" *)
    input t14n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t14n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t14n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM WE" *)
    input t14n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t14n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM CLK" *)
    input t14n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T14N15_RAM RST" *)
    input t14n15_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM EN" *)
    input t15n0_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n0_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n0_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM WE" *)
    input t15n0_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n0_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM CLK" *)
    input t15n0_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N0_RAM RST" *)
    input t15n0_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM EN" *)
    input t15n1_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n1_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n1_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM WE" *)
    input t15n1_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n1_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM CLK" *)
    input t15n1_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N1_RAM RST" *)
    input t15n1_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM EN" *)
    input t15n2_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n2_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n2_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM WE" *)
    input t15n2_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n2_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM CLK" *)
    input t15n2_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N2_RAM RST" *)
    input t15n2_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM EN" *)
    input t15n3_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n3_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n3_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM WE" *)
    input t15n3_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n3_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM CLK" *)
    input t15n3_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N3_RAM RST" *)
    input t15n3_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM EN" *)
    input t15n4_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n4_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n4_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM WE" *)
    input t15n4_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n4_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM CLK" *)
    input t15n4_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N4_RAM RST" *)
    input t15n4_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM EN" *)
    input t15n5_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n5_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n5_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM WE" *)
    input t15n5_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n5_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM CLK" *)
    input t15n5_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N5_RAM RST" *)
    input t15n5_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM EN" *)
    input t15n6_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n6_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n6_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM WE" *)
    input t15n6_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n6_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM CLK" *)
    input t15n6_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N6_RAM RST" *)
    input t15n6_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM EN" *)
    input t15n7_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n7_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n7_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM WE" *)
    input t15n7_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n7_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM CLK" *)
    input t15n7_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N7_RAM RST" *)
    input t15n7_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM EN" *)
    input t15n8_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n8_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n8_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM WE" *)
    input t15n8_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n8_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM CLK" *)
    input t15n8_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N8_RAM RST" *)
    input t15n8_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM EN" *)
    input t15n9_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n9_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n9_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM WE" *)
    input t15n9_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n9_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM CLK" *)
    input t15n9_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N9_RAM RST" *)
    input t15n9_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM EN" *)
    input t15n10_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n10_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n10_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM WE" *)
    input t15n10_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n10_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM CLK" *)
    input t15n10_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N10_RAM RST" *)
    input t15n10_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM EN" *)
    input t15n11_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n11_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n11_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM WE" *)
    input t15n11_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n11_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM CLK" *)
    input t15n11_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N11_RAM RST" *)
    input t15n11_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM EN" *)
    input t15n12_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n12_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n12_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM WE" *)
    input t15n12_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n12_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM CLK" *)
    input t15n12_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N12_RAM RST" *)
    input t15n12_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM EN" *)
    input t15n13_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n13_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n13_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM WE" *)
    input t15n13_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n13_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM CLK" *)
    input t15n13_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N13_RAM RST" *)
    input t15n13_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM EN" *)
    input t15n14_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n14_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n14_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM WE" *)
    input t15n14_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n14_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM CLK" *)
    input t15n14_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N14_RAM RST" *)
    input t15n14_rst, // Reset Signal (required)

    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL"*)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM EN" *)
    input t15n15_en, // Chip Enable Signal (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM DOUT" *)
    output reg [C_S_AXI_DATA_WIDTH -1:0] t15n15_dout, // Data Out Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM DIN" *)
    input [C_S_AXI_DATA_WIDTH -1:0] t15n15_din, // Data In Bus (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM WE" *)
    input t15n15_we, // Byte Enables (optional)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM ADDR" *)
    input [C_S_AXI_ADDR_WIDTH -1:0] t15n15_addr, // Address Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM CLK" *)
    input t15n15_clk, // Clock Signal (required)
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T15N15_RAM RST" *)
    input t15n15_rst, // Reset Signal (required)

// User ports ends

// start of AXI signals

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write Address ID
		input wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_AWID,
		// Write address
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		input wire [7 : 0] S_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		input wire [2 : 0] S_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		input wire [1 : 0] S_AXI_AWBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		input wire  S_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		input wire [3 : 0] S_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each
    // write transaction.
		input wire [3 : 0] S_AXI_AWQOS,
		// Region identifier. Permits a single physical interface
    // on a slave to be used for multiple logical interfaces.
		input wire [3 : 0] S_AXI_AWREGION,
		// Optional User-defined signal in the write address channel.
		input wire [C_S_AXI_AWUSER_WIDTH-1 : 0] S_AXI_AWUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid write address and
    // control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated
    // control signals.
		output wire  S_AXI_AWREADY,
		// Write Data
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write last. This signal indicates the last transfer
    // in a write burst.
		input wire  S_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		input wire [C_S_AXI_WUSER_WIDTH-1 : 0] S_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    // data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    // can accept the write data.
		output wire  S_AXI_WREADY,
		// Response ID tag. This signal is the ID tag of the
    // write response.
		output wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_BID,
		// Write response. This signal indicates the status
    // of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Optional User-defined signal in the write response channel.
		output wire [C_S_AXI_BUSER_WIDTH-1 : 0] S_AXI_BUSER,
		// Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    // can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address ID. This signal is the identification
    // tag for the read address group of signals.
		input wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_ARID,
		// Read address. This signal indicates the initial
    // address of a read burst transaction.
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		input wire [7 : 0] S_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		input wire [2 : 0] S_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		input wire [1 : 0] S_AXI_ARBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		input wire  S_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		input wire [3 : 0] S_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each
    // read transaction.
		input wire [3 : 0] S_AXI_ARQOS,
		// Region identifier. Permits a single physical interface
    // on a slave to be used for multiple logical interfaces.
		input wire [3 : 0] S_AXI_ARREGION,
		// Optional User-defined signal in the read address channel.
		input wire [C_S_AXI_ARUSER_WIDTH-1 : 0] S_AXI_ARUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid read address and
    // control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated
    // control signals.
		output wire  S_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
		output wire [C_S_AXI_ID_WIDTH-1 : 0] S_AXI_RID,
		// Read Data
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of
    // the read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read last. This signal indicates the last transfer
    // in a read burst.
		output wire  S_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		output wire [C_S_AXI_RUSER_WIDTH-1 : 0] S_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    // is signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    // accept the read data and response information.
		input wire  S_AXI_RREADY

//end of AXI signals
	);


// start of assignment of ram interface
	reg [MAX_INST_PERTYPE -1: 0] en [0 : NUM_TYPE - 1];
	reg [C_S_AXI_DATA_WIDTH -1: 0] din [0 : NUM_TYPE - 1] [MAX_INST_PERTYPE -1: 0];
	reg [C_S_AXI_DATA_WIDTH -1: 0] dout [0 : NUM_TYPE - 1] [MAX_INST_PERTYPE -1: 0];
	reg [MAX_INST_PERTYPE -1: 0] we [0 : NUM_TYPE - 1];
	reg [C_S_AXI_ADDR_WIDTH -1: 0] addr [0 : NUM_TYPE - 1] [MAX_INST_PERTYPE -1: 0];
	reg [MAX_INST_PERTYPE -1: 0] clk [0 : NUM_TYPE - 1];
always @(*) begin
	en[0][0] = t0n0_en;
	din[0][0] = t0n0_din;
	t0n0_dout = dout[0][0];
	we[0][0] = t0n0_we;
	addr[0][0] = t0n0_addr;
	clk[0][0] = t0n0_clk;

	en[0][1] = t0n1_en;
	din[0][1] = t0n1_din;
	t0n1_dout = dout[0][1];
	we[0][1] = t0n1_we;
	addr[0][1] = t0n1_addr;
	clk[0][1] = t0n1_clk;

	en[0][2] = t0n2_en;
	din[0][2] = t0n2_din;
	t0n2_dout = dout[0][2];
	we[0][2] = t0n2_we;
	addr[0][2] = t0n2_addr;
	clk[0][2] = t0n2_clk;

	en[0][3] = t0n3_en;
	din[0][3] = t0n3_din;
	t0n3_dout = dout[0][3];
	we[0][3] = t0n3_we;
	addr[0][3] = t0n3_addr;
	clk[0][3] = t0n3_clk;

	en[0][4] = t0n4_en;
	din[0][4] = t0n4_din;
	t0n4_dout = dout[0][4];
	we[0][4] = t0n4_we;
	addr[0][4] = t0n4_addr;
	clk[0][4] = t0n4_clk;

	en[0][5] = t0n5_en;
	din[0][5] = t0n5_din;
	t0n5_dout = dout[0][5];
	we[0][5] = t0n5_we;
	addr[0][5] = t0n5_addr;
	clk[0][5] = t0n5_clk;

	en[0][6] = t0n6_en;
	din[0][6] = t0n6_din;
	t0n6_dout = dout[0][6];
	we[0][6] = t0n6_we;
	addr[0][6] = t0n6_addr;
	clk[0][6] = t0n6_clk;

	en[0][7] = t0n7_en;
	din[0][7] = t0n7_din;
	t0n7_dout = dout[0][7];
	we[0][7] = t0n7_we;
	addr[0][7] = t0n7_addr;
	clk[0][7] = t0n7_clk;

	en[0][8] = t0n8_en;
	din[0][8] = t0n8_din;
	t0n8_dout = dout[0][8];
	we[0][8] = t0n8_we;
	addr[0][8] = t0n8_addr;
	clk[0][8] = t0n8_clk;

	en[0][9] = t0n9_en;
	din[0][9] = t0n9_din;
	t0n9_dout = dout[0][9];
	we[0][9] = t0n9_we;
	addr[0][9] = t0n9_addr;
	clk[0][9] = t0n9_clk;

	en[0][10] = t0n10_en;
	din[0][10] = t0n10_din;
	t0n10_dout = dout[0][10];
	we[0][10] = t0n10_we;
	addr[0][10] = t0n10_addr;
	clk[0][10] = t0n10_clk;

	en[0][11] = t0n11_en;
	din[0][11] = t0n11_din;
	t0n11_dout = dout[0][11];
	we[0][11] = t0n11_we;
	addr[0][11] = t0n11_addr;
	clk[0][11] = t0n11_clk;

	en[0][12] = t0n12_en;
	din[0][12] = t0n12_din;
	t0n12_dout = dout[0][12];
	we[0][12] = t0n12_we;
	addr[0][12] = t0n12_addr;
	clk[0][12] = t0n12_clk;

	en[0][13] = t0n13_en;
	din[0][13] = t0n13_din;
	t0n13_dout = dout[0][13];
	we[0][13] = t0n13_we;
	addr[0][13] = t0n13_addr;
	clk[0][13] = t0n13_clk;

	en[0][14] = t0n14_en;
	din[0][14] = t0n14_din;
	t0n14_dout = dout[0][14];
	we[0][14] = t0n14_we;
	addr[0][14] = t0n14_addr;
	clk[0][14] = t0n14_clk;

	en[0][15] = t0n15_en;
	din[0][15] = t0n15_din;
	t0n15_dout = dout[0][15];
	we[0][15] = t0n15_we;
	addr[0][15] = t0n15_addr;
	clk[0][15] = t0n15_clk;

	en[1][0] = t1n0_en;
	din[1][0] = t1n0_din;
	t1n0_dout = dout[1][0];
	we[1][0] = t1n0_we;
	addr[1][0] = t1n0_addr;
	clk[1][0] = t1n0_clk;

	en[1][1] = t1n1_en;
	din[1][1] = t1n1_din;
	t1n1_dout = dout[1][1];
	we[1][1] = t1n1_we;
	addr[1][1] = t1n1_addr;
	clk[1][1] = t1n1_clk;

	en[1][2] = t1n2_en;
	din[1][2] = t1n2_din;
	t1n2_dout = dout[1][2];
	we[1][2] = t1n2_we;
	addr[1][2] = t1n2_addr;
	clk[1][2] = t1n2_clk;

	en[1][3] = t1n3_en;
	din[1][3] = t1n3_din;
	t1n3_dout = dout[1][3];
	we[1][3] = t1n3_we;
	addr[1][3] = t1n3_addr;
	clk[1][3] = t1n3_clk;

	en[1][4] = t1n4_en;
	din[1][4] = t1n4_din;
	t1n4_dout = dout[1][4];
	we[1][4] = t1n4_we;
	addr[1][4] = t1n4_addr;
	clk[1][4] = t1n4_clk;

	en[1][5] = t1n5_en;
	din[1][5] = t1n5_din;
	t1n5_dout = dout[1][5];
	we[1][5] = t1n5_we;
	addr[1][5] = t1n5_addr;
	clk[1][5] = t1n5_clk;

	en[1][6] = t1n6_en;
	din[1][6] = t1n6_din;
	t1n6_dout = dout[1][6];
	we[1][6] = t1n6_we;
	addr[1][6] = t1n6_addr;
	clk[1][6] = t1n6_clk;

	en[1][7] = t1n7_en;
	din[1][7] = t1n7_din;
	t1n7_dout = dout[1][7];
	we[1][7] = t1n7_we;
	addr[1][7] = t1n7_addr;
	clk[1][7] = t1n7_clk;

	en[1][8] = t1n8_en;
	din[1][8] = t1n8_din;
	t1n8_dout = dout[1][8];
	we[1][8] = t1n8_we;
	addr[1][8] = t1n8_addr;
	clk[1][8] = t1n8_clk;

	en[1][9] = t1n9_en;
	din[1][9] = t1n9_din;
	t1n9_dout = dout[1][9];
	we[1][9] = t1n9_we;
	addr[1][9] = t1n9_addr;
	clk[1][9] = t1n9_clk;

	en[1][10] = t1n10_en;
	din[1][10] = t1n10_din;
	t1n10_dout = dout[1][10];
	we[1][10] = t1n10_we;
	addr[1][10] = t1n10_addr;
	clk[1][10] = t1n10_clk;

	en[1][11] = t1n11_en;
	din[1][11] = t1n11_din;
	t1n11_dout = dout[1][11];
	we[1][11] = t1n11_we;
	addr[1][11] = t1n11_addr;
	clk[1][11] = t1n11_clk;

	en[1][12] = t1n12_en;
	din[1][12] = t1n12_din;
	t1n12_dout = dout[1][12];
	we[1][12] = t1n12_we;
	addr[1][12] = t1n12_addr;
	clk[1][12] = t1n12_clk;

	en[1][13] = t1n13_en;
	din[1][13] = t1n13_din;
	t1n13_dout = dout[1][13];
	we[1][13] = t1n13_we;
	addr[1][13] = t1n13_addr;
	clk[1][13] = t1n13_clk;

	en[1][14] = t1n14_en;
	din[1][14] = t1n14_din;
	t1n14_dout = dout[1][14];
	we[1][14] = t1n14_we;
	addr[1][14] = t1n14_addr;
	clk[1][14] = t1n14_clk;

	en[1][15] = t1n15_en;
	din[1][15] = t1n15_din;
	t1n15_dout = dout[1][15];
	we[1][15] = t1n15_we;
	addr[1][15] = t1n15_addr;
	clk[1][15] = t1n15_clk;

	en[2][0] = t2n0_en;
	din[2][0] = t2n0_din;
	t2n0_dout = dout[2][0];
	we[2][0] = t2n0_we;
	addr[2][0] = t2n0_addr;
	clk[2][0] = t2n0_clk;

	en[2][1] = t2n1_en;
	din[2][1] = t2n1_din;
	t2n1_dout = dout[2][1];
	we[2][1] = t2n1_we;
	addr[2][1] = t2n1_addr;
	clk[2][1] = t2n1_clk;

	en[2][2] = t2n2_en;
	din[2][2] = t2n2_din;
	t2n2_dout = dout[2][2];
	we[2][2] = t2n2_we;
	addr[2][2] = t2n2_addr;
	clk[2][2] = t2n2_clk;

	en[2][3] = t2n3_en;
	din[2][3] = t2n3_din;
	t2n3_dout = dout[2][3];
	we[2][3] = t2n3_we;
	addr[2][3] = t2n3_addr;
	clk[2][3] = t2n3_clk;

	en[2][4] = t2n4_en;
	din[2][4] = t2n4_din;
	t2n4_dout = dout[2][4];
	we[2][4] = t2n4_we;
	addr[2][4] = t2n4_addr;
	clk[2][4] = t2n4_clk;

	en[2][5] = t2n5_en;
	din[2][5] = t2n5_din;
	t2n5_dout = dout[2][5];
	we[2][5] = t2n5_we;
	addr[2][5] = t2n5_addr;
	clk[2][5] = t2n5_clk;

	en[2][6] = t2n6_en;
	din[2][6] = t2n6_din;
	t2n6_dout = dout[2][6];
	we[2][6] = t2n6_we;
	addr[2][6] = t2n6_addr;
	clk[2][6] = t2n6_clk;

	en[2][7] = t2n7_en;
	din[2][7] = t2n7_din;
	t2n7_dout = dout[2][7];
	we[2][7] = t2n7_we;
	addr[2][7] = t2n7_addr;
	clk[2][7] = t2n7_clk;

	en[2][8] = t2n8_en;
	din[2][8] = t2n8_din;
	t2n8_dout = dout[2][8];
	we[2][8] = t2n8_we;
	addr[2][8] = t2n8_addr;
	clk[2][8] = t2n8_clk;

	en[2][9] = t2n9_en;
	din[2][9] = t2n9_din;
	t2n9_dout = dout[2][9];
	we[2][9] = t2n9_we;
	addr[2][9] = t2n9_addr;
	clk[2][9] = t2n9_clk;

	en[2][10] = t2n10_en;
	din[2][10] = t2n10_din;
	t2n10_dout = dout[2][10];
	we[2][10] = t2n10_we;
	addr[2][10] = t2n10_addr;
	clk[2][10] = t2n10_clk;

	en[2][11] = t2n11_en;
	din[2][11] = t2n11_din;
	t2n11_dout = dout[2][11];
	we[2][11] = t2n11_we;
	addr[2][11] = t2n11_addr;
	clk[2][11] = t2n11_clk;

	en[2][12] = t2n12_en;
	din[2][12] = t2n12_din;
	t2n12_dout = dout[2][12];
	we[2][12] = t2n12_we;
	addr[2][12] = t2n12_addr;
	clk[2][12] = t2n12_clk;

	en[2][13] = t2n13_en;
	din[2][13] = t2n13_din;
	t2n13_dout = dout[2][13];
	we[2][13] = t2n13_we;
	addr[2][13] = t2n13_addr;
	clk[2][13] = t2n13_clk;

	en[2][14] = t2n14_en;
	din[2][14] = t2n14_din;
	t2n14_dout = dout[2][14];
	we[2][14] = t2n14_we;
	addr[2][14] = t2n14_addr;
	clk[2][14] = t2n14_clk;

	en[2][15] = t2n15_en;
	din[2][15] = t2n15_din;
	t2n15_dout = dout[2][15];
	we[2][15] = t2n15_we;
	addr[2][15] = t2n15_addr;
	clk[2][15] = t2n15_clk;

	en[3][0] = t3n0_en;
	din[3][0] = t3n0_din;
	t3n0_dout = dout[3][0];
	we[3][0] = t3n0_we;
	addr[3][0] = t3n0_addr;
	clk[3][0] = t3n0_clk;

	en[3][1] = t3n1_en;
	din[3][1] = t3n1_din;
	t3n1_dout = dout[3][1];
	we[3][1] = t3n1_we;
	addr[3][1] = t3n1_addr;
	clk[3][1] = t3n1_clk;

	en[3][2] = t3n2_en;
	din[3][2] = t3n2_din;
	t3n2_dout = dout[3][2];
	we[3][2] = t3n2_we;
	addr[3][2] = t3n2_addr;
	clk[3][2] = t3n2_clk;

	en[3][3] = t3n3_en;
	din[3][3] = t3n3_din;
	t3n3_dout = dout[3][3];
	we[3][3] = t3n3_we;
	addr[3][3] = t3n3_addr;
	clk[3][3] = t3n3_clk;

	en[3][4] = t3n4_en;
	din[3][4] = t3n4_din;
	t3n4_dout = dout[3][4];
	we[3][4] = t3n4_we;
	addr[3][4] = t3n4_addr;
	clk[3][4] = t3n4_clk;

	en[3][5] = t3n5_en;
	din[3][5] = t3n5_din;
	t3n5_dout = dout[3][5];
	we[3][5] = t3n5_we;
	addr[3][5] = t3n5_addr;
	clk[3][5] = t3n5_clk;

	en[3][6] = t3n6_en;
	din[3][6] = t3n6_din;
	t3n6_dout = dout[3][6];
	we[3][6] = t3n6_we;
	addr[3][6] = t3n6_addr;
	clk[3][6] = t3n6_clk;

	en[3][7] = t3n7_en;
	din[3][7] = t3n7_din;
	t3n7_dout = dout[3][7];
	we[3][7] = t3n7_we;
	addr[3][7] = t3n7_addr;
	clk[3][7] = t3n7_clk;

	en[3][8] = t3n8_en;
	din[3][8] = t3n8_din;
	t3n8_dout = dout[3][8];
	we[3][8] = t3n8_we;
	addr[3][8] = t3n8_addr;
	clk[3][8] = t3n8_clk;

	en[3][9] = t3n9_en;
	din[3][9] = t3n9_din;
	t3n9_dout = dout[3][9];
	we[3][9] = t3n9_we;
	addr[3][9] = t3n9_addr;
	clk[3][9] = t3n9_clk;

	en[3][10] = t3n10_en;
	din[3][10] = t3n10_din;
	t3n10_dout = dout[3][10];
	we[3][10] = t3n10_we;
	addr[3][10] = t3n10_addr;
	clk[3][10] = t3n10_clk;

	en[3][11] = t3n11_en;
	din[3][11] = t3n11_din;
	t3n11_dout = dout[3][11];
	we[3][11] = t3n11_we;
	addr[3][11] = t3n11_addr;
	clk[3][11] = t3n11_clk;

	en[3][12] = t3n12_en;
	din[3][12] = t3n12_din;
	t3n12_dout = dout[3][12];
	we[3][12] = t3n12_we;
	addr[3][12] = t3n12_addr;
	clk[3][12] = t3n12_clk;

	en[3][13] = t3n13_en;
	din[3][13] = t3n13_din;
	t3n13_dout = dout[3][13];
	we[3][13] = t3n13_we;
	addr[3][13] = t3n13_addr;
	clk[3][13] = t3n13_clk;

	en[3][14] = t3n14_en;
	din[3][14] = t3n14_din;
	t3n14_dout = dout[3][14];
	we[3][14] = t3n14_we;
	addr[3][14] = t3n14_addr;
	clk[3][14] = t3n14_clk;

	en[3][15] = t3n15_en;
	din[3][15] = t3n15_din;
	t3n15_dout = dout[3][15];
	we[3][15] = t3n15_we;
	addr[3][15] = t3n15_addr;
	clk[3][15] = t3n15_clk;

	en[4][0] = t4n0_en;
	din[4][0] = t4n0_din;
	t4n0_dout = dout[4][0];
	we[4][0] = t4n0_we;
	addr[4][0] = t4n0_addr;
	clk[4][0] = t4n0_clk;

	en[4][1] = t4n1_en;
	din[4][1] = t4n1_din;
	t4n1_dout = dout[4][1];
	we[4][1] = t4n1_we;
	addr[4][1] = t4n1_addr;
	clk[4][1] = t4n1_clk;

	en[4][2] = t4n2_en;
	din[4][2] = t4n2_din;
	t4n2_dout = dout[4][2];
	we[4][2] = t4n2_we;
	addr[4][2] = t4n2_addr;
	clk[4][2] = t4n2_clk;

	en[4][3] = t4n3_en;
	din[4][3] = t4n3_din;
	t4n3_dout = dout[4][3];
	we[4][3] = t4n3_we;
	addr[4][3] = t4n3_addr;
	clk[4][3] = t4n3_clk;

	en[4][4] = t4n4_en;
	din[4][4] = t4n4_din;
	t4n4_dout = dout[4][4];
	we[4][4] = t4n4_we;
	addr[4][4] = t4n4_addr;
	clk[4][4] = t4n4_clk;

	en[4][5] = t4n5_en;
	din[4][5] = t4n5_din;
	t4n5_dout = dout[4][5];
	we[4][5] = t4n5_we;
	addr[4][5] = t4n5_addr;
	clk[4][5] = t4n5_clk;

	en[4][6] = t4n6_en;
	din[4][6] = t4n6_din;
	t4n6_dout = dout[4][6];
	we[4][6] = t4n6_we;
	addr[4][6] = t4n6_addr;
	clk[4][6] = t4n6_clk;

	en[4][7] = t4n7_en;
	din[4][7] = t4n7_din;
	t4n7_dout = dout[4][7];
	we[4][7] = t4n7_we;
	addr[4][7] = t4n7_addr;
	clk[4][7] = t4n7_clk;

	en[4][8] = t4n8_en;
	din[4][8] = t4n8_din;
	t4n8_dout = dout[4][8];
	we[4][8] = t4n8_we;
	addr[4][8] = t4n8_addr;
	clk[4][8] = t4n8_clk;

	en[4][9] = t4n9_en;
	din[4][9] = t4n9_din;
	t4n9_dout = dout[4][9];
	we[4][9] = t4n9_we;
	addr[4][9] = t4n9_addr;
	clk[4][9] = t4n9_clk;

	en[4][10] = t4n10_en;
	din[4][10] = t4n10_din;
	t4n10_dout = dout[4][10];
	we[4][10] = t4n10_we;
	addr[4][10] = t4n10_addr;
	clk[4][10] = t4n10_clk;

	en[4][11] = t4n11_en;
	din[4][11] = t4n11_din;
	t4n11_dout = dout[4][11];
	we[4][11] = t4n11_we;
	addr[4][11] = t4n11_addr;
	clk[4][11] = t4n11_clk;

	en[4][12] = t4n12_en;
	din[4][12] = t4n12_din;
	t4n12_dout = dout[4][12];
	we[4][12] = t4n12_we;
	addr[4][12] = t4n12_addr;
	clk[4][12] = t4n12_clk;

	en[4][13] = t4n13_en;
	din[4][13] = t4n13_din;
	t4n13_dout = dout[4][13];
	we[4][13] = t4n13_we;
	addr[4][13] = t4n13_addr;
	clk[4][13] = t4n13_clk;

	en[4][14] = t4n14_en;
	din[4][14] = t4n14_din;
	t4n14_dout = dout[4][14];
	we[4][14] = t4n14_we;
	addr[4][14] = t4n14_addr;
	clk[4][14] = t4n14_clk;

	en[4][15] = t4n15_en;
	din[4][15] = t4n15_din;
	t4n15_dout = dout[4][15];
	we[4][15] = t4n15_we;
	addr[4][15] = t4n15_addr;
	clk[4][15] = t4n15_clk;

	en[5][0] = t5n0_en;
	din[5][0] = t5n0_din;
	t5n0_dout = dout[5][0];
	we[5][0] = t5n0_we;
	addr[5][0] = t5n0_addr;
	clk[5][0] = t5n0_clk;

	en[5][1] = t5n1_en;
	din[5][1] = t5n1_din;
	t5n1_dout = dout[5][1];
	we[5][1] = t5n1_we;
	addr[5][1] = t5n1_addr;
	clk[5][1] = t5n1_clk;

	en[5][2] = t5n2_en;
	din[5][2] = t5n2_din;
	t5n2_dout = dout[5][2];
	we[5][2] = t5n2_we;
	addr[5][2] = t5n2_addr;
	clk[5][2] = t5n2_clk;

	en[5][3] = t5n3_en;
	din[5][3] = t5n3_din;
	t5n3_dout = dout[5][3];
	we[5][3] = t5n3_we;
	addr[5][3] = t5n3_addr;
	clk[5][3] = t5n3_clk;

	en[5][4] = t5n4_en;
	din[5][4] = t5n4_din;
	t5n4_dout = dout[5][4];
	we[5][4] = t5n4_we;
	addr[5][4] = t5n4_addr;
	clk[5][4] = t5n4_clk;

	en[5][5] = t5n5_en;
	din[5][5] = t5n5_din;
	t5n5_dout = dout[5][5];
	we[5][5] = t5n5_we;
	addr[5][5] = t5n5_addr;
	clk[5][5] = t5n5_clk;

	en[5][6] = t5n6_en;
	din[5][6] = t5n6_din;
	t5n6_dout = dout[5][6];
	we[5][6] = t5n6_we;
	addr[5][6] = t5n6_addr;
	clk[5][6] = t5n6_clk;

	en[5][7] = t5n7_en;
	din[5][7] = t5n7_din;
	t5n7_dout = dout[5][7];
	we[5][7] = t5n7_we;
	addr[5][7] = t5n7_addr;
	clk[5][7] = t5n7_clk;

	en[5][8] = t5n8_en;
	din[5][8] = t5n8_din;
	t5n8_dout = dout[5][8];
	we[5][8] = t5n8_we;
	addr[5][8] = t5n8_addr;
	clk[5][8] = t5n8_clk;

	en[5][9] = t5n9_en;
	din[5][9] = t5n9_din;
	t5n9_dout = dout[5][9];
	we[5][9] = t5n9_we;
	addr[5][9] = t5n9_addr;
	clk[5][9] = t5n9_clk;

	en[5][10] = t5n10_en;
	din[5][10] = t5n10_din;
	t5n10_dout = dout[5][10];
	we[5][10] = t5n10_we;
	addr[5][10] = t5n10_addr;
	clk[5][10] = t5n10_clk;

	en[5][11] = t5n11_en;
	din[5][11] = t5n11_din;
	t5n11_dout = dout[5][11];
	we[5][11] = t5n11_we;
	addr[5][11] = t5n11_addr;
	clk[5][11] = t5n11_clk;

	en[5][12] = t5n12_en;
	din[5][12] = t5n12_din;
	t5n12_dout = dout[5][12];
	we[5][12] = t5n12_we;
	addr[5][12] = t5n12_addr;
	clk[5][12] = t5n12_clk;

	en[5][13] = t5n13_en;
	din[5][13] = t5n13_din;
	t5n13_dout = dout[5][13];
	we[5][13] = t5n13_we;
	addr[5][13] = t5n13_addr;
	clk[5][13] = t5n13_clk;

	en[5][14] = t5n14_en;
	din[5][14] = t5n14_din;
	t5n14_dout = dout[5][14];
	we[5][14] = t5n14_we;
	addr[5][14] = t5n14_addr;
	clk[5][14] = t5n14_clk;

	en[5][15] = t5n15_en;
	din[5][15] = t5n15_din;
	t5n15_dout = dout[5][15];
	we[5][15] = t5n15_we;
	addr[5][15] = t5n15_addr;
	clk[5][15] = t5n15_clk;

	en[6][0] = t6n0_en;
	din[6][0] = t6n0_din;
	t6n0_dout = dout[6][0];
	we[6][0] = t6n0_we;
	addr[6][0] = t6n0_addr;
	clk[6][0] = t6n0_clk;

	en[6][1] = t6n1_en;
	din[6][1] = t6n1_din;
	t6n1_dout = dout[6][1];
	we[6][1] = t6n1_we;
	addr[6][1] = t6n1_addr;
	clk[6][1] = t6n1_clk;

	en[6][2] = t6n2_en;
	din[6][2] = t6n2_din;
	t6n2_dout = dout[6][2];
	we[6][2] = t6n2_we;
	addr[6][2] = t6n2_addr;
	clk[6][2] = t6n2_clk;

	en[6][3] = t6n3_en;
	din[6][3] = t6n3_din;
	t6n3_dout = dout[6][3];
	we[6][3] = t6n3_we;
	addr[6][3] = t6n3_addr;
	clk[6][3] = t6n3_clk;

	en[6][4] = t6n4_en;
	din[6][4] = t6n4_din;
	t6n4_dout = dout[6][4];
	we[6][4] = t6n4_we;
	addr[6][4] = t6n4_addr;
	clk[6][4] = t6n4_clk;

	en[6][5] = t6n5_en;
	din[6][5] = t6n5_din;
	t6n5_dout = dout[6][5];
	we[6][5] = t6n5_we;
	addr[6][5] = t6n5_addr;
	clk[6][5] = t6n5_clk;

	en[6][6] = t6n6_en;
	din[6][6] = t6n6_din;
	t6n6_dout = dout[6][6];
	we[6][6] = t6n6_we;
	addr[6][6] = t6n6_addr;
	clk[6][6] = t6n6_clk;

	en[6][7] = t6n7_en;
	din[6][7] = t6n7_din;
	t6n7_dout = dout[6][7];
	we[6][7] = t6n7_we;
	addr[6][7] = t6n7_addr;
	clk[6][7] = t6n7_clk;

	en[6][8] = t6n8_en;
	din[6][8] = t6n8_din;
	t6n8_dout = dout[6][8];
	we[6][8] = t6n8_we;
	addr[6][8] = t6n8_addr;
	clk[6][8] = t6n8_clk;

	en[6][9] = t6n9_en;
	din[6][9] = t6n9_din;
	t6n9_dout = dout[6][9];
	we[6][9] = t6n9_we;
	addr[6][9] = t6n9_addr;
	clk[6][9] = t6n9_clk;

	en[6][10] = t6n10_en;
	din[6][10] = t6n10_din;
	t6n10_dout = dout[6][10];
	we[6][10] = t6n10_we;
	addr[6][10] = t6n10_addr;
	clk[6][10] = t6n10_clk;

	en[6][11] = t6n11_en;
	din[6][11] = t6n11_din;
	t6n11_dout = dout[6][11];
	we[6][11] = t6n11_we;
	addr[6][11] = t6n11_addr;
	clk[6][11] = t6n11_clk;

	en[6][12] = t6n12_en;
	din[6][12] = t6n12_din;
	t6n12_dout = dout[6][12];
	we[6][12] = t6n12_we;
	addr[6][12] = t6n12_addr;
	clk[6][12] = t6n12_clk;

	en[6][13] = t6n13_en;
	din[6][13] = t6n13_din;
	t6n13_dout = dout[6][13];
	we[6][13] = t6n13_we;
	addr[6][13] = t6n13_addr;
	clk[6][13] = t6n13_clk;

	en[6][14] = t6n14_en;
	din[6][14] = t6n14_din;
	t6n14_dout = dout[6][14];
	we[6][14] = t6n14_we;
	addr[6][14] = t6n14_addr;
	clk[6][14] = t6n14_clk;

	en[6][15] = t6n15_en;
	din[6][15] = t6n15_din;
	t6n15_dout = dout[6][15];
	we[6][15] = t6n15_we;
	addr[6][15] = t6n15_addr;
	clk[6][15] = t6n15_clk;

	en[7][0] = t7n0_en;
	din[7][0] = t7n0_din;
	t7n0_dout = dout[7][0];
	we[7][0] = t7n0_we;
	addr[7][0] = t7n0_addr;
	clk[7][0] = t7n0_clk;

	en[7][1] = t7n1_en;
	din[7][1] = t7n1_din;
	t7n1_dout = dout[7][1];
	we[7][1] = t7n1_we;
	addr[7][1] = t7n1_addr;
	clk[7][1] = t7n1_clk;

	en[7][2] = t7n2_en;
	din[7][2] = t7n2_din;
	t7n2_dout = dout[7][2];
	we[7][2] = t7n2_we;
	addr[7][2] = t7n2_addr;
	clk[7][2] = t7n2_clk;

	en[7][3] = t7n3_en;
	din[7][3] = t7n3_din;
	t7n3_dout = dout[7][3];
	we[7][3] = t7n3_we;
	addr[7][3] = t7n3_addr;
	clk[7][3] = t7n3_clk;

	en[7][4] = t7n4_en;
	din[7][4] = t7n4_din;
	t7n4_dout = dout[7][4];
	we[7][4] = t7n4_we;
	addr[7][4] = t7n4_addr;
	clk[7][4] = t7n4_clk;

	en[7][5] = t7n5_en;
	din[7][5] = t7n5_din;
	t7n5_dout = dout[7][5];
	we[7][5] = t7n5_we;
	addr[7][5] = t7n5_addr;
	clk[7][5] = t7n5_clk;

	en[7][6] = t7n6_en;
	din[7][6] = t7n6_din;
	t7n6_dout = dout[7][6];
	we[7][6] = t7n6_we;
	addr[7][6] = t7n6_addr;
	clk[7][6] = t7n6_clk;

	en[7][7] = t7n7_en;
	din[7][7] = t7n7_din;
	t7n7_dout = dout[7][7];
	we[7][7] = t7n7_we;
	addr[7][7] = t7n7_addr;
	clk[7][7] = t7n7_clk;

	en[7][8] = t7n8_en;
	din[7][8] = t7n8_din;
	t7n8_dout = dout[7][8];
	we[7][8] = t7n8_we;
	addr[7][8] = t7n8_addr;
	clk[7][8] = t7n8_clk;

	en[7][9] = t7n9_en;
	din[7][9] = t7n9_din;
	t7n9_dout = dout[7][9];
	we[7][9] = t7n9_we;
	addr[7][9] = t7n9_addr;
	clk[7][9] = t7n9_clk;

	en[7][10] = t7n10_en;
	din[7][10] = t7n10_din;
	t7n10_dout = dout[7][10];
	we[7][10] = t7n10_we;
	addr[7][10] = t7n10_addr;
	clk[7][10] = t7n10_clk;

	en[7][11] = t7n11_en;
	din[7][11] = t7n11_din;
	t7n11_dout = dout[7][11];
	we[7][11] = t7n11_we;
	addr[7][11] = t7n11_addr;
	clk[7][11] = t7n11_clk;

	en[7][12] = t7n12_en;
	din[7][12] = t7n12_din;
	t7n12_dout = dout[7][12];
	we[7][12] = t7n12_we;
	addr[7][12] = t7n12_addr;
	clk[7][12] = t7n12_clk;

	en[7][13] = t7n13_en;
	din[7][13] = t7n13_din;
	t7n13_dout = dout[7][13];
	we[7][13] = t7n13_we;
	addr[7][13] = t7n13_addr;
	clk[7][13] = t7n13_clk;

	en[7][14] = t7n14_en;
	din[7][14] = t7n14_din;
	t7n14_dout = dout[7][14];
	we[7][14] = t7n14_we;
	addr[7][14] = t7n14_addr;
	clk[7][14] = t7n14_clk;

	en[7][15] = t7n15_en;
	din[7][15] = t7n15_din;
	t7n15_dout = dout[7][15];
	we[7][15] = t7n15_we;
	addr[7][15] = t7n15_addr;
	clk[7][15] = t7n15_clk;

	en[8][0] = t8n0_en;
	din[8][0] = t8n0_din;
	t8n0_dout = dout[8][0];
	we[8][0] = t8n0_we;
	addr[8][0] = t8n0_addr;
	clk[8][0] = t8n0_clk;

	en[8][1] = t8n1_en;
	din[8][1] = t8n1_din;
	t8n1_dout = dout[8][1];
	we[8][1] = t8n1_we;
	addr[8][1] = t8n1_addr;
	clk[8][1] = t8n1_clk;

	en[8][2] = t8n2_en;
	din[8][2] = t8n2_din;
	t8n2_dout = dout[8][2];
	we[8][2] = t8n2_we;
	addr[8][2] = t8n2_addr;
	clk[8][2] = t8n2_clk;

	en[8][3] = t8n3_en;
	din[8][3] = t8n3_din;
	t8n3_dout = dout[8][3];
	we[8][3] = t8n3_we;
	addr[8][3] = t8n3_addr;
	clk[8][3] = t8n3_clk;

	en[8][4] = t8n4_en;
	din[8][4] = t8n4_din;
	t8n4_dout = dout[8][4];
	we[8][4] = t8n4_we;
	addr[8][4] = t8n4_addr;
	clk[8][4] = t8n4_clk;

	en[8][5] = t8n5_en;
	din[8][5] = t8n5_din;
	t8n5_dout = dout[8][5];
	we[8][5] = t8n5_we;
	addr[8][5] = t8n5_addr;
	clk[8][5] = t8n5_clk;

	en[8][6] = t8n6_en;
	din[8][6] = t8n6_din;
	t8n6_dout = dout[8][6];
	we[8][6] = t8n6_we;
	addr[8][6] = t8n6_addr;
	clk[8][6] = t8n6_clk;

	en[8][7] = t8n7_en;
	din[8][7] = t8n7_din;
	t8n7_dout = dout[8][7];
	we[8][7] = t8n7_we;
	addr[8][7] = t8n7_addr;
	clk[8][7] = t8n7_clk;

	en[8][8] = t8n8_en;
	din[8][8] = t8n8_din;
	t8n8_dout = dout[8][8];
	we[8][8] = t8n8_we;
	addr[8][8] = t8n8_addr;
	clk[8][8] = t8n8_clk;

	en[8][9] = t8n9_en;
	din[8][9] = t8n9_din;
	t8n9_dout = dout[8][9];
	we[8][9] = t8n9_we;
	addr[8][9] = t8n9_addr;
	clk[8][9] = t8n9_clk;

	en[8][10] = t8n10_en;
	din[8][10] = t8n10_din;
	t8n10_dout = dout[8][10];
	we[8][10] = t8n10_we;
	addr[8][10] = t8n10_addr;
	clk[8][10] = t8n10_clk;

	en[8][11] = t8n11_en;
	din[8][11] = t8n11_din;
	t8n11_dout = dout[8][11];
	we[8][11] = t8n11_we;
	addr[8][11] = t8n11_addr;
	clk[8][11] = t8n11_clk;

	en[8][12] = t8n12_en;
	din[8][12] = t8n12_din;
	t8n12_dout = dout[8][12];
	we[8][12] = t8n12_we;
	addr[8][12] = t8n12_addr;
	clk[8][12] = t8n12_clk;

	en[8][13] = t8n13_en;
	din[8][13] = t8n13_din;
	t8n13_dout = dout[8][13];
	we[8][13] = t8n13_we;
	addr[8][13] = t8n13_addr;
	clk[8][13] = t8n13_clk;

	en[8][14] = t8n14_en;
	din[8][14] = t8n14_din;
	t8n14_dout = dout[8][14];
	we[8][14] = t8n14_we;
	addr[8][14] = t8n14_addr;
	clk[8][14] = t8n14_clk;

	en[8][15] = t8n15_en;
	din[8][15] = t8n15_din;
	t8n15_dout = dout[8][15];
	we[8][15] = t8n15_we;
	addr[8][15] = t8n15_addr;
	clk[8][15] = t8n15_clk;

	en[9][0] = t9n0_en;
	din[9][0] = t9n0_din;
	t9n0_dout = dout[9][0];
	we[9][0] = t9n0_we;
	addr[9][0] = t9n0_addr;
	clk[9][0] = t9n0_clk;

	en[9][1] = t9n1_en;
	din[9][1] = t9n1_din;
	t9n1_dout = dout[9][1];
	we[9][1] = t9n1_we;
	addr[9][1] = t9n1_addr;
	clk[9][1] = t9n1_clk;

	en[9][2] = t9n2_en;
	din[9][2] = t9n2_din;
	t9n2_dout = dout[9][2];
	we[9][2] = t9n2_we;
	addr[9][2] = t9n2_addr;
	clk[9][2] = t9n2_clk;

	en[9][3] = t9n3_en;
	din[9][3] = t9n3_din;
	t9n3_dout = dout[9][3];
	we[9][3] = t9n3_we;
	addr[9][3] = t9n3_addr;
	clk[9][3] = t9n3_clk;

	en[9][4] = t9n4_en;
	din[9][4] = t9n4_din;
	t9n4_dout = dout[9][4];
	we[9][4] = t9n4_we;
	addr[9][4] = t9n4_addr;
	clk[9][4] = t9n4_clk;

	en[9][5] = t9n5_en;
	din[9][5] = t9n5_din;
	t9n5_dout = dout[9][5];
	we[9][5] = t9n5_we;
	addr[9][5] = t9n5_addr;
	clk[9][5] = t9n5_clk;

	en[9][6] = t9n6_en;
	din[9][6] = t9n6_din;
	t9n6_dout = dout[9][6];
	we[9][6] = t9n6_we;
	addr[9][6] = t9n6_addr;
	clk[9][6] = t9n6_clk;

	en[9][7] = t9n7_en;
	din[9][7] = t9n7_din;
	t9n7_dout = dout[9][7];
	we[9][7] = t9n7_we;
	addr[9][7] = t9n7_addr;
	clk[9][7] = t9n7_clk;

	en[9][8] = t9n8_en;
	din[9][8] = t9n8_din;
	t9n8_dout = dout[9][8];
	we[9][8] = t9n8_we;
	addr[9][8] = t9n8_addr;
	clk[9][8] = t9n8_clk;

	en[9][9] = t9n9_en;
	din[9][9] = t9n9_din;
	t9n9_dout = dout[9][9];
	we[9][9] = t9n9_we;
	addr[9][9] = t9n9_addr;
	clk[9][9] = t9n9_clk;

	en[9][10] = t9n10_en;
	din[9][10] = t9n10_din;
	t9n10_dout = dout[9][10];
	we[9][10] = t9n10_we;
	addr[9][10] = t9n10_addr;
	clk[9][10] = t9n10_clk;

	en[9][11] = t9n11_en;
	din[9][11] = t9n11_din;
	t9n11_dout = dout[9][11];
	we[9][11] = t9n11_we;
	addr[9][11] = t9n11_addr;
	clk[9][11] = t9n11_clk;

	en[9][12] = t9n12_en;
	din[9][12] = t9n12_din;
	t9n12_dout = dout[9][12];
	we[9][12] = t9n12_we;
	addr[9][12] = t9n12_addr;
	clk[9][12] = t9n12_clk;

	en[9][13] = t9n13_en;
	din[9][13] = t9n13_din;
	t9n13_dout = dout[9][13];
	we[9][13] = t9n13_we;
	addr[9][13] = t9n13_addr;
	clk[9][13] = t9n13_clk;

	en[9][14] = t9n14_en;
	din[9][14] = t9n14_din;
	t9n14_dout = dout[9][14];
	we[9][14] = t9n14_we;
	addr[9][14] = t9n14_addr;
	clk[9][14] = t9n14_clk;

	en[9][15] = t9n15_en;
	din[9][15] = t9n15_din;
	t9n15_dout = dout[9][15];
	we[9][15] = t9n15_we;
	addr[9][15] = t9n15_addr;
	clk[9][15] = t9n15_clk;

	en[10][0] = t10n0_en;
	din[10][0] = t10n0_din;
	t10n0_dout = dout[10][0];
	we[10][0] = t10n0_we;
	addr[10][0] = t10n0_addr;
	clk[10][0] = t10n0_clk;

	en[10][1] = t10n1_en;
	din[10][1] = t10n1_din;
	t10n1_dout = dout[10][1];
	we[10][1] = t10n1_we;
	addr[10][1] = t10n1_addr;
	clk[10][1] = t10n1_clk;

	en[10][2] = t10n2_en;
	din[10][2] = t10n2_din;
	t10n2_dout = dout[10][2];
	we[10][2] = t10n2_we;
	addr[10][2] = t10n2_addr;
	clk[10][2] = t10n2_clk;

	en[10][3] = t10n3_en;
	din[10][3] = t10n3_din;
	t10n3_dout = dout[10][3];
	we[10][3] = t10n3_we;
	addr[10][3] = t10n3_addr;
	clk[10][3] = t10n3_clk;

	en[10][4] = t10n4_en;
	din[10][4] = t10n4_din;
	t10n4_dout = dout[10][4];
	we[10][4] = t10n4_we;
	addr[10][4] = t10n4_addr;
	clk[10][4] = t10n4_clk;

	en[10][5] = t10n5_en;
	din[10][5] = t10n5_din;
	t10n5_dout = dout[10][5];
	we[10][5] = t10n5_we;
	addr[10][5] = t10n5_addr;
	clk[10][5] = t10n5_clk;

	en[10][6] = t10n6_en;
	din[10][6] = t10n6_din;
	t10n6_dout = dout[10][6];
	we[10][6] = t10n6_we;
	addr[10][6] = t10n6_addr;
	clk[10][6] = t10n6_clk;

	en[10][7] = t10n7_en;
	din[10][7] = t10n7_din;
	t10n7_dout = dout[10][7];
	we[10][7] = t10n7_we;
	addr[10][7] = t10n7_addr;
	clk[10][7] = t10n7_clk;

	en[10][8] = t10n8_en;
	din[10][8] = t10n8_din;
	t10n8_dout = dout[10][8];
	we[10][8] = t10n8_we;
	addr[10][8] = t10n8_addr;
	clk[10][8] = t10n8_clk;

	en[10][9] = t10n9_en;
	din[10][9] = t10n9_din;
	t10n9_dout = dout[10][9];
	we[10][9] = t10n9_we;
	addr[10][9] = t10n9_addr;
	clk[10][9] = t10n9_clk;

	en[10][10] = t10n10_en;
	din[10][10] = t10n10_din;
	t10n10_dout = dout[10][10];
	we[10][10] = t10n10_we;
	addr[10][10] = t10n10_addr;
	clk[10][10] = t10n10_clk;

	en[10][11] = t10n11_en;
	din[10][11] = t10n11_din;
	t10n11_dout = dout[10][11];
	we[10][11] = t10n11_we;
	addr[10][11] = t10n11_addr;
	clk[10][11] = t10n11_clk;

	en[10][12] = t10n12_en;
	din[10][12] = t10n12_din;
	t10n12_dout = dout[10][12];
	we[10][12] = t10n12_we;
	addr[10][12] = t10n12_addr;
	clk[10][12] = t10n12_clk;

	en[10][13] = t10n13_en;
	din[10][13] = t10n13_din;
	t10n13_dout = dout[10][13];
	we[10][13] = t10n13_we;
	addr[10][13] = t10n13_addr;
	clk[10][13] = t10n13_clk;

	en[10][14] = t10n14_en;
	din[10][14] = t10n14_din;
	t10n14_dout = dout[10][14];
	we[10][14] = t10n14_we;
	addr[10][14] = t10n14_addr;
	clk[10][14] = t10n14_clk;

	en[10][15] = t10n15_en;
	din[10][15] = t10n15_din;
	t10n15_dout = dout[10][15];
	we[10][15] = t10n15_we;
	addr[10][15] = t10n15_addr;
	clk[10][15] = t10n15_clk;

	en[11][0] = t11n0_en;
	din[11][0] = t11n0_din;
	t11n0_dout = dout[11][0];
	we[11][0] = t11n0_we;
	addr[11][0] = t11n0_addr;
	clk[11][0] = t11n0_clk;

	en[11][1] = t11n1_en;
	din[11][1] = t11n1_din;
	t11n1_dout = dout[11][1];
	we[11][1] = t11n1_we;
	addr[11][1] = t11n1_addr;
	clk[11][1] = t11n1_clk;

	en[11][2] = t11n2_en;
	din[11][2] = t11n2_din;
	t11n2_dout = dout[11][2];
	we[11][2] = t11n2_we;
	addr[11][2] = t11n2_addr;
	clk[11][2] = t11n2_clk;

	en[11][3] = t11n3_en;
	din[11][3] = t11n3_din;
	t11n3_dout = dout[11][3];
	we[11][3] = t11n3_we;
	addr[11][3] = t11n3_addr;
	clk[11][3] = t11n3_clk;

	en[11][4] = t11n4_en;
	din[11][4] = t11n4_din;
	t11n4_dout = dout[11][4];
	we[11][4] = t11n4_we;
	addr[11][4] = t11n4_addr;
	clk[11][4] = t11n4_clk;

	en[11][5] = t11n5_en;
	din[11][5] = t11n5_din;
	t11n5_dout = dout[11][5];
	we[11][5] = t11n5_we;
	addr[11][5] = t11n5_addr;
	clk[11][5] = t11n5_clk;

	en[11][6] = t11n6_en;
	din[11][6] = t11n6_din;
	t11n6_dout = dout[11][6];
	we[11][6] = t11n6_we;
	addr[11][6] = t11n6_addr;
	clk[11][6] = t11n6_clk;

	en[11][7] = t11n7_en;
	din[11][7] = t11n7_din;
	t11n7_dout = dout[11][7];
	we[11][7] = t11n7_we;
	addr[11][7] = t11n7_addr;
	clk[11][7] = t11n7_clk;

	en[11][8] = t11n8_en;
	din[11][8] = t11n8_din;
	t11n8_dout = dout[11][8];
	we[11][8] = t11n8_we;
	addr[11][8] = t11n8_addr;
	clk[11][8] = t11n8_clk;

	en[11][9] = t11n9_en;
	din[11][9] = t11n9_din;
	t11n9_dout = dout[11][9];
	we[11][9] = t11n9_we;
	addr[11][9] = t11n9_addr;
	clk[11][9] = t11n9_clk;

	en[11][10] = t11n10_en;
	din[11][10] = t11n10_din;
	t11n10_dout = dout[11][10];
	we[11][10] = t11n10_we;
	addr[11][10] = t11n10_addr;
	clk[11][10] = t11n10_clk;

	en[11][11] = t11n11_en;
	din[11][11] = t11n11_din;
	t11n11_dout = dout[11][11];
	we[11][11] = t11n11_we;
	addr[11][11] = t11n11_addr;
	clk[11][11] = t11n11_clk;

	en[11][12] = t11n12_en;
	din[11][12] = t11n12_din;
	t11n12_dout = dout[11][12];
	we[11][12] = t11n12_we;
	addr[11][12] = t11n12_addr;
	clk[11][12] = t11n12_clk;

	en[11][13] = t11n13_en;
	din[11][13] = t11n13_din;
	t11n13_dout = dout[11][13];
	we[11][13] = t11n13_we;
	addr[11][13] = t11n13_addr;
	clk[11][13] = t11n13_clk;

	en[11][14] = t11n14_en;
	din[11][14] = t11n14_din;
	t11n14_dout = dout[11][14];
	we[11][14] = t11n14_we;
	addr[11][14] = t11n14_addr;
	clk[11][14] = t11n14_clk;

	en[11][15] = t11n15_en;
	din[11][15] = t11n15_din;
	t11n15_dout = dout[11][15];
	we[11][15] = t11n15_we;
	addr[11][15] = t11n15_addr;
	clk[11][15] = t11n15_clk;

	en[12][0] = t12n0_en;
	din[12][0] = t12n0_din;
	t12n0_dout = dout[12][0];
	we[12][0] = t12n0_we;
	addr[12][0] = t12n0_addr;
	clk[12][0] = t12n0_clk;

	en[12][1] = t12n1_en;
	din[12][1] = t12n1_din;
	t12n1_dout = dout[12][1];
	we[12][1] = t12n1_we;
	addr[12][1] = t12n1_addr;
	clk[12][1] = t12n1_clk;

	en[12][2] = t12n2_en;
	din[12][2] = t12n2_din;
	t12n2_dout = dout[12][2];
	we[12][2] = t12n2_we;
	addr[12][2] = t12n2_addr;
	clk[12][2] = t12n2_clk;

	en[12][3] = t12n3_en;
	din[12][3] = t12n3_din;
	t12n3_dout = dout[12][3];
	we[12][3] = t12n3_we;
	addr[12][3] = t12n3_addr;
	clk[12][3] = t12n3_clk;

	en[12][4] = t12n4_en;
	din[12][4] = t12n4_din;
	t12n4_dout = dout[12][4];
	we[12][4] = t12n4_we;
	addr[12][4] = t12n4_addr;
	clk[12][4] = t12n4_clk;

	en[12][5] = t12n5_en;
	din[12][5] = t12n5_din;
	t12n5_dout = dout[12][5];
	we[12][5] = t12n5_we;
	addr[12][5] = t12n5_addr;
	clk[12][5] = t12n5_clk;

	en[12][6] = t12n6_en;
	din[12][6] = t12n6_din;
	t12n6_dout = dout[12][6];
	we[12][6] = t12n6_we;
	addr[12][6] = t12n6_addr;
	clk[12][6] = t12n6_clk;

	en[12][7] = t12n7_en;
	din[12][7] = t12n7_din;
	t12n7_dout = dout[12][7];
	we[12][7] = t12n7_we;
	addr[12][7] = t12n7_addr;
	clk[12][7] = t12n7_clk;

	en[12][8] = t12n8_en;
	din[12][8] = t12n8_din;
	t12n8_dout = dout[12][8];
	we[12][8] = t12n8_we;
	addr[12][8] = t12n8_addr;
	clk[12][8] = t12n8_clk;

	en[12][9] = t12n9_en;
	din[12][9] = t12n9_din;
	t12n9_dout = dout[12][9];
	we[12][9] = t12n9_we;
	addr[12][9] = t12n9_addr;
	clk[12][9] = t12n9_clk;

	en[12][10] = t12n10_en;
	din[12][10] = t12n10_din;
	t12n10_dout = dout[12][10];
	we[12][10] = t12n10_we;
	addr[12][10] = t12n10_addr;
	clk[12][10] = t12n10_clk;

	en[12][11] = t12n11_en;
	din[12][11] = t12n11_din;
	t12n11_dout = dout[12][11];
	we[12][11] = t12n11_we;
	addr[12][11] = t12n11_addr;
	clk[12][11] = t12n11_clk;

	en[12][12] = t12n12_en;
	din[12][12] = t12n12_din;
	t12n12_dout = dout[12][12];
	we[12][12] = t12n12_we;
	addr[12][12] = t12n12_addr;
	clk[12][12] = t12n12_clk;

	en[12][13] = t12n13_en;
	din[12][13] = t12n13_din;
	t12n13_dout = dout[12][13];
	we[12][13] = t12n13_we;
	addr[12][13] = t12n13_addr;
	clk[12][13] = t12n13_clk;

	en[12][14] = t12n14_en;
	din[12][14] = t12n14_din;
	t12n14_dout = dout[12][14];
	we[12][14] = t12n14_we;
	addr[12][14] = t12n14_addr;
	clk[12][14] = t12n14_clk;

	en[12][15] = t12n15_en;
	din[12][15] = t12n15_din;
	t12n15_dout = dout[12][15];
	we[12][15] = t12n15_we;
	addr[12][15] = t12n15_addr;
	clk[12][15] = t12n15_clk;

	en[13][0] = t13n0_en;
	din[13][0] = t13n0_din;
	t13n0_dout = dout[13][0];
	we[13][0] = t13n0_we;
	addr[13][0] = t13n0_addr;
	clk[13][0] = t13n0_clk;

	en[13][1] = t13n1_en;
	din[13][1] = t13n1_din;
	t13n1_dout = dout[13][1];
	we[13][1] = t13n1_we;
	addr[13][1] = t13n1_addr;
	clk[13][1] = t13n1_clk;

	en[13][2] = t13n2_en;
	din[13][2] = t13n2_din;
	t13n2_dout = dout[13][2];
	we[13][2] = t13n2_we;
	addr[13][2] = t13n2_addr;
	clk[13][2] = t13n2_clk;

	en[13][3] = t13n3_en;
	din[13][3] = t13n3_din;
	t13n3_dout = dout[13][3];
	we[13][3] = t13n3_we;
	addr[13][3] = t13n3_addr;
	clk[13][3] = t13n3_clk;

	en[13][4] = t13n4_en;
	din[13][4] = t13n4_din;
	t13n4_dout = dout[13][4];
	we[13][4] = t13n4_we;
	addr[13][4] = t13n4_addr;
	clk[13][4] = t13n4_clk;

	en[13][5] = t13n5_en;
	din[13][5] = t13n5_din;
	t13n5_dout = dout[13][5];
	we[13][5] = t13n5_we;
	addr[13][5] = t13n5_addr;
	clk[13][5] = t13n5_clk;

	en[13][6] = t13n6_en;
	din[13][6] = t13n6_din;
	t13n6_dout = dout[13][6];
	we[13][6] = t13n6_we;
	addr[13][6] = t13n6_addr;
	clk[13][6] = t13n6_clk;

	en[13][7] = t13n7_en;
	din[13][7] = t13n7_din;
	t13n7_dout = dout[13][7];
	we[13][7] = t13n7_we;
	addr[13][7] = t13n7_addr;
	clk[13][7] = t13n7_clk;

	en[13][8] = t13n8_en;
	din[13][8] = t13n8_din;
	t13n8_dout = dout[13][8];
	we[13][8] = t13n8_we;
	addr[13][8] = t13n8_addr;
	clk[13][8] = t13n8_clk;

	en[13][9] = t13n9_en;
	din[13][9] = t13n9_din;
	t13n9_dout = dout[13][9];
	we[13][9] = t13n9_we;
	addr[13][9] = t13n9_addr;
	clk[13][9] = t13n9_clk;

	en[13][10] = t13n10_en;
	din[13][10] = t13n10_din;
	t13n10_dout = dout[13][10];
	we[13][10] = t13n10_we;
	addr[13][10] = t13n10_addr;
	clk[13][10] = t13n10_clk;

	en[13][11] = t13n11_en;
	din[13][11] = t13n11_din;
	t13n11_dout = dout[13][11];
	we[13][11] = t13n11_we;
	addr[13][11] = t13n11_addr;
	clk[13][11] = t13n11_clk;

	en[13][12] = t13n12_en;
	din[13][12] = t13n12_din;
	t13n12_dout = dout[13][12];
	we[13][12] = t13n12_we;
	addr[13][12] = t13n12_addr;
	clk[13][12] = t13n12_clk;

	en[13][13] = t13n13_en;
	din[13][13] = t13n13_din;
	t13n13_dout = dout[13][13];
	we[13][13] = t13n13_we;
	addr[13][13] = t13n13_addr;
	clk[13][13] = t13n13_clk;

	en[13][14] = t13n14_en;
	din[13][14] = t13n14_din;
	t13n14_dout = dout[13][14];
	we[13][14] = t13n14_we;
	addr[13][14] = t13n14_addr;
	clk[13][14] = t13n14_clk;

	en[13][15] = t13n15_en;
	din[13][15] = t13n15_din;
	t13n15_dout = dout[13][15];
	we[13][15] = t13n15_we;
	addr[13][15] = t13n15_addr;
	clk[13][15] = t13n15_clk;

	en[14][0] = t14n0_en;
	din[14][0] = t14n0_din;
	t14n0_dout = dout[14][0];
	we[14][0] = t14n0_we;
	addr[14][0] = t14n0_addr;
	clk[14][0] = t14n0_clk;

	en[14][1] = t14n1_en;
	din[14][1] = t14n1_din;
	t14n1_dout = dout[14][1];
	we[14][1] = t14n1_we;
	addr[14][1] = t14n1_addr;
	clk[14][1] = t14n1_clk;

	en[14][2] = t14n2_en;
	din[14][2] = t14n2_din;
	t14n2_dout = dout[14][2];
	we[14][2] = t14n2_we;
	addr[14][2] = t14n2_addr;
	clk[14][2] = t14n2_clk;

	en[14][3] = t14n3_en;
	din[14][3] = t14n3_din;
	t14n3_dout = dout[14][3];
	we[14][3] = t14n3_we;
	addr[14][3] = t14n3_addr;
	clk[14][3] = t14n3_clk;

	en[14][4] = t14n4_en;
	din[14][4] = t14n4_din;
	t14n4_dout = dout[14][4];
	we[14][4] = t14n4_we;
	addr[14][4] = t14n4_addr;
	clk[14][4] = t14n4_clk;

	en[14][5] = t14n5_en;
	din[14][5] = t14n5_din;
	t14n5_dout = dout[14][5];
	we[14][5] = t14n5_we;
	addr[14][5] = t14n5_addr;
	clk[14][5] = t14n5_clk;

	en[14][6] = t14n6_en;
	din[14][6] = t14n6_din;
	t14n6_dout = dout[14][6];
	we[14][6] = t14n6_we;
	addr[14][6] = t14n6_addr;
	clk[14][6] = t14n6_clk;

	en[14][7] = t14n7_en;
	din[14][7] = t14n7_din;
	t14n7_dout = dout[14][7];
	we[14][7] = t14n7_we;
	addr[14][7] = t14n7_addr;
	clk[14][7] = t14n7_clk;

	en[14][8] = t14n8_en;
	din[14][8] = t14n8_din;
	t14n8_dout = dout[14][8];
	we[14][8] = t14n8_we;
	addr[14][8] = t14n8_addr;
	clk[14][8] = t14n8_clk;

	en[14][9] = t14n9_en;
	din[14][9] = t14n9_din;
	t14n9_dout = dout[14][9];
	we[14][9] = t14n9_we;
	addr[14][9] = t14n9_addr;
	clk[14][9] = t14n9_clk;

	en[14][10] = t14n10_en;
	din[14][10] = t14n10_din;
	t14n10_dout = dout[14][10];
	we[14][10] = t14n10_we;
	addr[14][10] = t14n10_addr;
	clk[14][10] = t14n10_clk;

	en[14][11] = t14n11_en;
	din[14][11] = t14n11_din;
	t14n11_dout = dout[14][11];
	we[14][11] = t14n11_we;
	addr[14][11] = t14n11_addr;
	clk[14][11] = t14n11_clk;

	en[14][12] = t14n12_en;
	din[14][12] = t14n12_din;
	t14n12_dout = dout[14][12];
	we[14][12] = t14n12_we;
	addr[14][12] = t14n12_addr;
	clk[14][12] = t14n12_clk;

	en[14][13] = t14n13_en;
	din[14][13] = t14n13_din;
	t14n13_dout = dout[14][13];
	we[14][13] = t14n13_we;
	addr[14][13] = t14n13_addr;
	clk[14][13] = t14n13_clk;

	en[14][14] = t14n14_en;
	din[14][14] = t14n14_din;
	t14n14_dout = dout[14][14];
	we[14][14] = t14n14_we;
	addr[14][14] = t14n14_addr;
	clk[14][14] = t14n14_clk;

	en[14][15] = t14n15_en;
	din[14][15] = t14n15_din;
	t14n15_dout = dout[14][15];
	we[14][15] = t14n15_we;
	addr[14][15] = t14n15_addr;
	clk[14][15] = t14n15_clk;

	en[15][0] = t15n0_en;
	din[15][0] = t15n0_din;
	t15n0_dout = dout[15][0];
	we[15][0] = t15n0_we;
	addr[15][0] = t15n0_addr;
	clk[15][0] = t15n0_clk;

	en[15][1] = t15n1_en;
	din[15][1] = t15n1_din;
	t15n1_dout = dout[15][1];
	we[15][1] = t15n1_we;
	addr[15][1] = t15n1_addr;
	clk[15][1] = t15n1_clk;

	en[15][2] = t15n2_en;
	din[15][2] = t15n2_din;
	t15n2_dout = dout[15][2];
	we[15][2] = t15n2_we;
	addr[15][2] = t15n2_addr;
	clk[15][2] = t15n2_clk;

	en[15][3] = t15n3_en;
	din[15][3] = t15n3_din;
	t15n3_dout = dout[15][3];
	we[15][3] = t15n3_we;
	addr[15][3] = t15n3_addr;
	clk[15][3] = t15n3_clk;

	en[15][4] = t15n4_en;
	din[15][4] = t15n4_din;
	t15n4_dout = dout[15][4];
	we[15][4] = t15n4_we;
	addr[15][4] = t15n4_addr;
	clk[15][4] = t15n4_clk;

	en[15][5] = t15n5_en;
	din[15][5] = t15n5_din;
	t15n5_dout = dout[15][5];
	we[15][5] = t15n5_we;
	addr[15][5] = t15n5_addr;
	clk[15][5] = t15n5_clk;

	en[15][6] = t15n6_en;
	din[15][6] = t15n6_din;
	t15n6_dout = dout[15][6];
	we[15][6] = t15n6_we;
	addr[15][6] = t15n6_addr;
	clk[15][6] = t15n6_clk;

	en[15][7] = t15n7_en;
	din[15][7] = t15n7_din;
	t15n7_dout = dout[15][7];
	we[15][7] = t15n7_we;
	addr[15][7] = t15n7_addr;
	clk[15][7] = t15n7_clk;

	en[15][8] = t15n8_en;
	din[15][8] = t15n8_din;
	t15n8_dout = dout[15][8];
	we[15][8] = t15n8_we;
	addr[15][8] = t15n8_addr;
	clk[15][8] = t15n8_clk;

	en[15][9] = t15n9_en;
	din[15][9] = t15n9_din;
	t15n9_dout = dout[15][9];
	we[15][9] = t15n9_we;
	addr[15][9] = t15n9_addr;
	clk[15][9] = t15n9_clk;

	en[15][10] = t15n10_en;
	din[15][10] = t15n10_din;
	t15n10_dout = dout[15][10];
	we[15][10] = t15n10_we;
	addr[15][10] = t15n10_addr;
	clk[15][10] = t15n10_clk;

	en[15][11] = t15n11_en;
	din[15][11] = t15n11_din;
	t15n11_dout = dout[15][11];
	we[15][11] = t15n11_we;
	addr[15][11] = t15n11_addr;
	clk[15][11] = t15n11_clk;

	en[15][12] = t15n12_en;
	din[15][12] = t15n12_din;
	t15n12_dout = dout[15][12];
	we[15][12] = t15n12_we;
	addr[15][12] = t15n12_addr;
	clk[15][12] = t15n12_clk;

	en[15][13] = t15n13_en;
	din[15][13] = t15n13_din;
	t15n13_dout = dout[15][13];
	we[15][13] = t15n13_we;
	addr[15][13] = t15n13_addr;
	clk[15][13] = t15n13_clk;

	en[15][14] = t15n14_en;
	din[15][14] = t15n14_din;
	t15n14_dout = dout[15][14];
	we[15][14] = t15n14_we;
	addr[15][14] = t15n14_addr;
	clk[15][14] = t15n14_clk;

	en[15][15] = t15n15_en;
	din[15][15] = t15n15_din;
	t15n15_dout = dout[15][15];
	we[15][15] = t15n15_we;
	addr[15][15] = t15n15_addr;
	clk[15][15] = t15n15_clk;
end
// end of assignment of ram interface

// AXI4FULL signals and AXI logic
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [C_S_AXI_ID_WIDTH-1 : 0] 	axi_bid;
	reg [1 : 0] 	axi_bresp;
	reg [C_S_AXI_BUSER_WIDTH-1 : 0] 	axi_buser;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	wire [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata_fifo;
	reg  	axi_arready;
	reg [C_S_AXI_ID_WIDTH-1 : 0] 	axi_rid;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rlast;
	reg [C_S_AXI_RUSER_WIDTH-1 : 0] 	axi_ruser;
	reg  	axi_rvalid;
  reg [C_S_RDELAY -1: 0] axi_rvalid_d;
  reg [C_S_RDELAY -1: 0] axi_rlast_d;
	// aw_wrap_en determines wrap boundary and enables wrapping
	wire aw_wrap_en;
	// ar_wrap_en determines wrap boundary and enables wrapping
	wire ar_wrap_en;
	// aw_wrap_size is the size of the write transfer, the
	// write address wraps to a lower address if upper address
	// limit is reached
	wire [31:0]  aw_wrap_size ; 
	// ar_wrap_size is the size of the read transfer, the
	// read address wraps to a lower address if upper address
	// limit is reached
	wire [31:0]  ar_wrap_size ; 
	// The axi_awlen_cntr internal write address counter to keep track of beats in a burst transaction
	reg [7:0] axi_awlen_cntr;
	//The axi_arlen_cntr internal read address counter to keep track of beats in a burst transaction
	reg [7:0] axi_arlen_cntr;
	reg [1:0] axi_arburst;
	reg [1:0] axi_awburst;
	reg [7:0] axi_arlen;
	reg [7:0] axi_awlen;
	//local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	//ADDR_LSB is used for addressing 32/64 bit registers/memories
	//ADDR_LSB = 2 for 32 bits (n downto 2) 
	//ADDR_LSB = 3 for 64 bits (n downto 3)

	//ADDR_LSB = 4 for 128 bits (n downto 4)

	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32)+ 1;
	localparam integer OPT_MEM_ADDR_BITS = C_S_AXI_ADDR_WIDTH - ADDR_LSB -1;
	localparam integer USER_NUM_MEM = 1;

	//----------------------------------------------
	//-- Signals for user logic memory space example
	//------------------------------------------------
	wire [OPT_MEM_ADDR_BITS:0] mem_address_read;
	wire [OPT_MEM_ADDR_BITS:0] mem_address_write;
	wire [C_S_AXI_DATA_WIDTH-1:0] mem_data_out[0 : USER_NUM_MEM-1];

	genvar mem_byte_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BUSER	= axi_buser;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RUSER	= axi_ruser;
	// assign S_AXI_RLAST	= axi_rlast_d[C_S_RDELAY -1];
	// assign S_AXI_RVALID	= axi_rvalid_d[C_S_RDELAY -1];
	assign S_AXI_RLAST	= axi_rlast;
	assign S_AXI_RVALID	= axi_rvalid;
	assign S_AXI_BID = axi_bid;
	assign S_AXI_RID = axi_rid;
	assign S_AXI_RDATA = axi_rdata_fifo;
	assign aw_wrap_size = (C_S_AXI_DATA_WIDTH/8 * (axi_awlen)); 
	assign ar_wrap_size = (C_S_AXI_DATA_WIDTH/8 * (axi_arlen)); 
	assign aw_wrap_en = ((axi_awaddr & aw_wrap_size) == aw_wrap_size)? 1'b1: 1'b0;
	assign ar_wrap_en = ((axi_araddr & ar_wrap_size) == ar_wrap_size)? 1'b1: 1'b0;

	//Implement Write state machine
	//Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
	 //state machines local parameters  
	 localparam Idle = 2'b00,Raddr = 2'b10,Rdata = 2'b11 ,Waddr = 2'b10,Wdata = 2'b11; 
	 //state_machine variables 
	 reg [1:0] state_read; 
	 reg [1:0] state_write; 
	 always @(posedge S_AXI_ACLK)                                  
	   begin                                  
	     if (S_AXI_ARESETN == 1'b0)                                  
	       begin                                  
	        // asserting initial values to all 0's during reset                                  
	        axi_awready <= 0;                                  
	        axi_wready <= 0;                                  
	        axi_bvalid <= 0;                                  
	        axi_buser <= 0;                                  
	        axi_awburst <= 0;                                  
	        axi_bid <= 0;                                  
	        axi_awlen <= 0;                                  
	        axi_bresp <= 0;                                  
	        state_write <= Idle;                                  
	       end                                  
	     else                                   
	       begin                                  
	         case(state_write)                                  
	           Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions                                  
	             begin                                  
	               if(S_AXI_ARESETN == 1'b1)                                   
	                 begin                                  
	                   axi_awready <= 1'b1;                                  
	                   axi_wready <= 1'b1;                                  
	                   state_write <= Waddr;                                  
	                 end                                  
	               else state_write <= state_write;                                  
	             end                                  
	           Waddr:        //At this state, slave is ready to receive address along with corresponding control signals and first data packet. Response valid is also handled at this state                                  
	             begin                                  
	               if (S_AXI_AWVALID && axi_awready)                                  
	                 begin                                          
	                   if (S_AXI_WVALID && S_AXI_WLAST)                                  
	                     begin                                  
	                       axi_bvalid <= 1'b1;                                  
	                       axi_awready <= 1'b1;                                  
	                       state_write <= Waddr;                                  
	                     end                                     
	                   else                                   
	                     begin                                  
	                       if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                  
	                       state_write <= Wdata;                                  
	                       axi_awready <= 1'b0;                                  
	                      end                                  
	                    axi_awburst <= S_AXI_AWBURST;                                  
	                    axi_awlen <= S_AXI_AWLEN;                                  
	                    axi_bid <= S_AXI_AWID;                                  
	                 end                                  
	               else                                   
	                 begin                                  
	                  state_write <= state_write;                                  
	                  if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;                                  
	                 end                                  
	             end                                  
	           Wdata:        //At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length                                  
	             begin                                  
	               if (S_AXI_WVALID && S_AXI_WLAST)                                  
	                 begin                                  
	                   state_write <= Waddr;                                  
	                   axi_bvalid <= 1'b1;                                  
	                   axi_awready <= 1'b1;                                  
	                 end                                  
	               else state_write <= state_write;                                  
	             end                                  
	          endcase                                  
	        end                                  
	     end                                  
	//Implement Read state machine
	//Outstanding read transactions are not supported by the slave

	  always @(posedge S_AXI_ACLK)                                     
	    begin                                     
	      if (S_AXI_ARESETN == 1'b0)                                     
	        begin                                     
	       // asserting initial values to all 0's during reset                                     
	         axi_arready <= 1'b0;                                     
	         axi_arburst <= 1'b0;                                     
	         axi_arlen <= 1'b0;                                     
	         axi_rid <= 1'b0;                                     
	        //  axi_rlast <= 1'b0;                                     
	         axi_ruser <= 1'b0;                                     
	        //  axi_rvalid <= 1'b0;                                     
	         axi_rresp <= 1'b0;                                     
	         state_read <= Idle;                                     
	       end                                     
	     else                                     
	       begin                                     
	         case(state_read)                                     
	           Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions                                     
	             begin                                     
	               if (S_AXI_ARESETN == 1'b1)                                      
	                 begin                                     
	                   state_read <= Raddr;                                     
	                   axi_arready <= 1'b1;                                     
	                 end                                     
	               else state_read <= state_read;                                     
	             end                                     
	           Raddr:        //At this state, slave is ready to receive address and corresponding control signals                                     
	             begin                                     
	               if (S_AXI_ARVALID && axi_arready)                                     
	                 begin                                     
	                   state_read <= Rdata;                                     
	                   axi_arready <= 1'b0;                                     
	                   axi_rid <= S_AXI_ARID;                                     
	                  //  if (S_AXI_ARLEN == 1'b0) axi_rlast <= 1'b1;                                     
	                   axi_arburst <= S_AXI_ARBURST;                                     
	                   axi_arlen <= S_AXI_ARLEN;                                     
	                 end                                     
	               else state_read <= state_read;                                     
	             end                                     
	           Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length                                     
	             begin                                     
	              // if ((axi_arlen_cntr == axi_arlen-1) && ~axi_rlast && S_AXI_RREADY) axi_rlast <= 1'b1;                                        
	              if (axi_rvalid && S_AXI_RREADY && axi_rlast)                                     
	                begin                                     
	                  axi_arready <= 1'b1;                                     
	                  // axi_rlast <= 1'b0;                                     
	                  state_read <= Raddr;                                     
	                end                                     
	              else state_read <= state_read;                                     
	             end                                     
	           endcase                                     
	         end                                     
	    end                                     
	//This always block handles the write address increment
	  always @(posedge S_AXI_ACLK)                             
	    begin                             
	      if (S_AXI_ARESETN == 1'b0)                             
	        begin                             
	          //both axi_awlen_cntr and axi_awaddr will increment after each successfull data received until the number of the transfers is equal to burst length                             
	          axi_awlen_cntr <= 0;                             
	          axi_awaddr <= 0;                             
	        end                             
	      else                              
	        begin                             
	          if (S_AXI_AWVALID && axi_awready)                             
	            begin                             
	              if (S_AXI_WVALID)                             
	                begin                             
	                  axi_awlen_cntr <= 1;                             
	                  if ((S_AXI_AWBURST == 2'b01) || ((S_AXI_AWBURST == 2'b10) && (S_AXI_AWLEN != 0)) )                             
	                    begin                             
	                      axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= S_AXI_AWADDR[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                    end                             
	                  else                             
	                    begin                             
	                      axi_awaddr <= axi_awaddr;                             
	                    end                             
	                 end                             
	               else                             
	                 begin                             
	                   axi_awlen_cntr <= 0;                             
	                   axi_awaddr <= S_AXI_AWADDR[C_S_AXI_ADDR_WIDTH - 1:0];                             
	                 end                             
	              end                             
	        else if((axi_awlen_cntr < axi_awlen) && S_AXI_WVALID)                               
	          begin                             
	            axi_awlen_cntr <= axi_awlen_cntr + 1;                             
	            case (axi_awburst)                             
	              2'b00: // fixed burst                             
	                // The write address for all the beats in the transaction are fixed                             
	                begin                             
	                  axi_awaddr <= axi_awaddr;                                       
	                  //for awsize = 4 bytes (010)                             
	                end                                
	              2'b01: //incremental burst                             
	              // The write address for all the beats in the transaction are increments by awsize                             
	                begin                             
	                  axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                  //awaddr aligned to 4 byte boundary                             
	                  axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                                
	                  //for awsize = 4 bytes (010)                             
	                end                                
	              2'b10: //Wrapping burst                             
	                // The write address wraps when the address reaches wrap boundary                              
	                if (aw_wrap_en)                             
	                  begin                             
	                    axi_awaddr <= (axi_awaddr - aw_wrap_size);                             
	                  end                             
	                else                             
	                  begin                             
	                    axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                    axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                             
	                  end                             
	              default: //reserved (incremental burst for example)                             
	                begin                             
	                  axi_awaddr <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                             
	                  //for awsize = 4 bytes (010)                             
	                end                             
	             endcase                                           
	           end                             
	         end                             
	     end                             
	//This always block handles the read address increment
	 always @(posedge S_AXI_ACLK)                                   
	   begin                                   
	     if (S_AXI_ARESETN == 1'b0)                                   
	       begin                                   
	        //both axi_arlen_cntr and axi_araddr will increment after each successfull data sent until the number of the transfers is equal to burst length                                   
	        axi_arlen_cntr <= 0;                                   
	        axi_araddr <= 0;                                   
	      end                                   
	    else                                   
	      begin                                   
	        if (S_AXI_ARVALID && axi_arready)                                   
	          begin                                   
	            axi_arlen_cntr <= 0;                                   
	            axi_araddr <= S_AXI_ARADDR[C_S_AXI_ADDR_WIDTH - 1:0];                                   
	          end                                   
	        else if(axi_arlen_cntr <= axi_arlen)                                    
	          begin                                   
	            axi_arlen_cntr <= axi_arlen_cntr + 1;                                       
	            case (axi_arburst)                                   
	               2'b00: // fixed burst                                   
	                // The read address for all the beats in the transaction are fixed                                   
	                 begin                                   
	                   axi_araddr       <= axi_araddr;                                           
	                   //for arsize = 4 bytes (010)                                   
	                 end                                      
	               2'b01: //incremental burst                                   
	                // The read address for all the beats in the transaction are increments by awsize                                   
	                 begin                                   
	                   axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                                   
	                   //araddr aligned to 4 byte boundary                                   
	                   axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                                      
	                   //for awsize = 4 bytes (010)                                   
	                 end                                      
	               2'b10: //Wrapping burst                                   
	                // The read address wraps when the address reaches wrap boundary                                    
	                 if (ar_wrap_en)                                    
	                   begin                                   
	                     axi_araddr <= (axi_araddr - ar_wrap_size);                                   
	                   end                                   
	                 else                                    
	                   begin                                   
	                     axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;                                    
	                     //araddr aligned to 4 byte boundary                                   
	                     axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};                                      
	                   end                                                         
	               default: //reserved (incremental burst for example)                                   
	                 begin                                   
	                   axi_araddr <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB]+1;                                   
	                   //for arsize = 4 bytes (010)                                   
	                 end                                   
	             endcase                                                 
	           end                                   
	       end                                   
	   end 

    // always @(posedge S_AXI_ACLK)
    //   begin
    //     integer delay;
    //     axi_rvalid_d[0] <= axi_rvalid;
    //     axi_rlast_d[0] <= axi_rlast;
    //     for(delay = 1; delay < C_S_RDELAY; delay = delay + 1) 
    //       begin
    //         axi_rvalid_d[delay] <= axi_rvalid_d[delay-1];
    //         axi_rlast_d[delay] <= axi_rlast_d[delay-1];
    //       end
    //   end        
// end of axi logics          
      
// start of DPRAM logic       

    wire [$clog2(MAX_INST_PERTYPE * MAX_REG_OFFSET) -1: 0] TYPE_OFFSET [0 : MAX_TYPE -1];
    wire [$clog2(MAX_INST_PERTYPE) : 0] TYPE_SEQ [0 : MAX_TYPE -1] [0 : MAX_INST_PERTYPE -1];
    reg [$clog2(MAX_TYPE * MAX_INST_PERTYPE * MAX_REG_OFFSET) -1: 0] BASE_ADDR [0 : MAX_TYPE -1] [0 : MAX_INST_PERTYPE -1];
    reg [$clog2(MAX_TYPE * MAX_INST_PERTYPE * MAX_REG_OFFSET) -1: 0] HIGH_ADDR [0 : MAX_TYPE -1] [0 : MAX_INST_PERTYPE -1];
		
		wire [MAX_INST_PERTYPE -1: 0] ram_addr_valid [0 : MAX_TYPE -1] [0 : MAX_INST_PERTYPE -1];
		reg [MAX_INST_PERTYPE -1: 0] axi_ram_en [0 : MAX_TYPE -1];
		reg [MAX_INST_PERTYPE -1: 0] axi_ram_en_d1 [0 : MAX_TYPE -1];
		reg [MAX_INST_PERTYPE -1: 0] axi_ram_en_d2 [0 : MAX_TYPE -1];
		reg [MAX_INST_PERTYPE -1: 0] axi_ram_we [0 : MAX_TYPE -1];
    reg [$clog2(MAX_REG_OFFSET) -1: 0] axi_ram_addr [0 : MAX_TYPE -1] [0 : MAX_INST_PERTYPE -1];
    wire [C_S_AXI_DATA_WIDTH -1: 0] dout2axi [0 : MAX_TYPE -1] [0 : MAX_INST_PERTYPE -1];
		
    localparam [$clog2(MAX_INST_PERTYPE): 0] TYPE_NUM [0 : MAX_TYPE -1] 
                = {
                    TYPE0_NUM,
                    TYPE1_NUM,
                    TYPE2_NUM,
                    TYPE3_NUM,
                    TYPE4_NUM,
                    TYPE5_NUM,
                    TYPE6_NUM,
                    TYPE7_NUM,
                    TYPE8_NUM,
                    TYPE9_NUM,
                    TYPE10_NUM,
                    TYPE11_NUM,
                    TYPE12_NUM,
                    TYPE13_NUM,
                    TYPE14_NUM,
                    TYPE15_NUM
                };
    localparam [$clog2(MAX_REG_OFFSET) -1: 0] TYPE_REG_OFFSET [0 : MAX_TYPE -1] 
                = {
                    TYPE0_REG_OFFSET,
                    TYPE1_REG_OFFSET,
                    TYPE2_REG_OFFSET,
                    TYPE3_REG_OFFSET,
                    TYPE4_REG_OFFSET,
                    TYPE5_REG_OFFSET,
                    TYPE6_REG_OFFSET,
                    TYPE7_REG_OFFSET,
                    TYPE8_REG_OFFSET,
                    TYPE9_REG_OFFSET,
                    TYPE10_REG_OFFSET,
                    TYPE11_REG_OFFSET,
                    TYPE12_REG_OFFSET,
                    TYPE13_REG_OFFSET,
                    TYPE14_REG_OFFSET,
                    TYPE15_REG_OFFSET
                };
	assign mem_address_read = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];                                 
	assign mem_address_write = (S_AXI_AWVALID && S_AXI_WVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];                                 
	assign mem_wren = axi_wready && S_AXI_WVALID ;                                   
	// assign mem_rden = S_AXI_RREADY && axi_rvalid ;                                   
	assign mem_rden = state_read == Rdata & axi_arlen_cntr <= axi_arlen;                                   

    genvar typ,inst;
    for (typ = 0; typ < NUM_TYPE; typ = typ + 1) 
			begin : type_loop
        assign TYPE_OFFSET[typ] = typ > 0 ? (TYPE_NUM[typ] > 0 ? TYPE_SEQ[typ][TYPE_NUM[typ] -1] : 0) * TYPE_REG_OFFSET[typ] + TYPE_OFFSET[typ-1]
																			: (TYPE_NUM[typ] > 0 ? TYPE_SEQ[typ][TYPE_NUM[typ] -1] : 0) * TYPE_REG_OFFSET[typ];
        for (inst = 0; inst < TYPE_NUM[typ]; inst = inst + 1) 
					begin : inst_loop
                always @(posedge S_AXI_ACLK) begin           
        		    BASE_ADDR[typ][inst] <= typ > 0 ? (TYPE_SEQ[typ][inst] -1) * TYPE_REG_OFFSET[typ] + TYPE_OFFSET[typ -1]
																					 : (TYPE_SEQ[typ][inst] -1) * TYPE_REG_OFFSET[typ];

        		    HIGH_ADDR[typ][inst] <= typ > 0 ?  TYPE_SEQ[typ][inst] 		 * TYPE_REG_OFFSET[typ] + TYPE_OFFSET[typ -1]
																					 :  TYPE_SEQ[typ][inst] 		 * TYPE_REG_OFFSET[typ];
                    axi_ram_en[typ][inst] <= inst == 0 ? TYPE_SEQ[typ][inst] != 0 & (mem_rden && (mem_address_read >= BASE_ADDR[typ][inst]) && (mem_address_read < HIGH_ADDR[typ][inst]))||(mem_wren && (mem_address_write >= BASE_ADDR[typ][inst]) && (mem_address_write < HIGH_ADDR[typ][inst])):
                                           TYPE_SEQ[typ][inst] != TYPE_SEQ[typ][inst-1] ? (mem_rden && (mem_address_read >= BASE_ADDR[typ][inst]) && (mem_address_read < HIGH_ADDR[typ][inst]))||(mem_wren && (mem_address_write >= BASE_ADDR[typ][inst]) && (mem_address_write < HIGH_ADDR[typ][inst])) : 0;
						
                    axi_ram_we[typ][inst] <= mem_wren && (mem_address_write >= BASE_ADDR[typ][inst]) && (mem_address_write < HIGH_ADDR[typ][inst]);
						
                    axi_ram_addr[typ][inst] <= mem_wren ? mem_address_write - BASE_ADDR[typ][inst]:
													mem_rden ? mem_address_read - BASE_ADDR[typ][inst] : 0;
                end
						dpram # (
							.RAM_DEPTH(TYPE_REG_OFFSET[typ])
						) dpram_i
						(
							.dina(S_AXI_WDATA),
							.douta(dout2axi[typ][inst]),
							.ena(axi_ram_en[typ][inst]),
							.wea(axi_ram_we[typ][inst]),
							.addra(axi_ram_addr[typ][inst]),
							.clka(S_AXI_ACLK),
							.dinb(din[typ][inst]),
							.doutb(dout[typ][inst]),
							.enb(en[typ][inst]),
							.web(we[typ][inst]),
							.addrb(addr[typ][inst]>>2),
							.clkb(clk[typ][inst])
					);

          // ila_ram ila_i(
          //   .clk(S_AXI_ACLK),
          //   .probe0(S_AXI_WDATA),
          //   .probe1(dout2axi[typ][inst]),
          //   .probe2(axi_ram_en[typ][inst]),
          //   .probe3(axi_ram_we[typ][inst]),
          //   .probe4(axi_ram_addr[typ][inst]),
          //   .probe5(S_AXI_ACLK),
          //   .probe6(din[typ][inst]),
          //   .probe7(dout[typ][inst]),
          //   .probe8(en[typ][inst]),
          //   .probe9(we[typ][inst]),
          //   .probe10(addr[typ][inst]>>2),
          //   .probe11(clk[typ][inst]),
          //   .probe12(BASE_ADDR[typ][inst]),
          //   .probe13(HIGH_ADDR[typ][inst]),
          //   .probe14(mem_wren),
          //   .probe15(mem_rden),
          //   .probe16(ram_addr_valid[typ][inst]),
          //   .probe17(TYPE_SEQ[typ][inst])
          // );
					end
			end

		always @(posedge S_AXI_ACLK)
			begin
				integer p,k;
    		for (p = 0; p < NUM_TYPE; p = p + 1) 
					begin : rd_type_loop
        		for (k = 0; k < TYPE_NUM[p]; k = k + 1) 
                    begin : rd_inst_loop
                        if(axi_ram_en_d1[p][k])		axi_rdata <= dout2axi[p][k];
                            axi_ram_en_d1[p][k]		 <= axi_ram_en[p][k];
                    end
					end
      end

reg [1:0] state_read_d1,state_read_d2;
always @(posedge S_AXI_ACLK) begin
    state_read_d1 <= state_read;
    state_read_d2 <= state_read_d1;
end
reg winc;
reg mem_rden_d1, mem_rden_d2;
reg [7:0] fifo_read_cntr;
always @(posedge S_AXI_ACLK) mem_rden_d1 <= mem_rden;
always @(posedge S_AXI_ACLK) mem_rden_d2 <= mem_rden_d1;
always @(posedge S_AXI_ACLK) winc <= mem_rden_d2;

always @(*) axi_rvalid = S_AXI_RREADY & !rempty;

 always @(posedge S_AXI_ACLK)                                   
	   begin                                   
	     if (S_AXI_ARESETN == 1'b0)                                   
	       begin                                   
	        //both axi_arlen_cntr and axi_araddr will increment after each successfull data sent until the number of the transfers is equal to burst length                                   
	        fifo_read_cntr <= 0;                                   
	      end                                   
	    else                                   
	      begin                                   
	        if (S_AXI_ARVALID && axi_arready)                                   
	          begin                                   
	            fifo_read_cntr <= 0;                                   
	          end                                   
	        else if(fifo_read_cntr <= axi_arlen)                                    
	          begin                                   
	            fifo_read_cntr <= fifo_read_cntr + (!rempty & S_AXI_RREADY);
            end
        end
     end

always @(posedge S_AXI_ACLK) axi_rlast <= state_read == Rdata & fifo_read_cntr == (axi_arlen - 1) & S_AXI_RREADY;

async_fifo  #(
        .DSIZE(C_S_AXI_DATA_WIDTH),
        .ASIZE($clog2(256 - 1)),
        .FALLTHROUGH("TRUE") // First word fall-through without latency
    )async_fifo_i(
        .wclk(S_AXI_ACLK),
        .wrst_n(S_AXI_ARESETN),
        .winc(winc),
        .wdata(axi_rdata),
        .wfull(wfull),
        .awfull(awfull),
        .rclk(S_AXI_ACLK),
        .rrst_n(S_AXI_ARESETN),
        .rinc(S_AXI_RREADY),
        .rdata(axi_rdata_fifo),
        .rempty(rempty),
        .arempty(arempty)
    );



// User logic ends 

  // start of bit sum calculation
	bit_sum16  # (
		.DATA_WIDTH(TYPE0_NUM)
	) bit_sum_type0 (
		.clk(S_AXI_ACLK),
		.din(TYPE0_EN),
		.bit_sum0(TYPE_SEQ[0][0]),
		.bit_sum1(TYPE_SEQ[0][1]),
		.bit_sum2(TYPE_SEQ[0][2]),
		.bit_sum3(TYPE_SEQ[0][3]),
		.bit_sum4(TYPE_SEQ[0][4]),
		.bit_sum5(TYPE_SEQ[0][5]),
		.bit_sum6(TYPE_SEQ[0][6]),
		.bit_sum7(TYPE_SEQ[0][7]),
		.bit_sum8(TYPE_SEQ[0][8]),
		.bit_sum9(TYPE_SEQ[0][9]),
		.bit_sum10(TYPE_SEQ[0][10]),
		.bit_sum11(TYPE_SEQ[0][11]),
		.bit_sum12(TYPE_SEQ[0][12]),
		.bit_sum13(TYPE_SEQ[0][13]),
		.bit_sum14(TYPE_SEQ[0][14]),
		.bit_sum15(TYPE_SEQ[0][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE1_NUM)
	) bit_sum_type1 (
		.clk(S_AXI_ACLK),
		.din(TYPE1_EN),
		.bit_sum0(TYPE_SEQ[1][0]),
		.bit_sum1(TYPE_SEQ[1][1]),
		.bit_sum2(TYPE_SEQ[1][2]),
		.bit_sum3(TYPE_SEQ[1][3]),
		.bit_sum4(TYPE_SEQ[1][4]),
		.bit_sum5(TYPE_SEQ[1][5]),
		.bit_sum6(TYPE_SEQ[1][6]),
		.bit_sum7(TYPE_SEQ[1][7]),
		.bit_sum8(TYPE_SEQ[1][8]),
		.bit_sum9(TYPE_SEQ[1][9]),
		.bit_sum10(TYPE_SEQ[1][10]),
		.bit_sum11(TYPE_SEQ[1][11]),
		.bit_sum12(TYPE_SEQ[1][12]),
		.bit_sum13(TYPE_SEQ[1][13]),
		.bit_sum14(TYPE_SEQ[1][14]),
		.bit_sum15(TYPE_SEQ[1][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE2_NUM)
	) bit_sum_type2 (
		.clk(S_AXI_ACLK),
		.din(TYPE2_EN),
		.bit_sum0(TYPE_SEQ[2][0]),
		.bit_sum1(TYPE_SEQ[2][1]),
		.bit_sum2(TYPE_SEQ[2][2]),
		.bit_sum3(TYPE_SEQ[2][3]),
		.bit_sum4(TYPE_SEQ[2][4]),
		.bit_sum5(TYPE_SEQ[2][5]),
		.bit_sum6(TYPE_SEQ[2][6]),
		.bit_sum7(TYPE_SEQ[2][7]),
		.bit_sum8(TYPE_SEQ[2][8]),
		.bit_sum9(TYPE_SEQ[2][9]),
		.bit_sum10(TYPE_SEQ[2][10]),
		.bit_sum11(TYPE_SEQ[2][11]),
		.bit_sum12(TYPE_SEQ[2][12]),
		.bit_sum13(TYPE_SEQ[2][13]),
		.bit_sum14(TYPE_SEQ[2][14]),
		.bit_sum15(TYPE_SEQ[2][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE3_NUM)
	) bit_sum_type3 (
		.clk(S_AXI_ACLK),
		.din(TYPE3_EN),
		.bit_sum0(TYPE_SEQ[3][0]),
		.bit_sum1(TYPE_SEQ[3][1]),
		.bit_sum2(TYPE_SEQ[3][2]),
		.bit_sum3(TYPE_SEQ[3][3]),
		.bit_sum4(TYPE_SEQ[3][4]),
		.bit_sum5(TYPE_SEQ[3][5]),
		.bit_sum6(TYPE_SEQ[3][6]),
		.bit_sum7(TYPE_SEQ[3][7]),
		.bit_sum8(TYPE_SEQ[3][8]),
		.bit_sum9(TYPE_SEQ[3][9]),
		.bit_sum10(TYPE_SEQ[3][10]),
		.bit_sum11(TYPE_SEQ[3][11]),
		.bit_sum12(TYPE_SEQ[3][12]),
		.bit_sum13(TYPE_SEQ[3][13]),
		.bit_sum14(TYPE_SEQ[3][14]),
		.bit_sum15(TYPE_SEQ[3][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE4_NUM)
	) bit_sum_type4 (
		.clk(S_AXI_ACLK),
		.din(TYPE4_EN),
		.bit_sum0(TYPE_SEQ[4][0]),
		.bit_sum1(TYPE_SEQ[4][1]),
		.bit_sum2(TYPE_SEQ[4][2]),
		.bit_sum3(TYPE_SEQ[4][3]),
		.bit_sum4(TYPE_SEQ[4][4]),
		.bit_sum5(TYPE_SEQ[4][5]),
		.bit_sum6(TYPE_SEQ[4][6]),
		.bit_sum7(TYPE_SEQ[4][7]),
		.bit_sum8(TYPE_SEQ[4][8]),
		.bit_sum9(TYPE_SEQ[4][9]),
		.bit_sum10(TYPE_SEQ[4][10]),
		.bit_sum11(TYPE_SEQ[4][11]),
		.bit_sum12(TYPE_SEQ[4][12]),
		.bit_sum13(TYPE_SEQ[4][13]),
		.bit_sum14(TYPE_SEQ[4][14]),
		.bit_sum15(TYPE_SEQ[4][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE5_NUM)
	) bit_sum_type5 (
		.clk(S_AXI_ACLK),
		.din(TYPE5_EN),
		.bit_sum0(TYPE_SEQ[5][0]),
		.bit_sum1(TYPE_SEQ[5][1]),
		.bit_sum2(TYPE_SEQ[5][2]),
		.bit_sum3(TYPE_SEQ[5][3]),
		.bit_sum4(TYPE_SEQ[5][4]),
		.bit_sum5(TYPE_SEQ[5][5]),
		.bit_sum6(TYPE_SEQ[5][6]),
		.bit_sum7(TYPE_SEQ[5][7]),
		.bit_sum8(TYPE_SEQ[5][8]),
		.bit_sum9(TYPE_SEQ[5][9]),
		.bit_sum10(TYPE_SEQ[5][10]),
		.bit_sum11(TYPE_SEQ[5][11]),
		.bit_sum12(TYPE_SEQ[5][12]),
		.bit_sum13(TYPE_SEQ[5][13]),
		.bit_sum14(TYPE_SEQ[5][14]),
		.bit_sum15(TYPE_SEQ[5][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE6_NUM)
	) bit_sum_type6 (
		.clk(S_AXI_ACLK),
		.din(TYPE6_EN),
		.bit_sum0(TYPE_SEQ[6][0]),
		.bit_sum1(TYPE_SEQ[6][1]),
		.bit_sum2(TYPE_SEQ[6][2]),
		.bit_sum3(TYPE_SEQ[6][3]),
		.bit_sum4(TYPE_SEQ[6][4]),
		.bit_sum5(TYPE_SEQ[6][5]),
		.bit_sum6(TYPE_SEQ[6][6]),
		.bit_sum7(TYPE_SEQ[6][7]),
		.bit_sum8(TYPE_SEQ[6][8]),
		.bit_sum9(TYPE_SEQ[6][9]),
		.bit_sum10(TYPE_SEQ[6][10]),
		.bit_sum11(TYPE_SEQ[6][11]),
		.bit_sum12(TYPE_SEQ[6][12]),
		.bit_sum13(TYPE_SEQ[6][13]),
		.bit_sum14(TYPE_SEQ[6][14]),
		.bit_sum15(TYPE_SEQ[6][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE7_NUM)
	) bit_sum_type7 (
		.clk(S_AXI_ACLK),
		.din(TYPE7_EN),
		.bit_sum0(TYPE_SEQ[7][0]),
		.bit_sum1(TYPE_SEQ[7][1]),
		.bit_sum2(TYPE_SEQ[7][2]),
		.bit_sum3(TYPE_SEQ[7][3]),
		.bit_sum4(TYPE_SEQ[7][4]),
		.bit_sum5(TYPE_SEQ[7][5]),
		.bit_sum6(TYPE_SEQ[7][6]),
		.bit_sum7(TYPE_SEQ[7][7]),
		.bit_sum8(TYPE_SEQ[7][8]),
		.bit_sum9(TYPE_SEQ[7][9]),
		.bit_sum10(TYPE_SEQ[7][10]),
		.bit_sum11(TYPE_SEQ[7][11]),
		.bit_sum12(TYPE_SEQ[7][12]),
		.bit_sum13(TYPE_SEQ[7][13]),
		.bit_sum14(TYPE_SEQ[7][14]),
		.bit_sum15(TYPE_SEQ[7][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE8_NUM)
	) bit_sum_type8 (
		.clk(S_AXI_ACLK),
		.din(TYPE8_EN),
		.bit_sum0(TYPE_SEQ[8][0]),
		.bit_sum1(TYPE_SEQ[8][1]),
		.bit_sum2(TYPE_SEQ[8][2]),
		.bit_sum3(TYPE_SEQ[8][3]),
		.bit_sum4(TYPE_SEQ[8][4]),
		.bit_sum5(TYPE_SEQ[8][5]),
		.bit_sum6(TYPE_SEQ[8][6]),
		.bit_sum7(TYPE_SEQ[8][7]),
		.bit_sum8(TYPE_SEQ[8][8]),
		.bit_sum9(TYPE_SEQ[8][9]),
		.bit_sum10(TYPE_SEQ[8][10]),
		.bit_sum11(TYPE_SEQ[8][11]),
		.bit_sum12(TYPE_SEQ[8][12]),
		.bit_sum13(TYPE_SEQ[8][13]),
		.bit_sum14(TYPE_SEQ[8][14]),
		.bit_sum15(TYPE_SEQ[8][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE9_NUM)
	) bit_sum_type9 (
		.clk(S_AXI_ACLK),
		.din(TYPE9_EN),
		.bit_sum0(TYPE_SEQ[9][0]),
		.bit_sum1(TYPE_SEQ[9][1]),
		.bit_sum2(TYPE_SEQ[9][2]),
		.bit_sum3(TYPE_SEQ[9][3]),
		.bit_sum4(TYPE_SEQ[9][4]),
		.bit_sum5(TYPE_SEQ[9][5]),
		.bit_sum6(TYPE_SEQ[9][6]),
		.bit_sum7(TYPE_SEQ[9][7]),
		.bit_sum8(TYPE_SEQ[9][8]),
		.bit_sum9(TYPE_SEQ[9][9]),
		.bit_sum10(TYPE_SEQ[9][10]),
		.bit_sum11(TYPE_SEQ[9][11]),
		.bit_sum12(TYPE_SEQ[9][12]),
		.bit_sum13(TYPE_SEQ[9][13]),
		.bit_sum14(TYPE_SEQ[9][14]),
		.bit_sum15(TYPE_SEQ[9][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE10_NUM)
	) bit_sum_type10 (
		.clk(S_AXI_ACLK),
		.din(TYPE10_EN),
		.bit_sum0(TYPE_SEQ[10][0]),
		.bit_sum1(TYPE_SEQ[10][1]),
		.bit_sum2(TYPE_SEQ[10][2]),
		.bit_sum3(TYPE_SEQ[10][3]),
		.bit_sum4(TYPE_SEQ[10][4]),
		.bit_sum5(TYPE_SEQ[10][5]),
		.bit_sum6(TYPE_SEQ[10][6]),
		.bit_sum7(TYPE_SEQ[10][7]),
		.bit_sum8(TYPE_SEQ[10][8]),
		.bit_sum9(TYPE_SEQ[10][9]),
		.bit_sum10(TYPE_SEQ[10][10]),
		.bit_sum11(TYPE_SEQ[10][11]),
		.bit_sum12(TYPE_SEQ[10][12]),
		.bit_sum13(TYPE_SEQ[10][13]),
		.bit_sum14(TYPE_SEQ[10][14]),
		.bit_sum15(TYPE_SEQ[10][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE11_NUM)
	) bit_sum_type11 (
		.clk(S_AXI_ACLK),
		.din(TYPE11_EN),
		.bit_sum0(TYPE_SEQ[11][0]),
		.bit_sum1(TYPE_SEQ[11][1]),
		.bit_sum2(TYPE_SEQ[11][2]),
		.bit_sum3(TYPE_SEQ[11][3]),
		.bit_sum4(TYPE_SEQ[11][4]),
		.bit_sum5(TYPE_SEQ[11][5]),
		.bit_sum6(TYPE_SEQ[11][6]),
		.bit_sum7(TYPE_SEQ[11][7]),
		.bit_sum8(TYPE_SEQ[11][8]),
		.bit_sum9(TYPE_SEQ[11][9]),
		.bit_sum10(TYPE_SEQ[11][10]),
		.bit_sum11(TYPE_SEQ[11][11]),
		.bit_sum12(TYPE_SEQ[11][12]),
		.bit_sum13(TYPE_SEQ[11][13]),
		.bit_sum14(TYPE_SEQ[11][14]),
		.bit_sum15(TYPE_SEQ[11][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE12_NUM)
	) bit_sum_type12 (
		.clk(S_AXI_ACLK),
		.din(TYPE12_EN),
		.bit_sum0(TYPE_SEQ[12][0]),
		.bit_sum1(TYPE_SEQ[12][1]),
		.bit_sum2(TYPE_SEQ[12][2]),
		.bit_sum3(TYPE_SEQ[12][3]),
		.bit_sum4(TYPE_SEQ[12][4]),
		.bit_sum5(TYPE_SEQ[12][5]),
		.bit_sum6(TYPE_SEQ[12][6]),
		.bit_sum7(TYPE_SEQ[12][7]),
		.bit_sum8(TYPE_SEQ[12][8]),
		.bit_sum9(TYPE_SEQ[12][9]),
		.bit_sum10(TYPE_SEQ[12][10]),
		.bit_sum11(TYPE_SEQ[12][11]),
		.bit_sum12(TYPE_SEQ[12][12]),
		.bit_sum13(TYPE_SEQ[12][13]),
		.bit_sum14(TYPE_SEQ[12][14]),
		.bit_sum15(TYPE_SEQ[12][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE13_NUM)
	) bit_sum_type13 (
		.clk(S_AXI_ACLK),
		.din(TYPE13_EN),
		.bit_sum0(TYPE_SEQ[13][0]),
		.bit_sum1(TYPE_SEQ[13][1]),
		.bit_sum2(TYPE_SEQ[13][2]),
		.bit_sum3(TYPE_SEQ[13][3]),
		.bit_sum4(TYPE_SEQ[13][4]),
		.bit_sum5(TYPE_SEQ[13][5]),
		.bit_sum6(TYPE_SEQ[13][6]),
		.bit_sum7(TYPE_SEQ[13][7]),
		.bit_sum8(TYPE_SEQ[13][8]),
		.bit_sum9(TYPE_SEQ[13][9]),
		.bit_sum10(TYPE_SEQ[13][10]),
		.bit_sum11(TYPE_SEQ[13][11]),
		.bit_sum12(TYPE_SEQ[13][12]),
		.bit_sum13(TYPE_SEQ[13][13]),
		.bit_sum14(TYPE_SEQ[13][14]),
		.bit_sum15(TYPE_SEQ[13][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE14_NUM)
	) bit_sum_type14 (
		.clk(S_AXI_ACLK),
		.din(TYPE14_EN),
		.bit_sum0(TYPE_SEQ[14][0]),
		.bit_sum1(TYPE_SEQ[14][1]),
		.bit_sum2(TYPE_SEQ[14][2]),
		.bit_sum3(TYPE_SEQ[14][3]),
		.bit_sum4(TYPE_SEQ[14][4]),
		.bit_sum5(TYPE_SEQ[14][5]),
		.bit_sum6(TYPE_SEQ[14][6]),
		.bit_sum7(TYPE_SEQ[14][7]),
		.bit_sum8(TYPE_SEQ[14][8]),
		.bit_sum9(TYPE_SEQ[14][9]),
		.bit_sum10(TYPE_SEQ[14][10]),
		.bit_sum11(TYPE_SEQ[14][11]),
		.bit_sum12(TYPE_SEQ[14][12]),
		.bit_sum13(TYPE_SEQ[14][13]),
		.bit_sum14(TYPE_SEQ[14][14]),
		.bit_sum15(TYPE_SEQ[14][15])
	);

	bit_sum16  # (
		.DATA_WIDTH(TYPE15_NUM)
	) bit_sum_type15 (
		.clk(S_AXI_ACLK),
		.din(TYPE15_EN),
		.bit_sum0(TYPE_SEQ[15][0]),
		.bit_sum1(TYPE_SEQ[15][1]),
		.bit_sum2(TYPE_SEQ[15][2]),
		.bit_sum3(TYPE_SEQ[15][3]),
		.bit_sum4(TYPE_SEQ[15][4]),
		.bit_sum5(TYPE_SEQ[15][5]),
		.bit_sum6(TYPE_SEQ[15][6]),
		.bit_sum7(TYPE_SEQ[15][7]),
		.bit_sum8(TYPE_SEQ[15][8]),
		.bit_sum9(TYPE_SEQ[15][9]),
		.bit_sum10(TYPE_SEQ[15][10]),
		.bit_sum11(TYPE_SEQ[15][11]),
		.bit_sum12(TYPE_SEQ[15][12]),
		.bit_sum13(TYPE_SEQ[15][13]),
		.bit_sum14(TYPE_SEQ[15][14]),
		.bit_sum15(TYPE_SEQ[15][15])
	);
// end of bit sum calculation


	endmodule

