`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 13:32:55
// Design Name: 
// Module Name: Counter_latch
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


module Counter_latch(
    input A,
    input CLK,
    input [1:0] EN,
    input Finished, 
    input CLR_M,
    output  O_0,
    output  O_1,
    output  O_2
    );
    
assign CLR = CLR_M;
    

LUT3 #(
.INIT(64'h20) 
) CE_0_decode (
   .O(CE_0), 
   .I0(EN[0]), 
   .I1(EN[1]) ,
   .I2(Finished)
);

LUT3 #(
.INIT(64'h40) 
) CE_1_decode (
   .O(CE_1), 
   .I0(EN[0]), 
   .I1(EN[1]) ,
   .I2(Finished)
);

LUT3 #(
.INIT(64'h80) 
) CE_2_decode (
   .O(CE_2), 
   .I0(EN[0]), 
   .I1(EN[1]) ,
   .I2(Finished) 
);

//////////////////////////////////////////////////////////////////////////////////////////////
    
    
(* BEL = "AFF" *)(* LOC = "SLICE_X26Y7" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) FF_0 (
  .Q(O_0),      
  .C(CLK),      
  .CE(CE_0),    
  .CLR(CLR),  
  .D(A)       
);



///////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "AFF" *)(* LOC = "SLICE_X26Y6" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) FF_0_1 (
  .Q(O_1),      
  .C(CLK),      
  .CE(CE_1),    
  .CLR(CLR),  
  .D(A)       
);


///////////////////////////////////////////////////////////////////////////////////////////////

(* BEL = "AFF" *)(* LOC = "SLICE_X26Y5" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) FF_0_2 (
  .Q(O_2),      
  .C(CLK),      
  .CE(CE_2),    
  .CLR(CLR),  
  .D(A)       
);




endmodule
