`timescale 1ns / 1ps

module fsm_E2(
                input logic clk,
                input logic reset,
                input logic TA, TB, PA, PB, E,
                output logic [1:0]LA,LB);
                
                
           typedef enum logic [2:0] {S0, S1, S2, S3} statetype;
           statetype state, nextstate;
           typedef enum logic [1:0] {GREEN, YELLOW, RED} outtype;
           outtype la, lb;
           
           always_ff @(posedge clk, posedge reset)
                if(reset) state <= S0;
                else state <= nextstate;
                
                
           always_comb
            case (state)
                S0: if((TA)) nextstate = S0;
                else if ((!TA) && (!PA)) nextstate = S0;
                else if ((PA) && (!PB)) nextstate = S1;
                S1: if ((E)) nextstate = S0;
                else if ((PA)) nextstate = S0;
                else if ((PA) && (TA)) nextstate = S1;
                S2: if((PA)) nextstate = S2;
                else if ((E)) nextstate = S0;
                else if ((TB) && (!PB)) nextstate = S1;
                else if ((TB)) nextstate = S2;
                else if ((PB)) nextstate = S3;
                else if ((!PB) && (!TB)) nextstate = S3;
                else nextstate = S3;
                default nextstate = S0;
                
            endcase
            
            
          always_comb
            case (state)
                S0 : begin la = GREEN ; lb = RED ; end
                S1 : begin la = YELLOW ; lb = RED ; end
                S2 : begin la = RED ; lb = GREEN ; end
                S3 : begin la = RED ; lb = YELLOW ; end
            endcase
            
       assign LA = la;
       assign LB = lb;
       
       //assign LED4 = my_out;
endmodule