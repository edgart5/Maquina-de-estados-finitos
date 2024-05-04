`timescale 1ns / 1ps

module top_fsm_E2(
    
    input logic CLK100MHZ,
    input logic [2:0]sw,
    //input logic reset,
    output logic [4:0]LED
    );
    
logic internal_psc_clock;
//logic my_out;
logic int_reset = 1'b0;

clck_psc my_clck (.my_clk(CLK100MHZ), .my_out(internal_psc_clock));

fsm_E2 E2 (.clk(internal_psc_clock), .reset(sw[2]), .TA(sw[0]),
                 .TB(sw[1]), .LA(LED[1:0]), .LB(LED[3:2])); 

//assign LED[4] = my_out;  
endmodule
