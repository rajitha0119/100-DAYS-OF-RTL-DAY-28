`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2023 21:53:14
// Design Name: 
// Module Name: sync_up
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
////////////////////

module sync_up(
    input clk,
    input rst,output [3:0]counter);
    reg [3:0]counter_up;
 always@(clk or rst)
 begin
 if(rst)
 counter_up<=4'd0;
 else
 counter_up<=counter_up+4'd1;
 end
 assign counter=counter_up;
endmodule
