`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSIT
// Engineer: James Moore
// 
// Create Date: 21.06.2024 11:20:10
// Design Name: 
// Module Name: PUF_Controller
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


module PUF_Controller(
    input EN_master,
    input CLK,
    input Response,
    input finished,
    output [1:0] EN,
    output CLR,
    output CE,
    output Finished_master,
    output Response_master
    );
    

    


(* BEL = "AFF" *)(* LOC = "SLICE_X16Y25" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Master_EN_latch (
  .Q(EN_latch),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(EN_master)       // 1-bit Data input
); 
    
(* BEL = "A6LUT" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h00F2) 
) Set_CLR_flag_1 (
   .O(CLR_Flag_1), 
   .I0(EN_master),
   .I1(EN_latch),
   .I2(finished),
   .I3(CE)
);

(* BEL = "AFF" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) CLR_Flag_latch_1 (
  .Q(CLR),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(CLR_Flag_1)       // 1-bit Data input
);




(* BEL = "B6LUT" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h000C) 
) Set_CE_flag (
   .O(CE_flag), 
   .I0(EN_master) ,
   .I1(EN_latch),
   .I2(finished),
   .I3(CLR)
);

(* BEL = "BFF" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) CE_Flag_latch (
  .Q(CE_flag_1),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(CE_flag)       // 1-bit Data input
);


(* BEL = "DFF" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) CE_Flag_latch_1 (
  .Q(CE),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(CE_flag_1)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h00C0) 
) Set_EN_flag (
   .O(EN_Flag), 
   .I0(EN_master),
   .I1(EN_latch),
   .I2(CE),
   .I3(Finished_master)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X16Y24" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) EN_Flag_latch_1 (
  .Q(Ready_flag),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(EN_Flag)       // 1-bit Data input
);   
    
    
    
(* BEL = "A6LUT" *)(* LOC = "SLICE_X15Y24" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h2200) 
) Enable_0 (
   .O(EN[0]), 
   .I0(EN_master),
   .I1(Q_0),
   .I2(Q_1),
   .I3(Ready_flag)
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X15Y24" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h2800) 
) Enable_1 (
   .O(EN[1]), 
   .I0(EN_master),
   .I1(Q_0),
   .I2(Q_1),
   .I3(Ready_flag)
);


(* BEL = "C6LUT" *)(* LOC = "SLICE_X17Y24" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h0008) 
) Set_Master_CLR (
   .O(Master_CLR_Flag_1), 
   .I0(Q_0) ,
   .I1(Q_1),
   .I2(CE),
   .I3(EN_master)
);

(* BEL = "D6LUT" *)(* LOC = "SLICE_X17Y24" *)(*DONT_TOUCH= "true"*) 
LUT2 #(
.INIT(64'hE) 
) Set_Master_CLR_OR (
   .O(Master_CLR_Flag), 
   .I0(Master_CLR_Flag_1) ,
   .I1(Master_CLR_Flag_2)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X17Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Master_CLR_latch (
  .Q(CLR_master),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(Master_CLR_Flag)       // 1-bit Data input
);   

(* BEL = "AFF" *)(* LOC = "SLICE_X17Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) finished_latch (
  .Q(finished_1),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(finished)       // 1-bit Data input
);  

(* BEL = "DFF" *)(* LOC = "SLICE_X15Y24" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Finished_delay_latch_0 (
  .Q(Finished_delayed_1CLK),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(finished_1)       // 1-bit Data input
);

(* BEL = "CFF" *)(* LOC = "SLICE_X15Y24" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Finished_delay_latch_1 (
  .Q(Finished_delayed_2CLK),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(Finished_delayed_1CLK)       // 1-bit Data input
);
    
 

 /////////////////////////////////////////////////////////////////////////  counter for tracking EN state
 
 
 
 (* BEL = "CFF" *)(* LOC = "SLICE_X14Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_0 (
  .Q(Q_0),      // 1-bit Data output
  .C(Finished_delayed_2CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(CLR_master),  // 1-bit Asynchronous clear input
  .D(Q_0_1)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X14Y24" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_0_inver (
   .O(Q_0_1), // 1-bit LUT6 output
   .I0(Q_0)
);

 (* BEL = "CFF" *)(* LOC = "SLICE_X14Y23" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) DFF_1 (
  .Q(Q_1),      // 1-bit Data output
  .C(Q_0_1),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(CLR_master),  // 1-bit Asynchronous clear input
  .D(Q_1_1)       // 1-bit Data input
);

  (* BEL = "C6LUT" *)(* LOC = "SLICE_X14Y23" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_1_inver (
   .O(Q_1_1), // 1-bit LUT6 output
   .I0(Q_1)
);

///////////////////////// Error Correction //////////////////////////////////////////////////////////


(* BEL = "A6LUT" *)(* LOC = "SLICE_X14Y20" *)(*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'h80) 
) Cycle_finish (
   .O(Cycle_finish_flag), 
   .I0(EN[0]) ,
   .I1(EN[1]),
   .I2(finished)
);

 
 (* BEL = "CFF" *)(* LOC = "SLICE_X14Y20" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) FF_cycle_counter_0 (
  .Q(Cycle_counter_bit_0),      // 1-bit Data output
  .C(Cycle_finish_flag),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(CLR_Counter),  // 1-bit Asynchronous clear input
  .D(Cycle_counter_bit_0_1)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X14Y20" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_cycle_counter_0_inver (
   .O(Cycle_counter_bit_0_1), // 1-bit LUT6 output
   .I0(Cycle_counter_bit_0)
);

(* BEL = "CFF" *)(* LOC = "SLICE_X14Y19" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) FF_cycle_counter_1 (
  .Q(Cycle_counter_bit_1),      // 1-bit Data output
  .C(Cycle_counter_bit_0_1),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(CLR_Counter),  // 1-bit Asynchronous clear input
  .D(Cycle_counter_bit_1_1)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X14Y19" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) // Specify LUT Contents
) FF_cycle_counter_1_inver (
   .O(Cycle_counter_bit_1_1), // 1-bit LUT6 output
   .I0(Cycle_counter_bit_1)
);


(* BEL = "AFF" *)(* LOC = "SLICE_X15Y16" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Response_register_bit_0 (
  .Q(response_0),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(CE_reponse_reg_0),    // 1-bit Clock enable input
  .CLR(CLR_reg),  // 1-bit Asynchronous clear input
  .D(Response)       // 1-bit Data input
);

(* BEL = "BFF" *)(* LOC = "SLICE_X15Y18" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Response_register_bit_1 (
  .Q(response_1),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(CE_reponse_reg_1),    // 1-bit Clock enable input
  .CLR(CLR_reg),  // 1-bit Asynchronous clear input
  .D(Response)       // 1-bit Data input
);

(* BEL = "CFF" *)(* LOC = "SLICE_X15Y17" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Response_register_bit_2 (
  .Q(response_2),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(CE_reponse_reg_2),    // 1-bit Clock enable input
  .CLR(CLR_reg),  // 1-bit Asynchronous clear input
  .D(Response)       // 1-bit Data input
);

(* BEL = "A6LUT" *)(* LOC = "SLICE_X15Y20" *)(*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'h20) 
) CE_reponse_reg1 (
   .O(CE_reponse_reg_0), 
   .I0(Cycle_counter_bit_0) ,
   .I1(Cycle_counter_bit_1),
   .I2(finished)
);

(* BEL = "B6LUT" *)(* LOC = "SLICE_X15Y20" *)(*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'h40) 
) CE_reponse_reg2 (
   .O(CE_reponse_reg_1), 
   .I0(Cycle_counter_bit_0) ,
   .I1(Cycle_counter_bit_1),
   .I2(finished)
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X15Y20" *)(*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'h80) 
) CE_reponse_reg3 (
   .O(CE_reponse_reg_2), 
   .I0(Cycle_counter_bit_0) ,
   .I1(Cycle_counter_bit_1),
   .I2(finished)
);

(* BEL = "D6LUT" *)(* LOC = "SLICE_X15Y20" *)(*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'hE8) 
) Average_response (
   .O(Response_master), 
   .I0(response_0) ,
   .I1(response_1),
   .I2(response_2)
);

(* BEL = "DFF" *)(* LOC = "SLICE_X15Y21" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Master_finish_Flag_latch (
  .Q(Finished_master),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(Master_finish_flag_AND)       // 1-bit Data input
);

(* BEL = "A6LUT" *)(* LOC = "SLICE_X15Y19" *)(*DONT_TOUCH= "true"*) 
LUT4 #(
.INIT(64'h0028) 
) CLR_master_second (
   .O(Master_CLR_Flag_2), 
   .I0(Pass_Complete_1),
   .I1(Cycle_counter_bit_0),
   .I2(Cycle_counter_bit_1),
   .I3(CLR)
);



(* BEL = "B6LUT" *)(* LOC = "SLICE_X15Y19" *)(*DONT_TOUCH= "true"*) 
LUT3 #(
.INIT(64'h08) 
) Finished_cycle_flag (
   .O(Pass_Complete), 
   .I0(Q_0),
   .I1(Q_1),
   .I2(CLR)
);

(* BEL = "BFF" *)(* LOC = "SLICE_X15Y19" *)(*DONT_TOUCH= "true"*) 
FDCE #(
.INIT(1'b0)
) Master_Cycle_finish_Flag_latch (
  .Q(Pass_Complete_1),      // 1-bit Data output
  .C(CLK),      // 1-bit Clock input
  .CE(1'b1),    // 1-bit Clock enable input
  .CLR(1'b0),  // 1-bit Asynchronous clear input
  .D(Pass_Complete)       // 1-bit Data input
);

(* BEL = "C6LUT" *)(* LOC = "SLICE_X15Y19" *)(*DONT_TOUCH= "true"*) 
LUT2 #(
.INIT(64'h8) 
) AND_finish_master (
   .O(Master_finish_flag_AND), 
   .I0(Cycle_counter_bit_0),
   .I1(Cycle_counter_bit_1)
);



(* BEL = "D6LUT" *)(* LOC = "SLICE_X15Y19" *)(*DONT_TOUCH= "true"*) 
LUT1 #(
.INIT(64'h1) 
) CLR_if_EN_lost (
   .O(CLR_Counter), 
   .I0(EN_master)
);











    
    
endmodule


