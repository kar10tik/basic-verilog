`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2023 11:29:41
// Design Name: 
// Module Name: seq_detect_1001_overlap
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


module seq_detect_1001_overlap(
input wire clk, input wire rst, input wire seq,
output reg detect);

parameter SIZE = 3, STATE0 = 3'B000, STATE1 = 3'B001,
STATE2 = 3'B010, STATE3 = 3'B011, STATE4 = 3'B100;

reg[SIZE-1:0] currentstate, nextstate;

always @(posedge clk)
begin
   if (!rst) currentstate <= STATE0;
   else currentstate <= nextstate;
end

//Next State Logic
always @(*)
begin
  case (currentstate)
  STATE0: if (seq == 1) nextstate = STATE1;
  STATE1: if (seq == 0) nextstate = STATE2;
  STATE2: begin
    if (seq == 0) nextstate = STATE3;
    else nextstate = STATE1;
  end
  STATE3: begin
    if (seq == 1) nextstate = STATE4;
    else nextstate = STATE1; 
  end
  STATE4: begin 
    if (seq == 0) nextstate = STATE0;
    else nextstate = STATE1;
  end
  default: nextstate = currentstate;
  endcase

end

//Output Logic
always @(currentstate)
begin
case (currentstate)
  STATE4: detect = 1'b1;
  default: detect = 1'b0;
endcase
end

endmodule