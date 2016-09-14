`include "chip_die.sv"
`include "memory.sv"

module top(
	input CLK
);

/***** CPU pins: *****/
wire [7:0]mem_addr;
wire [7:0]mem_data;
wire mrd, mwr;
/********************/

Die    die(clk, mem_addr, mem_data, mrd, mwr);
Memory mem(clk, mem_addr, mem_data, mrd, mwr);

endmodule