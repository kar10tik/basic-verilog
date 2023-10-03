`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 20:43:24
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8(input A, input B, input C, input EN,
output Y);

wire A, B, C;
reg[7:0] Y;

always @(A or B or C or EN)
begin
    if (EN == 1'B1)
        begin
        case ({A,B,C})
            3'b000: Y = 8'B00000001; 
            3'b001: Y = 8'B00000010;
            3'b010: Y = 8'B00000100;
            3'b011: Y = 8'B00001000;
            3'b100: Y = 8'B00010000;
            3'b101: Y = 8'B00100000;
            3'b110: Y = 8'B01000000;
            3'b111: Y = 8'B10000000;
            default: Y = 8'B00000000;
        endcase
    end
    
    else
        Y = 8'd0;
end
endmodule
