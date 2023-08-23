`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 09:58:41
// Design Name: 
// Module Name: counter_up_down_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_up_down_tb(

    );
  reg clk,rst,up_down;
  wire [3:0]counter;
  
  sync_updown uut(clk,rst,up_down,counter);
  initial begin
  clk=0;
  forever #5 clk=~clk;
  end
  initial begin
  rst=1;
  up_down=0;
  #50 rst=0;
  #50 up_down=1;
  end
endmodule
