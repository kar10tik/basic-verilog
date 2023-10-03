`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 17:12:03
// Design Name: 
// Module Name: transition_high
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


module transition_high(input wire in, input wire rst, 
input wire clk, output wire out);
reg in_1; //Intermediate variable
// Module to indicate 0->1 or 1->0 transition in o/p
// O/P high only for 1 CLK
always @(posedge clk or negedge rst)
begin
if (rst)
    begin
        in_1 <= in;
    end
else
    begin
        in_1 <= 1'b0;
    end
end

// Out is XOR of in_1 and in to ensure o/p is high only for 1 CLK
assign out = in_1 ^ in;

endmodule