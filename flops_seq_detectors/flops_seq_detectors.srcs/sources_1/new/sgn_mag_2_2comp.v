`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 14:56:21
// Design Name: 
// Module Name: sgn_mag_2_2comp
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


module sgn_mag_2_2comp(
    input wire[SIZE-1:0] num, 
    output wire[SIZE - 1:0] comp);
    parameter SIZE = 3;
    assign comp = num[SIZE-1]?(~num[SIZE-2:0] + 1):
                               {1'b0, num[SIZE-2:0]};
    //always@(*)
    //begin
    //    comp[SIZE-1] = num[SIZE-1];
    //    comp[SIZE-2-:0] = ~num[SIZE-2-:0] + 1;
    //end
    
endmodule
