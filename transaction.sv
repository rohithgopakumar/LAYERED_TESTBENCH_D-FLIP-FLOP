class transaction;
  
  
  randc bit d,rst;
  bit q;
  
  
  covergroup cg;//syntax : covergroup covergrp_name
    cover_d :coverpoint d{bins b1[2]={[0:1]};}					  //coverpoint_name : coverpoint
    cover_rst:coverpoint d{bins b2[2]={[0:1]};}
    
    cover_cross : cross cover_d,cover_rst;
  endgroup
  
  
  function new();
    cg=new();
  endfunction
         
  function void display(string name);
    
    
    $display("*******************************");
    $display("End of %s",name);
    $display("d=%0b, rst=%0b,q=%0b\n",d,rst,q);
    
  endfunction
  
endclass
