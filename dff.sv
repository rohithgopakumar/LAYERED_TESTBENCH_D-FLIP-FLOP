module dflipflop(intf.DUT tf);
  
  always_ff @(posedge tf.clk)
    begin
    if(tf.rst)
    begin 
      tf.q <= 1'b0; 
    end
    else
    tf.q<=tf.d;
  	end
endmodule
