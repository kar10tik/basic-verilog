`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 15:29:29
// Design Name: 
// Module Name: shiftreg_4_bit
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


module shiftreg_4_bit #(parameter MSB = 8) (input wire clk, input wire in,
             input rst, input r_l, output reg[3:0] out);
//Bidirectional shift register
//Shifts right when r_l is HIGH and left when r_1 is LOW
//RESET is active LOW
reg q0, q1, q2, q3;

always @(posedge clk or negedge rst)
begin
if (rst)
     begin
     case (r_l)
     1'b0: begin
           q0 <= in;
           q1 <= q0;
           q2 <= q1;
           q3 <= q2;
           out <= {q3, q2, q1, q0}; 
           end
     1'b1: begin
            q3 <= in; 
            q2 <= q3; 
            q1 <= q2; 
            q0 <= q1;
            out <= {q3, q2, q1, q0};
           end
      endcase
end
else
begin
    q0 <= 0; q1 <= 0; q2 <= 0; q3 <= 0;
    out <= 4'b0000;
end
end

endmodule
