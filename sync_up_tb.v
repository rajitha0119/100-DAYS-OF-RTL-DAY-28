`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2023 21:36:25
// Design Name: 
// Module Name: sync_up_tb
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


module sync_up_tb();
reg clk,rst;
wire [3:0]counter;
sync_up uut(clk,rst,counter);
initial begin
clk=0;
forever #50 clk=~clk;
end
initial begin
rst=1;
#50 rst=0;
end
endmodule
