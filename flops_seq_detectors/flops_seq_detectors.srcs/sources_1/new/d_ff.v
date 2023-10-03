`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 21:57:50
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input d, input clk, output q, output q_bar
    );
   
   wire d, clk, q_bar;
   reg q;
   
   always @ (posedge clk)
   begin
       q <= d;
   end
   
   assign q_bar = ~q; 
endmodule
