// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module testbench;
	bit clk;
	always #5 clk = ~clk;
	intf intf_f(clk);
	test t1(intf_f);
    dflipflop dut(intf_f);
endmodule
