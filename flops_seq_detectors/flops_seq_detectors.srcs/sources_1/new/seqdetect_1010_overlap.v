`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2023 13:19:35
// Design Name: 
// Module Name: seqdetect_1010_overlap
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

//MOORE DESIGN
module seqdetect_1010_overlap(
    input wire clk, input wire rst, input wire seq, 
    output reg detect
    );

parameter SIZE = 3, STATE0 = 3'b000,
STATE1 = 3'b001, STATE2 = 3'b010, STATE3 = 3'b011,
STATE4 = 3'b100;
reg [SIZE-1:0] currentstate, nextstate;

always @(posedge clk)
begin
    if(!rst) currentstate <= STATE0;
    else currentstate <= nextstate;
end


always @(*)
begin
    nextstate = currentstate;
    case (currentstate)
        STATE0: if (seq == 1) nextstate = STATE1;
        STATE1: if (seq == 0) nextstate = STATE2;
        STATE2: begin
            if (seq == 1) nextstate = STATE3; 
            else nextstate = STATE0;
        end
        STATE3: begin
            if (seq == 0) nextstate = STATE4;
            else nextstate = STATE1;
        end
        STATE4: begin 
            if (seq == 1) nextstate = STATE3;
            else nextstate = STATE0;
        end
        default: nextstate = currentstate;
    endcase
    
end

always @(currentstate)
begin
    case(currentstate)
        STATE4: detect = 1'b1;
        default: detect = 1'b0;
    endcase
end
endmodule