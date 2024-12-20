`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ECIT   CSIT
// Engineer: James Moore
// 
// Create Date: 18.04.2024 16:13:03
// Design Name: 
// Module Name: Ring Oscillator 
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



module RO_PUF_Delay_line_and_counter_design_2(
    input [15:0] Challenge,
    input EN,
    input CLR,
    input CE,
    input Fin,
    output [11:0] Counter_0,
    output [11:0] Counter_1,
    input Challenge_parity_bit,
    output finished
    );
    
    
    
    
    

    ///Delay lines 
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    



    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT3 #(
   .INIT(64'h04) // Specify LUT Contents
    ) Enable_A (
       .O(A0), // 1-bit LUT6 output
       .I0(Out_16_1), // 1-bit LUT input
       .I1(EN), // 1-bit LUT input
       .I2(Fin) // 1-bit LUT input
    );
    
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT3 #(
   .INIT(64'h04) // Specify LUT Contents
    ) Eable_B (
       .O(B0), // 1-bit LUT6 output
       .I0(Out_16), // 1-bit LUT input
       .I1(EN), // 1-bit LUT input
       .I2(Fin) // 1-bit LUT input
    );
    
    
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX (
       .I0(B0), // 1-bit LUT6 output
       .I1(A0), // 1-bit LUT input
       .O(Out_0),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[0])
    );
    
    //end of stage 0 //////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A1 (
       .O(A1), // 1-bit LUT6 output
       .I0(Out_0_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B1 (
       .O(B1), // 1-bit LUT6 output
       .I0(Out_0)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_1 (
       .I0(B1), // 1-bit LUT6 output
       .I1(A1), // 1-bit LUT input
       .O(Out_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[1])
    );
    
    //end of stage 1 /////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A2 (
       .O(A2), // 1-bit LUT6 output
       .I0(Out_1_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B2 (
       .O(B2), // 1-bit LUT6 output
       .I0(Out_1)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_2 (
       .I0(B2), // 1-bit LUT6 output
       .I1(A2), // 1-bit LUT input
       .O(Out_2),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[2])
    );
    
    // end of stage 2 ///////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A3 (
       .O(A3), // 1-bit LUT6 output
       .I0(Out_2_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B3 (
       .O(B3), // 1-bit LUT6 output
       .I0(Out_2)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_3 (
       .I0(B3), // 1-bit LUT6 output
       .I1(A3), // 1-bit LUT input
       .O(Out_3),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[3])
    );
    
    //end of stage 3 /////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A4 (
       .O(A4), // 1-bit LUT6 output
       .I0(Out_3_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B4 (
       .O(B4), // 1-bit LUT6 output
       .I0(Out_3)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_4 (
       .I0(B4), // 1-bit LUT6 output
       .I1(A4), // 1-bit LUT input
       .O(Out_4),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[4])
    );
    
    //end of stage 4 //////////////////////////////////////////////
   
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A5 (
       .O(A5), // 1-bit LUT6 output
       .I0(Out_4_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B5 (
       .O(B5), // 1-bit LUT6 output
       .I0(Out_4)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_5 (
       .I0(B5), // 1-bit LUT6 output
       .I1(A5), // 1-bit LUT input
       .O(Out_5),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[5])
    );
    
    //end of stage 5 /////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A6 (
       .O(A6), // 1-bit LUT6 output
       .I0(Out_5_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B6 (
       .O(B6), // 1-bit LUT6 output
       .I0(Out_5)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_6 (
       .I0(B6), // 1-bit LUT6 output
       .I1(A6), // 1-bit LUT input
       .O(Out_6),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[6])
    );
    
    // end of stage 6  ////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A7 (
       .O(A7), // 1-bit LUT6 output
       .I0(Out_6_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B7 (
       .O(B7), // 1-bit LUT6 output
       .I0(Out_6)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_7 (
       .I0(B7), // 1-bit LUT6 output
       .I1(A7), // 1-bit LUT input
       .O(Out_7),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[7])
    );
    
    //end of 7th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A8 (
       .O(A8), // 1-bit LUT6 output
       .I0(Out_7_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B8 (
       .O(B8), // 1-bit LUT6 output
       .I0(Out_7)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_8 (
       .I0(B8), // 1-bit LUT6 output
       .I1(A8), // 1-bit LUT input
       .O(Out_8),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[8])
    );
    
    //end of 8th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A9 (
       .O(A9), // 1-bit LUT6 output
       .I0(Out_8_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B9 (
       .O(B9), // 1-bit LUT6 output
       .I0(Out_8)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_9 (
       .I0(B9), // 1-bit LUT6 output
       .I1(A9), // 1-bit LUT input
       .O(Out_9),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[9])
    );
    
    //end of 9th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A10 (
       .O(A10), // 1-bit LUT6 output
       .I0(Out_9_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B10 (
       .O(B10), // 1-bit LUT6 output
       .I0(Out_9)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_10 (
       .I0(B10), // 1-bit LUT6 output
       .I1(A10), // 1-bit LUT input
       .O(Out_10),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[10])
    );
    
    //end of 10th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A11 (
       .O(A11), // 1-bit LUT6 output
       .I0(Out_10_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B11 (
       .O(B11), // 1-bit LUT6 output
       .I0(Out_10)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_11 (
       .I0(B11), // 1-bit LUT6 output
       .I1(A11), // 1-bit LUT input
       .O(Out_11),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[11])
    );
    
    //end of 11th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A12 (
       .O(A12), // 1-bit LUT6 output
       .I0(Out_11_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B12 (
       .O(B12), // 1-bit LUT6 output
       .I0(Out_11)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_12 (
       .I0(B12), // 1-bit LUT6 output
       .I1(A12), // 1-bit LUT input
       .O(Out_12),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[12])
    );
    
    //end of 12th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A13 (
       .O(A13), // 1-bit LUT6 output
       .I0(Out_12_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B13 (
       .O(B13), // 1-bit LUT6 output
       .I0(Out_12)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_13 (
       .I0(B13), // 1-bit LUT6 output
       .I1(A13), // 1-bit LUT input
       .O(Out_13),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[13])
    );
    
    //end of 13th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A14 (
       .O(A14), // 1-bit LUT6 output
       .I0(Out_13_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B14 (
       .O(B14), // 1-bit LUT6 output
       .I0(Out_13)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_14 (
       .I0(B14), // 1-bit LUT6 output
       .I1(A14), // 1-bit LUT input
       .O(Out_14),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[14])
    );
    
    //end of 14th stage/////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A15 (
       .O(A15), // 1-bit LUT6 output
       .I0(Out_14_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B15 (
       .O(B15), // 1-bit LUT6 output
       .I0(Out_14)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_15 (
       .I0(B15), // 1-bit LUT6 output
       .I1(A15), // 1-bit LUT input
       .O(Out_15),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge[15])
    );
    
    //end of 15th stage/////////////////////////////////////////////////////////////////////////////////////
    
    
      (* BEL = "A6LUT" *)(* LOC = "SLICE_X18Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A16 (
       .O(A16), // 1-bit LUT6 output
       .I0(Out_15_1)
    );
   
    (* BEL = "B6LUT" *)(* LOC = "SLICE_X18Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B16 (
       .O(B16), // 1-bit LUT6 output
       .I0(Out_15)
    );
    
    (* BEL = "F7AMUX" *)(* LOC = "SLICE_X18Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX_16 (
       .I0(B16), // 1-bit LUT6 output
       .I1(A16), // 1-bit LUT input
       .O(Out_16),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_parity_bit)
    );
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A16_1 (
       .O(A16_1), // 1-bit LUT6 output
       .I0(Out_15_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B16_1 (
       .O(B16_1), // 1-bit LUT6 output
       .I0(Out_15)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_16 (
       .O(Challenge_parity_bit_1), // 1-bit LUT6 output
       .I0(Challenge_parity_bit)
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_16 (
       .I0(B16_1), // 1-bit LUT6 output
       .I1(A16_1), // 1-bit LUT input
       .O(Out_16_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_parity_bit_1)
    );
    
   
    
    ///////////  counter ///////////////////////////////////////////////////////////////////////////////////////////////
     
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_0 (
      .Q(Q_0),      // 1-bit Data output
      .C(Out_15),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_0_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_0_inver (
       .O(Q_0_1), // 1-bit LUT6 output
       .I0(Q_0)
    );
    
     (* BEL = "CFF" *)(* LOC = "SLICE_X20Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_1 (
      .Q(Q_1),      // 1-bit Data output
      .C(Q_0_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_1_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_1_inver (
       .O(Q_1_1), // 1-bit LUT6 output
       .I0(Q_1)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_2 (
      .Q(Q_2),      // 1-bit Data output
      .C(Q_1_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_2_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_2_inver (
       .O(Q_2_1), // 1-bit LUT6 output
       .I0(Q_2)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_3 (
      .Q(Q_3),      // 1-bit Data output
      .C(Q_2_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_3_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_3_inver (
       .O(Q_3_1), // 1-bit LUT6 output
       .I0(Q_3)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_4 (
      .Q(Q_4),      // 1-bit Data output
      .C(Q_3_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_4_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_4_inver (
       .O(Q_4_1), // 1-bit LUT6 output
       .I0(Q_4)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_5 (
      .Q(Q_5),      // 1-bit Data output
      .C(Q_4_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_5_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_5_inver (
       .O(Q_5_1), // 1-bit LUT6 output
       .I0(Q_5)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_6 (
      .Q(Q_6),      // 1-bit Data output
      .C(Q_5_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_6_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_6_inver (
       .O(Q_6_1), // 1-bit LUT6 output
       .I0(Q_6)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_7 (
      .Q(Q_7),      // 1-bit Data output
      .C(Q_6_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_7_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_7_inver (
       .O(Q_7_1), // 1-bit LUT6 output
       .I0(Q_7)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_8 (
      .Q(Q_8),      // 1-bit Data output
      .C(Q_7_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_8_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_8_inver (
       .O(Q_8_1), // 1-bit LUT6 output
       .I0(Q_8)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_9 (
      .Q(Q_9),      // 1-bit Data output
      .C(Q_8_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_9_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_9_inver (
       .O(Q_9_1), // 1-bit LUT6 output
       .I0(Q_9)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_10 (
      .Q(Q_10),      // 1-bit Data output
      .C(Q_9_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_10_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_10_inver (
       .O(Q_10_1), // 1-bit LUT6 output
       .I0(Q_10)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X20Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_11 (
      .Q(Q_11),      // 1-bit Data output
      .C(Q_10_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q_11_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X20Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_11_inver (
       .O(Q_11_1), // 1-bit LUT6 output
       .I0(Q_11)
    );
    
   /////////////////////////////////////////////////////////////
   //
   //
   //Second delay line 
   //
   ///////////////////////////////////////////////////////////
   
    


  
       
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT3 #(
   .INIT(64'h04) // Specify LUT Contents
    ) PASS_THROUGH_A_1 (
       .O(A0_1), // 1-bit LUT6 output
       .I0(Out_16_1), // 1-bit LUT input
       .I1(EN), // 1-bit LUT input
       .I2(Fin) // 1-bit LUT input
    );
    
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT3 #(
   .INIT(64'h04) // Specify LUT Contents
    ) PASS_THROUGH_B_1 (
       .O(B0_1), // 1-bit LUT6 output
       .I0(Out_16), // 1-bit LUT input
       .I1(EN), // 1-bit LUT input
       .I2(Fin) // 1-bit LUT input
    );
    
   (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_0 (
       .O(Challenge_0_1), // 1-bit LUT6 output
       .I0(Challenge[0])
    );
    
   
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1 (
       .I0(B0_1), // 1-bit LUT6 output
       .I1(A0_1), // 1-bit LUT input
       .O(Out_0_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_0_1)
    );
    
    //end of stage 0  //////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A1_1 (
       .O(A1_1), // 1-bit LUT6 output
       .I0(Out_0_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B1_1 (
       .O(B1_1), // 1-bit LUT6 output
       .I0(Out_0)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_1 (
       .O(Challenge_1_1), // 1-bit LUT6 output
       .I0(Challenge[1])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y41" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_1 (
       .I0(B1_1), // 1-bit LUT6 output
       .I1(A1_1), // 1-bit LUT input
       .O(Out_1_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_1_1)
    );
    
    //end of stage 1
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A2_1 (
       .O(A2_1), // 1-bit LUT6 output
       .I0(Out_1_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B2_1 (
       .O(B2_1), // 1-bit LUT6 output
       .I0(Out_1)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_2 (
       .O(Challenge_2_1), // 1-bit LUT6 output
       .I0(Challenge[2])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y40" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_2 (
       .I0(B2_1), // 1-bit LUT6 output
       .I1(A2_1), // 1-bit LUT input
       .O(Out_2_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_2_1)
    );
    
    // end of stage 2
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A3_1 (
       .O(A3_1), // 1-bit LUT6 output
       .I0(Out_2_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B3_1 (
       .O(B3_1), // 1-bit LUT6 output
       .I0(Out_2)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_3 (
       .O(Challenge_3_1), // 1-bit LUT6 output
       .I0(Challenge[3])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y39" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_3 (
       .I0(B3_1), // 1-bit LUT6 output
       .I1(A3_1), // 1-bit LUT input
       .O(Out_3_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_3_1)
    );
    
    //end of stage 3
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A4_1 (
       .O(A4_1), // 1-bit LUT6 output
       .I0(Out_3_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B4_1 (
       .O(B4_1), // 1-bit LUT6 output
       .I0(Out_3)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_4 (
       .O(Challenge_4_1), // 1-bit LUT6 output
       .I0(Challenge[4])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_4 (
       .I0(B4_1), // 1-bit LUT6 output
       .I1(A4_1), // 1-bit LUT input
       .O(Out_4_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_4_1)
    );
    
    //end of stage 4
   
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A5_1 (
       .O(A5_1), // 1-bit LUT6 output
       .I0(Out_4_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B5_1 (
       .O(B5_1), // 1-bit LUT6 output
       .I0(Out_4)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_5 (
       .O(Challenge_5_1), // 1-bit LUT6 output
       .I0(Challenge[5])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_5 (
       .I0(B5_1), // 1-bit LUT6 output
       .I1(A5_1), // 1-bit LUT input
       .O(Out_5_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_5_1)
    );
    
    //end of stage 5
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A6_1 (
       .O(A6_1), // 1-bit LUT6 output
       .I0(Out_5_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B6_1 (
       .O(B6_1), // 1-bit LUT6 output
       .I0(Out_5)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_6 (
       .O(Challenge_6_1), // 1-bit LUT6 output
       .I0(Challenge[6])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_6 (
       .I0(B6_1), // 1-bit LUT6 output
       .I1(A6_1), // 1-bit LUT input
       .O(Out_6_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_6_1)
    );
    
    // end of stage 6
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A7_1 (
       .O(A7_1), // 1-bit LUT6 output
       .I0(Out_6_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B7_1 (
       .O(B7_1), // 1-bit LUT6 output
       .I0(Out_6)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_7 (
       .O(Challenge_7_1), // 1-bit LUT6 output
       .I0(Challenge[7])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_7 (
       .I0(B7_1), // 1-bit LUT6 output
       .I1(A7_1), // 1-bit LUT input
       .O(Out_7_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_7_1)
    );
    
    //end of 7th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A8_1 (
       .O(A8_1), // 1-bit LUT6 output
       .I0(Out_7_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B8_1 (
       .O(B8_1), // 1-bit LUT6 output
       .I0(Out_7)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_8 (
       .O(Challenge_8_1), // 1-bit LUT6 output
       .I0(Challenge[8])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_8 (
       .I0(B8_1), // 1-bit LUT6 output
       .I1(A8_1), // 1-bit LUT input
       .O(Out_8_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_8_1)
    );
    
    //end of 8th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A9_1 (
       .O(A9_1), // 1-bit LUT6 output
       .I0(Out_8_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B9_1 (
       .O(B9_1), // 1-bit LUT6 output
       .I0(Out_8)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_9 (
       .O(Challenge_9_1), // 1-bit LUT6 output
       .I0(Challenge[9])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_9 (
       .I0(B9_1), // 1-bit LUT6 output
       .I1(A9_1), // 1-bit LUT input
       .O(Out_9_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_9_1)
    );
    
    //end of 9th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A10_1 (
       .O(A10_1), // 1-bit LUT6 output
       .I0(Out_9_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B10_1 (
       .O(B10_1), // 1-bit LUT6 output
       .I0(Out_9)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_10 (
       .O(Challenge_10_1), // 1-bit LUT6 output
       .I0(Challenge[10])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_10 (
       .I0(B10_1), // 1-bit LUT6 output
       .I1(A10_1), // 1-bit LUT input
       .O(Out_10_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_10_1)
    );
    
    //end of 10th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A11_1 (
       .O(A11_1), // 1-bit LUT6 output
       .I0(Out_10_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B11_1 (
       .O(B11_1), // 1-bit LUT6 output
       .I0(Out_10)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_11 (
       .O(Challenge_11_1), // 1-bit LUT6 output
       .I0(Challenge[11])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_11 (
       .I0(B11_1), // 1-bit LUT6 output
       .I1(A11_1), // 1-bit LUT input
       .O(Out_11_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_11_1)
    );
    
    //end of 11th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A12_1 (
       .O(A12_1), // 1-bit LUT6 output
       .I0(Out_11_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B12_1 (
       .O(B12_1), // 1-bit LUT6 output
       .I0(Out_11)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_12 (
       .O(Challenge_12_1), // 1-bit LUT6 output
       .I0(Challenge[12])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_12 (
       .I0(B12_1), // 1-bit LUT6 output
       .I1(A12_1), // 1-bit LUT input
       .O(Out_12_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_12_1)
    );
    
    //end of 12th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A13_1 (
       .O(A13_1), // 1-bit LUT6 output
       .I0(Out_12_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B13_1 (
       .O(B13_1), // 1-bit LUT6 output
       .I0(Out_12)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_13 (
       .O(Challenge_13_1), // 1-bit LUT6 output
       .I0(Challenge[13])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_13 (
       .I0(B13_1), // 1-bit LUT6 output
       .I1(A13_1), // 1-bit LUT input
       .O(Out_13_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_13_1)
    );
    
    //end of 13th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A14_1 (
       .O(A14_1), // 1-bit LUT6 output
       .I0(Out_13_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B14_1 (
       .O(B14_1), // 1-bit LUT6 output
       .I0(Out_13)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_14 (
       .O(Challenge_14_1), // 1-bit LUT6 output
       .I0(Challenge[14])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_14 (
       .I0(B14_1), // 1-bit LUT6 output
       .I1(A14_1), // 1-bit LUT input
       .O(Out_14_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_14_1)
    );
    
    //end of 14th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X18Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_A15_1 (
       .O(A15_1), // 1-bit LUT6 output
       .I0(Out_14_1)
    );
   
    (* BEL = "D6LUT" *)(* LOC = "SLICE_X18Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h2) // Specify LUT Contents
    ) PASS_THROUGH_B15_1 (
       .O(B15_1), // 1-bit LUT6 output
       .I0(Out_14)
    );
    
    (* BEL = "A6LUT" *)(* LOC = "SLICE_X19Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) Challenge_inverter_15 (
       .O(Challenge_15_1), // 1-bit LUT6 output
       .I0(Challenge[15])
    );
    
    (* BEL = "F7BMUX" *)(* LOC = "SLICE_X18Y27" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    MUXF7 #(
    ) AMUX1_15 (
       .I0(B15_1), // 1-bit LUT6 output
       .I1(A15_1), // 1-bit LUT input
       .O(Out_15_1),  // 1-bit LUT input (fast MUX select only available to O6 output)
       .S(Challenge_15_1)
    );
    
    //end of 15th stage ////////////////////////////////////////////////////////////////////////////////////////////
    
    ///////////  counter ///////////////////////////////////////////////////////////////////////////////////////////////
     
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_0_1 (
      .Q(Q1_0),      // 1-bit Data output
      .C(Out_15_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_0_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y26" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_0_inver_1 (
       .O(Q1_0_1), // 1-bit LUT6 output
       .I0(Q1_0)
    );
    
     (* BEL = "CFF" *)(* LOC = "SLICE_X21Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_1_1 (
      .Q(Q1_1),      // 1-bit Data output
      .C(Q1_0_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_1_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y28" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_1_inver_1 (
       .O(Q1_1_1), // 1-bit LUT6 output
       .I0(Q1_1)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_2_1 (
      .Q(Q1_2),      // 1-bit Data output
      .C(Q1_1_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_2_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y29" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_2_inver_1 (
       .O(Q1_2_1), // 1-bit LUT6 output
       .I0(Q1_2)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_3_1 (
      .Q(Q1_3),      // 1-bit Data output
      .C(Q1_2_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_3_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y30" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_3_inver_1 (
       .O(Q1_3_1), // 1-bit LUT6 output
       .I0(Q1_3)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_4_1 (
      .Q(Q1_4),      // 1-bit Data output
      .C(Q1_3_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_4_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y31" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_4_inver_1 (
       .O(Q1_4_1), // 1-bit LUT6 output
       .I0(Q1_4)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_5_1 (
      .Q(Q1_5),      // 1-bit Data output
      .C(Q1_4_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_5_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y32" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_5_inver_1 (
       .O(Q1_5_1), // 1-bit LUT6 output
       .I0(Q1_5)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_6_1 (
      .Q(Q1_6),      // 1-bit Data output
      .C(Q1_5_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_6_1)       // 1-bit Data input
    );
    
      (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y33" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_6_inver_1 (
       .O(Q1_6_1), // 1-bit LUT6 output
       .I0(Q1_6)
    );
    
    (* BEL = "CFF" *)(* LOC = "SLICE_X21Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_7_1 (
      .Q(Q1_7),      // 1-bit Data output
      .C(Q1_6_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_7_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y34" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_7_inver_1 (
       .O(Q1_7_1), // 1-bit LUT6 output
       .I0(Q1_7)
    );
    
        (* BEL = "CFF" *)(* LOC = "SLICE_X21Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_8_1 (
      .Q(Q1_8),      // 1-bit Data output
      .C(Q1_7_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_8_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y35" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_8_inver_1 (
       .O(Q1_8_1), // 1-bit LUT6 output
       .I0(Q1_8)
    );
    
           (* BEL = "CFF" *)(* LOC = "SLICE_X21Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_9_1 (
      .Q(Q1_9),      // 1-bit Data output
      .C(Q1_8_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_9_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y36" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_9_inver_1 (
       .O(Q1_9_1), // 1-bit LUT6 output
       .I0(Q1_9)
    );
    
           (* BEL = "CFF" *)(* LOC = "SLICE_X21Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_10_1 (
      .Q(Q1_10),      // 1-bit Data output
      .C(Q1_9_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_10_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y37" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_10_inver_1 (
       .O(Q1_10_1), // 1-bit LUT6 output
       .I0(Q1_10)
    );
    
           (* BEL = "CFF" *)(* LOC = "SLICE_X21Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    FDCE #(
    .INIT(1'b0)
    ) DFF_11_1 (
      .Q(Q1_11),      // 1-bit Data output
      .C(Q1_10_1),      // 1-bit Clock input
      .CE(CE),    // 1-bit Clock enable input
      .CLR(CLR),  // 1-bit Asynchronous clear input
      .D(Q1_11_1)       // 1-bit Data input
    );
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X21Y38" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*) 
    LUT1 #(
   .INIT(64'h1) // Specify LUT Contents
    ) FF_11_inver_1 (
       .O(Q1_11_1), // 1-bit LUT6 output
       .I0(Q1_11)
    );
    
    assign Counter_0[0] = Q_0;
    assign Counter_0[1] = Q_1;
    assign Counter_0[2] = Q_2;
    assign Counter_0[3] = Q_3;
    assign Counter_0[4] = Q_4;
    assign Counter_0[5] = Q_5;
    assign Counter_0[6] = Q_6;
    assign Counter_0[7] = Q_7;
    assign Counter_0[8] = Q_8;
    assign Counter_0[9] = Q_9;
    assign Counter_0[10] = Q_10;
    assign Counter_0[11] = Q_11;
    
    assign Counter_1[0] = Q1_0;
    assign Counter_1[1] = Q1_1;
    assign Counter_1[2] = Q1_2;
    assign Counter_1[3] = Q1_3;
    assign Counter_1[4] = Q1_4;
    assign Counter_1[5] = Q1_5;
    assign Counter_1[6] = Q1_6;
    assign Counter_1[7] = Q1_7;
    assign Counter_1[8] = Q1_8;
    assign Counter_1[9] = Q1_9;
    assign Counter_1[10] = Q1_10;
    assign Counter_1[11] = Q1_11;
    
    (* BEL = "C6LUT" *)(* LOC = "SLICE_X19Y42" *)(*ALLOW_COMBINATORIAL_LOOPS= "true"*) (*DONT_TOUCH= "true"*)
    LUT2 #(
    .INIT(64'hE)
    ) OR_finish (
        .O(finished),
        .I0(Q_8),
        .I1(Q1_8)
    );    
endmodule