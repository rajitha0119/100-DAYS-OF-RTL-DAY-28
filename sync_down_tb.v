`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2023 09:29:59
// Design Name: 
// Module Name: sync_down_tb
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


module sync_down_tb(

    );
    reg clk,rst;
    wire [3:0]counter;
    sync_down uut(.clk(clk),.rst(rst),.counter(counter));
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    rst=1;
    #50;
    rst=0;
    end
endmodule
