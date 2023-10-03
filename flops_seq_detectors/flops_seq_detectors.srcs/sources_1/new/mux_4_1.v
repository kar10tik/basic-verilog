`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2023 20:43:24
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(input I0, input I1, input I2, input I3,
    input sel1, input sel2, output Y
    );
    
wire I0, I1, I2, I3, sel1, sel2;
reg Y;

always @*
begin
    case ({sel1, sel2})
    2'b00: Y = I0;
    2'b01: Y = I1;
    2'B10: Y = I2;
    2'B11: Y = I3;
    default: Y = 0;
    endcase
end

endmodule