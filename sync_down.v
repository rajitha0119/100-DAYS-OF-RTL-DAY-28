`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 09:26:18
// Design Name: 
// Module Name: sync_down
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


module sync_down(
    input clk,
    input rst,
    output [3:0]counter
    );
    reg [3:0]counter_down;
    always@(clk or rst)
    begin
    if(rst)
    counter_down<=4'hf;
    else
    counter_down<=counter_down - 4'd0;
    end
    assign counter=counter_down;
endmodule
