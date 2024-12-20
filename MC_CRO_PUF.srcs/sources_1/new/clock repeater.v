`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 11:33:58
// Design Name: 
// Module Name: clock repeater
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


module clock_repeater(
    input clk,
    output clk_repeat
    );
    
LUT1 #(
.INIT(64'h2)
) MUX_A16 (
   .O(clk_repeat), 
   .I0(clk)
);
endmodule
