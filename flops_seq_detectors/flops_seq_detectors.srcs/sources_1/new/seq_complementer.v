`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2023 13:16:00
// Design Name: 
// Module Name: seq_complementer
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
module seq_complementer(
    input wire clk, input wire rst, input seq,
    output reg detect
    );

parameter SIZE = 2, STATE0 = 2'b00,
STATE1 = 2'b01, STATE2 = 2'b10;
reg [SIZE-1:0] currentstate, nextstate;

  
always @(posedge clk)
begin
if (!rst)
    currentstate <= STATE0;
else begin
    currentstate <= nextstate;
end
end


//TRANSITION LOGIC
always @(*)
begin
nextstate = currentstate;
case (currentstate)
    STATE0: if (seq == 1) nextstate = STATE1;
    STATE1: if (seq == 1) nextstate = STATE2;
    STATE2: if (seq == 0) nextstate = STATE1;
    default: nextstate = currentstate;
endcase

end

always @(currentstate)
begin
    case(currentstate)
    STATE1: detect <= 1'b1;
    default: detect <= 1'b0;
    endcase
end
//assign detect = (currentstate == STATE1);

endmodule