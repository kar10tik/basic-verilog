`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 10:56:19
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(input s, input r, input clk, 
output q, output q_bar);

wire s, r, clk;
reg q, q_bar;

initial 
begin
    q = 1'b0; q_bar = 1'b1;
end

always @(posedge clk)
begin
    q <= s | (~r)&q;
end

initial
assign q_bar = ~q;
endmodule
