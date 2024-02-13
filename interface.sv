interface intf(input logic clk);
	logic d,rst,q;
  
  
  clocking cb @(posedge clk);
    input q;
    output d,rst;
  endclocking
  
  
    modport TB (clocking cb);
    modport DUT (input d,rst,clk,output q);
    
    endinterface 
