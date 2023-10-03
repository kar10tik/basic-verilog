`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 20:48:53
// Design Name: 
// Module Name: basic_gates_behav
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


module basic_gates_behav(
    input wire A, input wire B, output reg AND, output reg OR, 
    output reg NAND, output reg NOR,
    output reg XOR, output reg XNOR
    );


//AND
always @(A or B)
begin
    if (A == 1'b1 & B == 1'b1)
       AND = 1'b1;
    else
       AND = 0;
end

//OR
always @(A or B)
begin
    if (A == 1'b1 | B == 1'b1)
       OR = 1'b1;
    else
       OR = 0;
end

//NAND
always @(A or B)
begin
    if(A == 1'b1 & B == 1'b1)
        NAND = 1'B0;
    else
        NAND = 1'B1;
end

//NOR
always @(A or B)
begin
    if(A == 1'b0 & B == 1'B0)
        NOR = 1'B1;
    else
        NOR = 1'B0;
end

//XOR
always @(A or B)
begin
    if (A != B)
        XOR = 1'B1;
    else
        XOR = 1'B0;
end

//XNOR
always @(A or B)
begin
    if (A == B)
        XNOR = 1'B1;
    else
        XNOR = 1'B0;
end

endmodule