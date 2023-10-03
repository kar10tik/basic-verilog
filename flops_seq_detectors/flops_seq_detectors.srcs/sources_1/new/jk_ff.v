`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 12:28:18
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(input j, input k, input clk,
output q, output q_bar);

wire j, k, clk, q_bar;
reg q;

initial
q = 0;


always @(posedge clk)
begin
    q <= (j&(~q)) | ((~k)&q);
end

assign q_bar = ~q;

endmodule
