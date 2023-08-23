`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 09:53:20
// Design Name: 
// Module Name: sync_updown
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


module sync_updown(
    input clk,
    input rst,
    input up_down,
    output [3:0] counter
    );
    reg [3:0]counter_up_down;
    always@(clk or rst)
    begin
    if(rst)
    counter_up_down<=4'h0;
    else if(~up_down)
    counter_up_down<=counter_up_down + 4'd1;
    else
    counter_up_down<=counter_up_down - 4'd1;
    end
    assign counter=counter_up_down;
    
endmodule
