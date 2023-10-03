`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 21:14:29
// Design Name: 
// Module Name: basic_gates_dflow
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


module basic_gates_dflow(input wire A, input wire B,
    output reg AND, output reg OR, output reg NAND, output reg NOR, 
    output reg XOR, output reg XNOR
    );


initial
    begin
        assign AND = A & B;
        assign OR = A | B;
        assign NAND = ~(A & B);
        assign NOR = ~(A | B);
        assign XOR = A ^ B;
        assign XNOR = A ~^ B;
    end
endmodule