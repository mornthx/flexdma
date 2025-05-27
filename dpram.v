
//  Xilinx True Dual Port RAM Byte Write, Write First Dual Clock RAM
//  This code implements a parameterizable true dual port memory (both ports can read and write).
//  The behavior of this RAM is when data is written, the new memory contents at the write
//  address are presented on the output port.
module dpram # (
  parameter DATA_WIDTH = 32,
  parameter RAM_DEPTH = 256,                  // Specify RAM depth (number of entries)
  parameter RAM_PERFORMANCE = "HIGH_PERFORMANCE", // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
  parameter INIT_FILE = ""                       // Specify name/location of RAM initialization file if using one (leave blank if not)
) (
    input wire [$clog2(RAM_DEPTH-1)-1:0] addra,       // Port A address bus, width determined from RAM_DEPTH
    input wire [$clog2(RAM_DEPTH-1)-1:0] addrb,       // Port B address bus, width determined from RAM_DEPTH
    input wire [DATA_WIDTH-1:0] dina,         // Port A RAM input data
    input wire [DATA_WIDTH-1:0] dinb,         // Port B RAM input data
    input wire clka,                                  // Port A clock
    input wire clkb,                                  // Port B clock
    input wire wea,                      // Port A write enable
    input wire web,		                // Port B write enable
    input wire ena,                                   // Port A RAM Enable, for additional power savings, disable BRAM when not in use
    input wire enb,                                   // Port B RAM Enable, for additional power savings, disable BRAM when not in use
     input wire rsta,                                  // Port A output reset (does not affect memory contents)
     input wire rstb,                                  // Port B output reset (does not affect memory contents)
    // input wire regcea,                                // Port A output register enable
    // input wire regceb,                                // Port B output register enable
    output wire [DATA_WIDTH-1:0] douta,       // Port A RAM output data
    output wire [DATA_WIDTH-1:0] doutb       // Port B RAM output data
);
  reg [DATA_WIDTH-1:0] memory [RAM_DEPTH-1:0];
  reg [DATA_WIDTH-1:0] ram_data_a = {DATA_WIDTH{1'b0}};
  reg [DATA_WIDTH-1:0] ram_data_b = {DATA_WIDTH{1'b0}};

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
    if (INIT_FILE != "") begin: use_init_file
      initial
        $readmemh(INIT_FILE, memory, 0, RAM_DEPTH-1);
    end else begin: init_bram_to_zero
      integer ram_index;
      initial
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1)
          memory[ram_index] = {DATA_WIDTH{1'b0}};
    end
  endgenerate

       always @(posedge clka)
         if (ena)
           if (wea) begin
             memory[addra] <= dina;
             ram_data_a <= dina;
           end else begin
             ram_data_a <= memory[addra];
           end

       always @(posedge clkb)
         if (enb)
           if (web) begin
             memory[addrb] <= dinb;
             ram_data_b <= dinb;
           end else begin
             ram_data_b <= memory[addrb];
           end

  //  The following code generates HIGH_PERFORMANCE (use output register) or LOW_LATENCY (no output register)
  generate
    if (RAM_PERFORMANCE == "LOW_LATENCY") begin: no_output_register

      // The following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing
       assign douta = ram_data_a;
       assign doutb = ram_data_b;

    end else begin: output_register

      // The following is a 2 clock cycle read latency with improve clock-to-out timing

      reg [DATA_WIDTH-1:0] douta_reg = {DATA_WIDTH{1'b0}};
      reg [DATA_WIDTH-1:0] doutb_reg = {DATA_WIDTH{1'b0}};

      always @(posedge clka)
        if (rsta)
          douta_reg <= {DATA_WIDTH{1'b0}};
        else 
          douta_reg <= ram_data_a;

      always @(posedge clkb)
        if (rstb)
          doutb_reg <= {DATA_WIDTH{1'b0}};
        else 
          doutb_reg <= ram_data_b;

      assign douta = douta_reg;
      assign doutb = doutb_reg;

    end
  endgenerate

  //  The following function calculates the address width based on specified RAM depth
//   function integer clogb2;
//     input integer depth;
//       for (clogb2=0; depth>0; clogb2=clogb2+1)
//         depth = depth >> 1;
//   endfunction
							
						
endmodule