`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 10:54:11
// Design Name: 
// Module Name: Enable
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


module Enable(
    input [1:0] Enable,
    output [1:0] EN_PUF,
    output EN_CLK
    );
    
assign EN_PUF[0] = EN_0;
assign EN_PUF[1] = EN_1;
    
(* BEL = "A6LUT" *)(* LOC = "SLICE_X28Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT2 #(
.INIT(64'hA) 
) Enable_0 (
   .O(EN_0), 
   .I0(Enable[0]), 
   .I1(Enable[1]) 
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X28Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT2 #(
.INIT(64'hC) 
) Enable_1 (
   .O(EN_1), 
   .I0(Enable[0]), 
   .I1(Enable[1]) 
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X28Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT2 #(
.INIT(64'hE) 
) Enable_CLK (
   .O(EN_CLK), 
   .I0(Enable[0]), 
   .I1(Enable[1]) 
);



endmodule
